#include <ChargeExchange.h> 
#include <math.h> 
void calcLnVCXcellAvSer1x2v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[4]:        ion fluid velocity. 
  // uNeut[4]:       neutral fluid velocity. 
  // vtSqIon[2]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[2]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*uNeut[2]^2-1.0*uIon[2]*uNeut[2]+0.5*uIon[2]^2+0.5*uNeut[0]^2-1.0*uIon[0]*uNeut[0]+0.5*uIon[0]^2; 
  lnVCX[0] = 1.414213562373095*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvSer1x2v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[6]:        ion fluid velocity. 
  // uNeut[6]:       neutral fluid velocity. 
  // vtSqIon[3]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[3]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*uNeut[3]^2-1.0*uIon[3]*uNeut[3]+0.5*uIon[3]^2+0.5*uNeut[0]^2-1.0*uIon[0]*uNeut[0]+0.5*uIon[0]^2; 
  lnVCX[0] = 1.414213562373095*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void calcLnVCXcellAvSer1x2v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX) 
{ 
  // uIon[8]:        ion fluid velocity. 
  // uNeut[8]:       neutral fluid velocity. 
  // vtSqIon[4]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[4]:    neutral squared thermal speed, sqrt(T/m). 
  // lnVCX:          cell ave. ln(V_CX) in CX cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*uNeut[4]^2-1.0*uIon[4]*uNeut[4]+0.5*uIon[4]^2+0.5*uNeut[0]^2-1.0*uIon[0]*uNeut[0]+0.5*uIon[0]^2; 
  lnVCX[0] = 1.414213562373095*ln(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
