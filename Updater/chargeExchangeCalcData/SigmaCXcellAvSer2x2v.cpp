#include <ChargeExchangeModDecl.h> 
#include <math.h> 
void sigmaCXcellAvSer2x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[8]:        ion fluid velocity. 
  // uNeut[8]:       neutral fluid velocity. 
  // vtSqIon[4]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[4]:    neutral squared thermal speed, sqrt(T/m). 
  // sigCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*pow(uNeut[4],2)-0.5*uIon[4]*uNeut[4]+0.25*pow(uIon[4],2)+0.25*pow(uNeut[0],2)-0.5*uIon[0]*uNeut[0]+0.25*pow(uIon[0],2); 
  sigCX[0] = 2.0*a-2.0*b*log(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void sigmaCXcellAvSer2x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[16]:        ion fluid velocity. 
  // uNeut[16]:       neutral fluid velocity. 
  // vtSqIon[8]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[8]:    neutral squared thermal speed, sqrt(T/m). 
  // sigCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*pow(uNeut[8],2)-0.5*uIon[8]*uNeut[8]+0.25*pow(uIon[8],2)+0.25*pow(uNeut[0],2)-0.5*uIon[0]*uNeut[0]+0.25*pow(uIon[0],2); 
  sigCX[0] = 2.0*a-2.0*b*log(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
void sigmaCXcellAvSer2x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX) 
{ 
  // a               constant in fitting function. 
  // b               constant in fitting function. 
  // uIon[24]:        ion fluid velocity. 
  // uNeut[24]:       neutral fluid velocity. 
  // vtSqIon[12]:     ion squared thermal speed, sqrt(T/m). 
  // vtSqNeut[12]:    neutral squared thermal speed, sqrt(T/m). 
  // sigCX:          cell ave cross section fitting eqn. 
 
  double vtSqIonAv = 0.5*vtSqIon[0]; 
  double vtSqNeutAv = 0.5*vtSqNeut[0]; 
  double vINSqAv = 0.25*pow(uNeut[12],2)-0.5*uIon[12]*uNeut[12]+0.25*pow(uIon[12],2)+0.25*pow(uNeut[0],2)-0.5*uIon[0]*uNeut[0]+0.25*pow(uIon[0],2); 
  sigCX[0] = 2.0*a-2.0*b*log(0.5641895835477563*sqrt(4.0*vtSqNeutAv+4.0*vtSqIonAv+3.141592653589793*vINSqAv)); 
 
} 
