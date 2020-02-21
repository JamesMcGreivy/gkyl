#include <ChargeExchange.h> 
#include <math.h> 
void vrelCXcellAvSer2x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[5]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.5*vtSq[0]; 
  double xSqAv = (0.25*u[8]^2)/vtSqAv-(1.0*w[4]*u[8])/vtSqAv+w[4]^2/vtSqAv+(0.25*u[4]^2)/vtSqAv-(1.0*w[3]*u[4])/vtSqAv+w[3]^2/vtSqAv+w[2]^2/vtSqAv-(1.0*u[0]*w[2])/vtSqAv+(0.25*u[0]^2)/vtSqAv; 
  vrelCX[0] = 3.191538243211463*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvSer2x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[5]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.5*vtSq[0]; 
  double xSqAv = (0.25*u[16]^2)/vtSqAv-(1.0*w[4]*u[16])/vtSqAv+(0.25*u[8]^2)/vtSqAv-(1.0*w[3]*u[8])/vtSqAv+w[4]^2/vtSqAv+w[3]^2/vtSqAv+w[2]^2/vtSqAv-(1.0*u[0]*w[2])/vtSqAv+(0.25*u[0]^2)/vtSqAv; 
  vrelCX[0] = 3.191538243211463*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvSer2x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[5]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.5*vtSq[0]; 
  double xSqAv = (0.25*u[24]^2)/vtSqAv-(1.0*w[4]*u[24])/vtSqAv+(0.25*u[12]^2)/vtSqAv-(1.0*w[3]*u[12])/vtSqAv+w[4]^2/vtSqAv+w[3]^2/vtSqAv+w[2]^2/vtSqAv-(1.0*u[0]*w[2])/vtSqAv+(0.25*u[0]^2)/vtSqAv; 
  vrelCX[0] = 3.191538243211463*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
