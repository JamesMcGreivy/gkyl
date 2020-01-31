#include <PaulsChargeExchange.h> 
#include <math.h> 
void vrelCXcellAvSer1x1v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[2]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = w[1]^2/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*u[0]^2)/vtSqAv; 
  vrelCX[0] = 2.0*sqrt(vtSqAv)*sqrt(xSqAv+4.0/pi); 
 
} 
void vrelCXcellAvSer1x1v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[2]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = w[1]^2/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*u[0]^2)/vtSqAv; 
  vrelCX[0] = 2.0*sqrt(vtSqAv)*sqrt(xSqAv+4.0/pi); 
 
} 
void vrelCXcellAvSer1x1v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[2]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = w[1]^2/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*u[0]^2)/vtSqAv; 
  vrelCX[0] = 2.0*sqrt(vtSqAv)*sqrt(xSqAv+4.0/pi); 
 
} 
