#include <ChargeExchange.h> 
#include <math.h> 
void calcLnVCXcellAvMax2x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[9]:        ion fluid velocity. 
  // uNeut[9]:       neutral fluid velocity. 
  // vtSqIon[3]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[3]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*uNeut[6]^2-0.5*uIon[6]*uNeut[6]+0.25*uIon[6]^2+0.25*uNeut[3]^2-0.5*uIon[3]*uNeut[3]+0.25*uIon[3]^2+0.25*uNeut[0]^2-0.5*uIon[0]*uNeut[0]+0.25*uIon[0]^2; 
  lnVCX[0] = 2.0*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvMax2x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[18]:        ion fluid velocity. 
  // uNeut[18]:       neutral fluid velocity. 
  // vtSqIon[6]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[6]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*uNeut[12]^2-0.5*uIon[12]*uNeut[12]+0.25*uIon[12]^2+0.25*uNeut[6]^2-0.5*uIon[6]*uNeut[6]+0.25*uIon[6]^2+0.25*uNeut[0]^2-0.5*uIon[0]*uNeut[0]+0.25*uIon[0]^2; 
  lnVCX[0] = 2.0*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvMax2x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[30]:        ion fluid velocity. 
  // uNeut[30]:       neutral fluid velocity. 
  // vtSqIon[10]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[10]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*uNeut[20]^2-0.5*uIon[20]*uNeut[20]+0.25*uIon[20]^2+0.25*uNeut[10]^2-0.5*uIon[10]*uNeut[10]+0.25*uIon[10]^2+0.25*uNeut[0]^2-0.5*uIon[0]*uNeut[0]+0.25*uIon[0]^2; 
  lnVCX[0] = 2.0*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
