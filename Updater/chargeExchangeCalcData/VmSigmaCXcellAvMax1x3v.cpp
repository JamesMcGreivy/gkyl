#include <ChargeExchangeModDecl.h> 
#include <math.h> 
void VmSigmaCXcellAvMax1x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigmaCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[6]:        ion fluid velocity. 
  // uNeut[6]:       neutral fluid velocity. 
  // vtSqIon[2]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[2]:    neutral squared thermal speed, sqrt(T/m). 
  // sigmaCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*pow(uNeut[4],2)-1.0*uIon[4]*uNeut[4]+0.5*pow(uIon[4],2)+0.5*pow(uNeut[2],2)-1.0*uIon[2]*uNeut[2]+0.5*pow(uIon[2],2)+0.5*pow(uNeut[0],2)-1.0*uIon[0]*uNeut[0]+0.5*pow(uIon[0],2); 
  sigmaCX[0] = 1.414213562373095*a-1.414213562373095*b*log(sqrt(1.273239544735163*vtSqNeutAv+1.273239544735163*vtSqIonAv+vINSqAv)); 
 
} 
void VmSigmaCXcellAvMax1x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigmaCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[9]:        ion fluid velocity. 
  // uNeut[9]:       neutral fluid velocity. 
  // vtSqIon[3]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[3]:    neutral squared thermal speed, sqrt(T/m). 
  // sigmaCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*pow(uNeut[6],2)-1.0*uIon[6]*uNeut[6]+0.5*pow(uIon[6],2)+0.5*pow(uNeut[3],2)-1.0*uIon[3]*uNeut[3]+0.5*pow(uIon[3],2)+0.5*pow(uNeut[0],2)-1.0*uIon[0]*uNeut[0]+0.5*pow(uIon[0],2); 
  sigmaCX[0] = 1.414213562373095*a-1.414213562373095*b*log(sqrt(1.273239544735163*vtSqNeutAv+1.273239544735163*vtSqIonAv+vINSqAv)); 
 
} 
void VmSigmaCXcellAvMax1x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigmaCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[12]:        ion fluid velocity. 
  // uNeut[12]:       neutral fluid velocity. 
  // vtSqIon[4]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[4]:    neutral squared thermal speed, sqrt(T/m). 
  // sigmaCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*pow(uNeut[8],2)-1.0*uIon[8]*uNeut[8]+0.5*pow(uIon[8],2)+0.5*pow(uNeut[4],2)-1.0*uIon[4]*uNeut[4]+0.5*pow(uIon[4],2)+0.5*pow(uNeut[0],2)-1.0*uIon[0]*uNeut[0]+0.5*pow(uIon[0],2); 
  sigmaCX[0] = 1.414213562373095*a-1.414213562373095*b*log(sqrt(1.273239544735163*vtSqNeutAv+1.273239544735163*vtSqIonAv+vINSqAv)); 
 
} 