#include <PaulsChargeExchange.h> 
#include <math.h> 
void vrelCXcellAvMax2x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[5]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.5*vtSq[0]; 
  double xSqAv = (0.25*u[6]^2)/vtSqAv-(1.0*w[4]*u[6])/vtSqAv+w[4]^2/vtSqAv+w[3]^2/vtSqAv-(1.0*u[3]*w[3])/vtSqAv+(0.25*u[3]^2)/vtSqAv+w[2]^2/vtSqAv-(1.0*u[0]*w[2])/vtSqAv+(0.25*u[0]^2)/vtSqAv; 
  vrelCX[0] = 5.656854249492382*sqrt(vtSqAv)*sqrt(xSqAv+4.0/pi); 
 
} 
void vrelCXcellAvMax2x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[5]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.5*vtSq[0]; 
  double xSqAv = (0.25*u[12]^2)/vtSqAv-(1.0*w[4]*u[12])/vtSqAv+(0.25*u[6]^2)/vtSqAv-(1.0*w[3]*u[6])/vtSqAv+w[4]^2/vtSqAv+w[3]^2/vtSqAv+w[2]^2/vtSqAv-(1.0*u[0]*w[2])/vtSqAv+(0.25*u[0]^2)/vtSqAv; 
  vrelCX[0] = 5.656854249492382*sqrt(vtSqAv)*sqrt(xSqAv+4.0/pi); 
 
} 
void vrelCXcellAvMax2x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[5]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.5*vtSq[0]; 
  double xSqAv = (0.25*u[20]^2)/vtSqAv-(1.0*w[4]*u[20])/vtSqAv+(0.25*u[10]^2)/vtSqAv-(1.0*w[3]*u[10])/vtSqAv+w[4]^2/vtSqAv+w[3]^2/vtSqAv+w[2]^2/vtSqAv-(1.0*u[0]*w[2])/vtSqAv+(0.25*u[0]^2)/vtSqAv; 
  vrelCX[0] = 5.656854249492382*sqrt(vtSqAv)*sqrt(xSqAv+4.0/pi); 
 
} 
