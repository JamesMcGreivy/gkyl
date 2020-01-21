#include <VoronovModDecl.h> 
#include <math.h> 
void VoronovReactRate3xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double E, const double A, const double K, const double P, const double X, double *nuIz) 
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
  // nuIz[8]:    ionization reaction rate. 
 
  double n0 = 0.3535533905932738*m0[0]; 
  double vtSq0 = 0.3535533905932738*vtSq[0]; 
  double T0 = (0.3535533905932738*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIz[0] = (m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[1] = (m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[2] = (m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[3] = (m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[4] = (m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[5] = (m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[6] = (m0[6]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[6]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[7] = (m0[7]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[7]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
} 
 
void VoronovReactRate3xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double E, const double A, const double K, const double P, const double X, double *nuIz) 
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
  // nuIz[20]:    ionization reaction rate. 
 
  double n0 = 0.3535533905932738*m0[0]; 
  double vtSq0 = 0.3535533905932738*vtSq[0]; 
  double T0 = (0.3535533905932738*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIz[0] = (m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[1] = (m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[2] = (m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[3] = (m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[4] = (m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[5] = (m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[6] = (m0[6]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[6]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[7] = (m0[7]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[7]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[8] = (m0[8]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[8]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[9] = (m0[9]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[9]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[10] = (m0[10]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[10]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[11] = (m0[11]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[11]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[12] = (m0[12]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[12]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[13] = (m0[13]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[13]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[14] = (m0[14]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[14]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[15] = (m0[15]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[15]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[16] = (m0[16]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[16]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[17] = (m0[17]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[17]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[18] = (m0[18]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[18]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[19] = (m0[19]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[19]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
} 
 
void VoronovReactRate3xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, const double E, const double A, const double K, const double P, const double X, double *nuIz) 
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
  // nuIz[32]:    ionization reaction rate. 
 
  double n0 = 0.3535533905932738*m0[0]; 
  double vtSq0 = 0.3535533905932738*vtSq[0]; 
  double T0 = (0.3535533905932738*vtSq[0]*m_)/elemCharge; 
  double U = E/T0; 
 
    nuIz[0] = (m0[0]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[0]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[1] = (m0[1]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[1]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[2] = (m0[2]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[2]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[3] = (m0[3]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[3]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[4] = (m0[4]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[4]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[5] = (m0[5]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[5]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[6] = (m0[6]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[6]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[7] = (m0[7]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[7]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[8] = (m0[8]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[8]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[9] = (m0[9]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[9]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[10] = (m0[10]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[10]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[11] = (m0[11]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[11]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[12] = (m0[12]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[12]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[13] = (m0[13]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[13]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[14] = (m0[14]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[14]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[15] = (m0[15]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[15]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[16] = (m0[16]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[16]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[17] = (m0[17]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[17]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[18] = (m0[18]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[18]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[19] = (m0[19]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[19]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[20] = (m0[20]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[20]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[21] = (m0[21]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[21]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[22] = (m0[22]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[22]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[23] = (m0[23]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[23]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[24] = (m0[24]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[24]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[25] = (m0[25]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[25]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[26] = (m0[26]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[26]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[27] = (m0[27]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[27]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[28] = (m0[28]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[28]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[29] = (m0[29]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[29]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[30] = (m0[30]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[30]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
    nuIz[31] = (m0[31]*A*P*pow(U,K+1/2))/(1000000.0*X*exp(U)+1000000.0*U*exp(U))+(m0[31]*A*pow(U,K))/(1000000.0*X*exp(U)+1000000.0*U*exp(U)); 
} 
 
