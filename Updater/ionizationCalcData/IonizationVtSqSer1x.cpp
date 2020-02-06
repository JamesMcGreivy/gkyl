#include <IonizationModDecl.h> 
#include <math.h> 
void IonizationTemp1xSer_P1(const double elemCharge, const double m_, const double *vtSq, const double E, double *vtSqIz) 
{ 
  // E:   	   Voronov ionization energy [eV]. 
  // m_:           mass of electron. 
  // vtSq[2]:     electron squared thermal speed, sqrt(T/m) 
  // vtSqIz[2]:   ionization squared thermal speed. 
 
  vtSqIz[0] = 0.5*vtSq[0]-(0.4714045207910317*E*elemCharge)/m_; 
  vtSqIz[1] = 0.5*vtSq[1]; 
 
} 
 
void IonizationTemp1xSer_P2(const double elemCharge, const double m_, const double *vtSq, const double E, double *vtSqIz) 
{ 
  // E:   	   Voronov ionization energy [eV]. 
  // m_:           mass of electron. 
  // vtSq[3]:     electron squared thermal speed, sqrt(T/m) 
  // vtSqIz[3]:   ionization squared thermal speed. 
 
  vtSqIz[0] = 0.5*vtSq[0]-(0.4714045207910317*E*elemCharge)/m_; 
  vtSqIz[1] = 0.5*vtSq[1]; 
  vtSqIz[2] = 0.5*vtSq[2]; 
 
} 
 
void IonizationTemp1xSer_P3(const double elemCharge, const double m_, const double *vtSq, const double E, double *vtSqIz) 
{ 
  // E:   	   Voronov ionization energy [eV]. 
  // m_:           mass of electron. 
  // vtSq[4]:     electron squared thermal speed, sqrt(T/m) 
  // vtSqIz[4]:   ionization squared thermal speed. 
 
  vtSqIz[0] = 0.5*vtSq[0]-(0.4714045207910317*E*elemCharge)/m_; 
  vtSqIz[1] = 0.5*vtSq[1]; 
  vtSqIz[2] = 0.5*vtSq[2]; 
  vtSqIz[3] = 0.5*vtSq[3]; 
 
} 
 
