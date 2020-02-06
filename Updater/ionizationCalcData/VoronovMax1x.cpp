#include <IonizationModDecl.h> 
#include <math.h> 
void VoronovReactRateCellAv1xMax_P1(const double elemCharge, const double m_, const double *vtSq, const double E, const double A, const double K, const double P, const double X, double *coefIz) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // vtSq[2]:    squared thermal speed, sqrt(T/m) 
  // coefIz[2]:  ionization reaction rate. 
 
  double vtSq0 = 0.7071067811865476*vtSq[0]; 
  double T0 = (0.7071067811865476*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
  coefIz[0] = (1.414213562373095*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(1.414213562373095*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
 
  if (U > 1.0) { 
    coefIz[0] = 0.0;
  }
} 
 
void VoronovReactRateCellAv1xMax_P2(const double elemCharge, const double m_, const double *vtSq, const double E, const double A, const double K, const double P, const double X, double *coefIz) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // vtSq[3]:    squared thermal speed, sqrt(T/m) 
  // coefIz[3]:  ionization reaction rate. 
 
  double vtSq0 = 0.7071067811865476*vtSq[0]; 
  double T0 = (0.7071067811865476*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
  coefIz[0] = (1.414213562373095*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(1.414213562373095*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
 
  if (U > 1.0) { 
    coefIz[0] = 0.0;
  }
} 
 
void VoronovReactRateCellAv1xMax_P3(const double elemCharge, const double m_, const double *vtSq, const double E, const double A, const double K, const double P, const double X, double *coefIz) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // vtSq[4]:    squared thermal speed, sqrt(T/m) 
  // coefIz[4]:  ionization reaction rate. 
 
  double vtSq0 = 0.7071067811865476*vtSq[0]; 
  double T0 = (0.7071067811865476*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
  coefIz[0] = (1.414213562373095*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(1.414213562373095*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
 
  if (U > 1.0) { 
    coefIz[0] = 0.0;
  }
} 
 
