#include <VoronovModDecl.h> 
#include <math.h> 
void VoronovReactRateCellAv2xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[3]:      number density of electrons. 
  // vtSq[3]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[3]:    ionization reaction rate. 
 
  double n0 = 0.5*m0[0]; 
  double vtSq0 = 0.5*vtSq[0]; 
  double T0 = (0.5*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
void VoronovReactRateCellAv2xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[6]:      number density of electrons. 
  // vtSq[6]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[6]:    ionization reaction rate. 
 
  double n0 = 0.5*m0[0]; 
  double vtSq0 = 0.5*vtSq[0]; 
  double T0 = (0.5*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
void VoronovReactRateCellAv2xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[10]:      number density of electrons. 
  // vtSq[10]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[10]:    ionization reaction rate. 
 
  double n0 = 0.5*m0[0]; 
  double vtSq0 = 0.5*vtSq[0]; 
  double T0 = (0.5*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[6]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[6]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[7]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[7]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[8]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[8]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[9]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[9]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
