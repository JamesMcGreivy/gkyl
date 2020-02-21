#include <ChargeExchange.h> 
#include <math.h> 
void calcLnVCXcellAvMax3x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[12]:        ion fluid velocity. 
  // uNeut[12]:       neutral fluid velocity. 
  // vtSqIon[4]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[4]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.3535533905932738*vtSqIon[0]; 
  double vtSqNeutAv = 0.3535533905932738*vtSqNeut[0]; 
  double vINSqAv = 0.125*uNeut[8]^2-0.25*uIon[8]*uNeut[8]+0.125*uIon[8]^2+0.125*uNeut[4]^2-0.25*uIon[4]*uNeut[4]+0.125*uIon[4]^2+0.125*uNeut[0]^2-0.25*uIon[0]*uNeut[0]+0.125*uIon[0]^2; 
  lnVCX[0] = 2.828427124746191*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvMax3x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[30]:        ion fluid velocity. 
  // uNeut[30]:       neutral fluid velocity. 
  // vtSqIon[10]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[10]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.3535533905932738*vtSqIon[0]; 
  double vtSqNeutAv = 0.3535533905932738*vtSqNeut[0]; 
  double vINSqAv = 0.125*uNeut[20]^2-0.25*uIon[20]*uNeut[20]+0.125*uIon[20]^2+0.125*uNeut[10]^2-0.25*uIon[10]*uNeut[10]+0.125*uIon[10]^2+0.125*uNeut[0]^2-0.25*uIon[0]*uNeut[0]+0.125*uIon[0]^2; 
  lnVCX[0] = 2.828427124746191*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvMax3x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[60]:        ion fluid velocity. 
  // uNeut[60]:       neutral fluid velocity. 
  // vtSqIon[20]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[20]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.3535533905932738*vtSqIon[0]; 
  double vtSqNeutAv = 0.3535533905932738*vtSqNeut[0]; 
  double vINSqAv = 0.125*uNeut[40]^2-0.25*uIon[40]*uNeut[40]+0.125*uIon[40]^2+0.125*uNeut[20]^2-0.25*uIon[20]*uNeut[20]+0.125*uIon[20]^2+0.125*uNeut[0]^2-0.25*uIon[0]*uNeut[0]+0.125*uIon[0]^2; 
  lnVCX[0] = 2.828427124746191*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
