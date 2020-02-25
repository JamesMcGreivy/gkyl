#include <ChargeExchangeModDecl.h> 
#include <math.h> 
void sigmaCXcellAvMax1x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[4]:        ion fluid velocity. 
  // uNeut[4]:       neutral fluid velocity. 
  // vtSqIon[2]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[2]:    neutral squared thermal speed, sqrt(T/m). 
  // sigCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*pow(uNeut[2],2)-1.0*uIon[2]*uNeut[2]+0.5*pow(uIon[2],2)+0.5*pow(uNeut[0],2)-1.0*uIon[0]*uNeut[0]+0.5*pow(uIon[0],2); 
  sigCX[0] = 1.414213562373095*a-1.414213562373095*b*log(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void sigmaCXcellAvMax1x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[6]:        ion fluid velocity. 
  // uNeut[6]:       neutral fluid velocity. 
  // vtSqIon[3]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[3]:    neutral squared thermal speed, sqrt(T/m). 
  // sigCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*pow(uNeut[3],2)-1.0*uIon[3]*uNeut[3]+0.5*pow(uIon[3],2)+0.5*pow(uNeut[0],2)-1.0*uIon[0]*uNeut[0]+0.5*pow(uIon[0],2); 
  sigCX[0] = 1.414213562373095*a-1.414213562373095*b*log(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void sigmaCXcellAvMax1x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[8]:        ion fluid velocity. 
  // uNeut[8]:       neutral fluid velocity. 
  // vtSqIon[4]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[4]:    neutral squared thermal speed, sqrt(T/m). 
  // sigCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.7071067811865476*vtSqIon[0]; 
  double vtSqNeutAv = 0.7071067811865476*vtSqNeut[0]; 
  double vINSqAv = 0.5*pow(uNeut[4],2)-1.0*uIon[4]*uNeut[4]+0.5*pow(uIon[4],2)+0.5*pow(uNeut[0],2)-1.0*uIon[0]*uNeut[0]+0.5*pow(uIon[0],2); 
  sigCX[0] = 1.414213562373095*a-1.414213562373095*b*log(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
