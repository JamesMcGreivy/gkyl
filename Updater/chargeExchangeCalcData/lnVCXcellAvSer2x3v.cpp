#include <ChargeExchange.h> 
#include <math.h> 
void calcLnVCXcellAvSer2x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[12]:        ion fluid velocity. 
  // uNeut[12]:       neutral fluid velocity. 
  // vtSqIon[4]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[4]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*uNeut[8]^2-0.5*uIon[8]*uNeut[8]+0.25*uIon[8]^2+0.25*uNeut[4]^2-0.5*uIon[4]*uNeut[4]+0.25*uIon[4]^2+0.25*uNeut[0]^2-0.5*uIon[0]*uNeut[0]+0.25*uIon[0]^2; 
  lnVCX[0] = 2.0*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvSer2x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[24]:        ion fluid velocity. 
  // uNeut[24]:       neutral fluid velocity. 
  // vtSqIon[8]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[8]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*uNeut[16]^2-0.5*uIon[16]*uNeut[16]+0.25*uIon[16]^2+0.25*uNeut[8]^2-0.5*uIon[8]*uNeut[8]+0.25*uIon[8]^2+0.25*uNeut[0]^2-0.5*uIon[0]*uNeut[0]+0.25*uIon[0]^2; 
  lnVCX[0] = 2.0*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvSer2x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[36]:        ion fluid velocity. 
  // uNeut[36]:       neutral fluid velocity. 
  // vtSqIon[12]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[12]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*uNeut[24]^2-0.5*uIon[24]*uNeut[24]+0.25*uIon[24]^2+0.25*uNeut[12]^2-0.5*uIon[12]*uNeut[12]+0.25*uIon[12]^2+0.25*uNeut[0]^2-0.5*uIon[0]*uNeut[0]+0.25*uIon[0]^2; 
  lnVCX[0] = 2.0*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
