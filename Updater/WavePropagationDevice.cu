#include <cstdio>
#include <GkylWavePropagation.h>
#include <GkylEuler.h>

__device__ static void calcDelta(
  const double *ql, const double *qr, double *delta, const unsigned meqn)
{
  for (int i = 0; i < meqn; i++) {
    delta[i] = qr[i] - ql[i];
  }
}

__device__ static void calcFirstOrderGud(
  const double dtdx, double *ql, double *qr, const double *amdq,
  const double *apdq, const unsigned meqn)
{
  for (int i = 0; i< meqn; i++) {
    qr[i] -= dtdx * apdq[i];
    ql[i] += dtdx * apdq[i];
  }
}

__device__ static double calcCfla(
  const double cfla, const double dtdx, const double *s, const unsigned mwave)
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
  unsigned int ndim = localRange->ndim;

  // set up indexers for localRange and qIn (localExtRange)
  Gkyl::GenIndexer localIdxr(localRange);
  Gkyl::GenIndexer fIdxr = qIn->genIndexer();

  // get setup data from GkylWavePropagation_t structure
  GkylRectCart_t *grid = qIn->grid;
  int *updateDirs = hyper->updateDirs;
  int numUpdateDirs = hyper->numUpdateDirs;
  Gkyl::Euler *eq = hyper->equation;

  const int meqn = eq->getNumEquations();
  const int mwave = eq->getNumWaves();

  // XXX use meqn and mwave
  double delta[10];
  double waves[30];
  double s[3];
  double amdq[10];
  double apdq[10];

  // declaring this dummy array shared seems to alleviate register pressure and
  // improve performance a bit
  extern __shared__ double dummy[];
  unsigned linearIdx = threadIdx.x + blockIdx.x*blockDim.x;

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
    idxR[dir] = idxC[dir] + 1;

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

