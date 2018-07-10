#ifndef GKYL_TEST_MapPoisson_H
#define GKYL_TEST_MapPoisson_H

#include <Eigen/Dense>
#include <Eigen/SparseCholesky>
#include <Eigen/SparseLU>
#include <Eigen/Sparse>
#include <cmath>
#include <iostream>
#include <vector>
#include <iomanip>

//class creation
class MapPoisson;

extern "C"
{
  void *new_MapPoisson(int nx_, int ny_, double xl_, double yl_, double xu_, double yu_,
int xbctypel_, int ybctypel_, int xbctypeu_, int ybctypeu_, double xbcu_,
double xbcl_, double ybcu_, double ybcl_);
  //wrap fboth steps of solver
  void wrap_factorize(MapPoisson *d);
  void wrap_phisolve(MapPoisson *d);
  //metric wrap from lua to c
  void setMetricFuncPointer_MapPoisson(MapPoisson *d, void (*gfunc)(double *xc, double *g));
  //wrap source and solution solvers
  void wrap_getSrcvalatIJ(MapPoisson *d, int i, int j, double sitrij);
  double wrap_getSolvalatIJ(MapPoisson *d, int i, int j);

  //block storage struct
  typedef struct{
    Eigen::MatrixXd upper;
    Eigen::MatrixXd middle;
    Eigen::MatrixXd lower;
  } blkstor;
}


//class members
class MapPoisson {
  public:
    MapPoisson(int nx_, int ny_, double xl_, double yl_, double xu_, double yu_,
int xbctypel_, int ybctypel_, int xbctypeu_, int ybctypeu_, double xbcu_,
double xbcl_, double ybcu_, double ybcl_);

    //factorize laplacian
    void factorize();
    //solve system
    void phisolve();
    //metric calc pointer
    void setMetricFuncPointer(void (*gfunc)(double *xc, double *g)) {
      this->gfunc = gfunc;
    }
    //source updater
    void getSrcvalatIJ(int i, int j, double sitrij); //might not be a double
    //solution updater
    double getSolvalatIJ(int i, int j);

  private:
    //create laplacian (organize blocks)
    void laplace();
    //convert rhs source (only laplace currently)
    Eigen::VectorXd srcconv();
    //create blocks
    blkstor blkrow(int j);
    //coefficients
    double cij(double xc, double yc);
    double cimj(double xc, double yc);
    double cimjp(double xc, double yc);
    double cijp(double xc, double yc);
    double cipjp(double xc, double yc);
    double cipj(double xc, double yc);
    double cipjm(double xc, double yc);
    double cijm(double xc, double yc);
    double cimjm(double xc, double yc);
    //metric calculator
    void (*gfunc)(double *, double *);
    //convert between gfunc output to eigen vector
    Eigen::Vector3d gij(double xc, double yc);
    //metric inverter
    Eigen::Vector3d ginv(Eigen::Vector3d gmat);
    //metric determinant
    double gdet(Eigen::Vector3d gvec);

    //block storage
    blkstor triblock;
    //simulation parameters
    int nx, ny, xbctypeu, xbctypel, ybctypeu, ybctypel;
    double xbcu, xbcl, ybcu, ybcl, xl, yl, xu, yu;
    //calculated parametrs
    double dxc, dyc;
    Eigen::MatrixXd xca;
    Eigen::MatrixXd yca;
    //solver type
    Eigen::SimplicialLDLT<Eigen::SparseMatrix<double> > solver;
    //source array
    Eigen::VectorXd jsource;
    //solution array
    Eigen::VectorXd phi;
};

#endif