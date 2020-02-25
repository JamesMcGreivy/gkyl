#include <ChargeExchangeModDecl.h> 
#include <math.h> 
void vrelCXcellAvMax3x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[6]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.3535533905932738*vtSq[0]; 
  double xSqAv = (0.125*pow(u[8],2))/vtSqAv-(0.7071067811865475*w[5]*u[8])/vtSqAv+pow(w[5],2)/vtSqAv+pow(w[4],2)/vtSqAv-(0.7071067811865475*u[4]*w[4])/vtSqAv+(0.125*pow(u[4],2))/vtSqAv+pow(w[3],2)/vtSqAv-(0.7071067811865475*u[0]*w[3])/vtSqAv+(0.125*pow(u[0],2))/vtSqAv; 
  vrelCX[0] = 4.51351666838205*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvMax3x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[6]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.3535533905932738*vtSq[0]; 
  double xSqAv = (0.125*pow(u[20],2))/vtSqAv-(0.7071067811865475*w[5]*u[20])/vtSqAv+(0.125*pow(u[10],2))/vtSqAv-(0.7071067811865475*w[4]*u[10])/vtSqAv+pow(w[5],2)/vtSqAv+pow(w[4],2)/vtSqAv+pow(w[3],2)/vtSqAv-(0.7071067811865475*u[0]*w[3])/vtSqAv+(0.125*pow(u[0],2))/vtSqAv; 
  vrelCX[0] = 4.51351666838205*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvMax3x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[6]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.3535533905932738*vtSq[0]; 
  double xSqAv = (0.125*pow(u[40],2))/vtSqAv-(0.7071067811865475*w[5]*u[40])/vtSqAv+(0.125*pow(u[20],2))/vtSqAv-(0.7071067811865475*w[4]*u[20])/vtSqAv+pow(w[5],2)/vtSqAv+pow(w[4],2)/vtSqAv+pow(w[3],2)/vtSqAv-(0.7071067811865475*u[0]*w[3])/vtSqAv+(0.125*pow(u[0],2))/vtSqAv; 
  vrelCX[0] = 4.51351666838205*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
