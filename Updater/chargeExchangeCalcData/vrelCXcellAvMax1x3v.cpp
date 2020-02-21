#include <ChargeExchange.h> 
#include <math.h> 
void vrelCXcellAvMax1x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[4]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = (0.5*u[4]^2)/vtSqAv-(1.414213562373095*w[3]*u[4])/vtSqAv+w[3]^2/vtSqAv+w[2]^2/vtSqAv-(1.414213562373095*u[2]*w[2])/vtSqAv+(0.5*u[2]^2)/vtSqAv+w[1]^2/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*u[0]^2)/vtSqAv; 
  vrelCX[0] = 2.256758334191025*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvMax1x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[4]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = (0.5*u[6]^2)/vtSqAv-(1.414213562373095*w[3]*u[6])/vtSqAv+w[3]^2/vtSqAv+(0.5*u[3]^2)/vtSqAv-(1.414213562373095*w[2]*u[3])/vtSqAv+w[2]^2/vtSqAv+w[1]^2/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*u[0]^2)/vtSqAv; 
  vrelCX[0] = 2.256758334191025*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
void vrelCXcellAvMax1x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX) 
{ 
  // w[4]:    Cell-center coordinates. 
  // u:        velocity. 
  // vtSq:     squared thermal speed, sqrt(T/m). 
  // vrelCX:   v^* in Pauls CX model. 
 
  double vtSqAv = 0.7071067811865476*vtSq[0]; 
  double xSqAv = (0.5*u[8]^2)/vtSqAv-(1.414213562373095*w[3]*u[8])/vtSqAv+(0.5*u[4]^2)/vtSqAv-(1.414213562373095*w[2]*u[4])/vtSqAv+w[3]^2/vtSqAv+w[2]^2/vtSqAv+w[1]^2/vtSqAv-(1.414213562373095*u[0]*w[1])/vtSqAv+(0.5*u[0]^2)/vtSqAv; 
  vrelCX[0] = 2.256758334191025*sqrt(vtSqAv)*sqrt(3.141592653589793*xSqAv+4.0); 
 
} 
