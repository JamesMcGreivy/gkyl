#include <VoronovModDecl.h> 
#include <math.h> 
void VoronovReactRateCellAv1xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[2]:      number density of electrons. 
  // vtSq[2]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[2]:    ionization reaction rate. 
 
  double n0 = 0.7071067811865476*m0[0]; 
  double vtSq0 = 0.7071067811865476*vtSq[0]; 
  double T0 = (0.7071067811865476*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
void VoronovReactRateCellAv1xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
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
 
  double n0 = 0.7071067811865476*m0[0]; 
  double vtSq0 = 0.7071067811865476*vtSq[0]; 
  double T0 = (0.7071067811865476*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
void VoronovReactRateCellAv1xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[4]:      number density of electrons. 
  // vtSq[4]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[4]:    ionization reaction rate. 
 
  double n0 = 0.7071067811865476*m0[0]; 
  double vtSq0 = 0.7071067811865476*vtSq[0]; 
  double T0 = (0.7071067811865476*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
