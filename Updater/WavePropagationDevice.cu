#include <cstdio>
#include <GkylWavePropagation.h>
#include <GkylEuler.h>

__device__ static void calcDelta(
  const double *ql, const double *qr, double *delta, const int meqn)
{
  for (int i = 0; i < meqn; i++) {
    delta[i] = qr[i] - ql[i];
  }
}

__device__ static void calcFirstOrderGud(
  const double dtdx, double *ql, double *qr, const double *amdq,
  const double *apdq, const int meqn)
{
  for (int i = 0; i< meqn; i++) {
    qr[i] -= dtdx * apdq[i];
    ql[i] -= dtdx * amdq[i];
  }
}

__device__ static double calcCfla(
  const double cfla, const double dtdx, const double *s, const int mwave)
{
  double c = cfla;
  for (int i = 0; i < mwave; i ++) {
    c = max(c, dtdx * abs(s[i]));
  }
  return c;
}

__global__ void cuda_WavePropagation(
  GkylWavePropagation_t *hyper, GkylCartField_t *qIn, GkylCartField_t *qOut)
{

  GkylRange_t *localRange = qIn->localRange;
  int ndim = localRange->ndim;

  // set up indexers for localRange and qIn (localExtRange)
  Gkyl::GenIndexer localIdxr(localRange);
  Gkyl::GenIndexer fIdxr = qIn->genIndexer();

  // get setup data from GkylWavePropagation_t structure
  GkylRectCart_t *grid = qIn->grid;
  int *updateDirs = hyper->updateDirs;
  int numUpdateDirs = hyper->numUpdateDirs;
  Gkyl::Euler *eq = hyper->equation;
  GkylCartField_t *dtByCell = hyper->dtByCell;

  const int meqn = eq->numEquations();
  const int mwave = eq->numWaves();

  // XXX use meqn and mwave
  double delta[10];
  double waves[30];
  double s[3];
  double amdq[10];
  double apdq[10];

  // declaring this dummy array shared seems to alleviate register pressure and
  // improve performance a bit
  extern __shared__ double dummy[];
  int linearIdx = threadIdx.x + blockIdx.x*blockDim.x;

  int idxC[3];
  int idxL[3];
  int idxR[3];

  double xcC[3];
  double xcL[3];
  double xcR[3];

  // get i,j,k... index idxC from linear index linearIdx using localRange
  // invIndexer
  localIdxr.invIndex(linearIdx, idxC);
  // convert i,j,k... index idxC into a linear index linearIdxC
  // note that linearIdxC != linearIdx.
  // this is because linearIdxC will have jumps because of ghost cells
  const int linearIdxC = fIdxr.index(idxC);

  grid->cellCenter(idxC, xcC);
  const double *dx = grid->dx;

  double cfl = hyper->_cfl;
  double cflm = hyper->_cflm;
  double cfla = 0; // actual CFL number used

  const double *qInC = qIn->getDataPtrAt(linearIdxC);
  double *qOutC = qOut->getDataPtrAt(linearIdxC);

  for(int i=0; i<numUpdateDirs; i++) {
    int dir = updateDirs[i] - 1;
    const double dtdx = hyper->dt / dx[dir];

    for(int d=0; d<ndim; d++) {
      idxL[d] = idxC[d];
      idxR[d] = idxC[d];
    }
    idxL[dir] = idxC[dir] - 1;
    idxR[dir] = idxC[dir];

    const int linearIdxL = fIdxr.index(idxL);
    const int linearIdxR = fIdxr.index(idxR);
    grid->cellCenter(idxL, xcL);
    grid->cellCenter(idxR, xcR);
    const double *qInL = qIn->getDataPtrAt(linearIdxL);
    const double *qInR = qIn->getDataPtrAt(linearIdxR);

    calcDelta(qInL, qInR, delta, meqn);

    eq->rp(dir, delta, qInL, qInR, waves, s);
    eq->qFluctuations(dir, qInL, qInR, waves, s, amdq, apdq);

    // left (of C) surface update. use dummy in place of qOutL (cell to left of
    // surface) so that only current cell (C) is updated.
    if(!(idxC[dir] == localRange->lower[dir])) {
      calcFirstOrderGud(dtdx, dummy, qOutC, amdq, apdq, meqn);
    }

    // right (of C) surface update. use dummy in place of qOutR (cell to left of
    // surface) so that only current cell (C) is updated.
    if(!(idxC[dir] == localRange->upper[dir])) {
      calcFirstOrderGud(dtdx, qOutC, dummy, amdq, apdq, meqn);
    }
    cfla = calcCfla(cfla, dtdx, s, mwave);
  }

  dtByCell->getDataPtrAt(linearIdxC)[0] = hyper->dt * cfl/cfla;
}

void wavePropagationAdvanceOnDevice(
  int numBlocks, int numThreads, GkylWavePropagation_t *hyper,
  GkylCartField_t *qIn, GkylCartField_t *qOut)
{
  cudaFuncSetAttribute(
    cuda_WavePropagation, cudaFuncAttributeMaxDynamicSharedMemorySize,
    32*sizeof(double));
  cuda_WavePropagation<<<numBlocks, numThreads, 32*sizeof(double)>>>(
    hyper, qIn, qOut);
}

__global__ void setDtOnDevice(GkylWavePropagation_t *hyper, double dt) {
  hyper->dt = dt;
}

void setDt(GkylWavePropagation_t *hyper, double dt) {
  setDtOnDevice<<<1, 1>>>(hyper, dt);
}
