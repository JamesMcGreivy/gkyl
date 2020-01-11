#include <VoronovModDecl.h> 
#include <math.h> 
void VoronovReactRateCellAv3xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[8]:      number density of electrons. 
  // vtSq[8]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[8]:    ionization reaction rate. 
 
  double n0 = 0.3535533905932738*m0[0]; 
  double vtSq0 = 0.3535533905932738*vtSq[0]; 
  double T0 = (0.3535533905932738*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[6]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[6]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[7]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[7]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
void VoronovReactRateCellAv3xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[20]:      number density of electrons. 
  // vtSq[20]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[20]:    ionization reaction rate. 
 
  double n0 = 0.3535533905932738*m0[0]; 
  double vtSq0 = 0.3535533905932738*vtSq[0]; 
  double T0 = (0.3535533905932738*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[6]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[6]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[7]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[7]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[8]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[8]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[9]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[9]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[10]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[10]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[11]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[11]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[12]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[12]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[13]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[13]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[14]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[14]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[15]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[15]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[16]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[16]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[17]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[17]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[18]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[18]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[19]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[19]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
void VoronovReactRateCellAv3xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double *nuIZ, const double E, const double A, const double K, const double P, const double X) 
{ 
  // elemCharge: elementary charge (J - eV conversion factor). 
  // E:   	  Voronov ionization energy. 
  // A:   	  Voronov constant. 
  // K:   	  Voronov constant. 
  // P:   	  Voronov constant. 
  // X:   	  Voronov constant. 
  // m_:          mass of electron. 
  // m0[32]:      number density of electrons. 
  // vtSq[32]:    squared thermal speed, sqrt(T/m) 
  // nuIZ[32]:    ionization reaction rate. 
 
  double n0 = 0.3535533905932738*m0[0]; 
  double vtSq0 = 0.3535533905932738*vtSq[0]; 
  double T0 = (0.3535533905932738*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIZ = [(m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[6]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[6]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[7]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[7]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[8]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[8]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[9]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[9]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[10]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[10]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[11]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[11]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[12]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[12]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[13]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[13]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[14]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[14]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[15]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[15]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[16]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[16]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[17]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[17]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[18]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[18]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[19]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[19]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[20]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[20]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[21]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[21]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[22]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[22]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[23]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[23]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[24]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[24]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[25]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[25]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[26]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[26]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[27]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[27]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[28]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[28]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[29]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[29]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[30]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[30]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)),(m0[31]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[31]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))]; 
} 
 
