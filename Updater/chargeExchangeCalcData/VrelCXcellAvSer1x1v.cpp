#include <ChargeExchangeModDecl.h> 
#include <math.h> 
void vrelCXcellAvSer1x1v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[2]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = pow(w[1],2)/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*pow(u[0],2))/vtSqAv; 
  vrelCX[0] = 1.128379167095513*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvSer1x1v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[2]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = pow(w[1],2)/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*pow(u[0],2))/vtSqAv; 
  vrelCX[0] = 1.128379167095513*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvSer1x1v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[2]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = pow(w[1],2)/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*pow(u[0],2))/vtSqAv; 
  vrelCX[0] = 1.128379167095513*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
