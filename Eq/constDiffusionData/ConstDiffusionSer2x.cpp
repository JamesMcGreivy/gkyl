#include <ConstDiffusionModDecl.h> 
double ConstDiffusionVol2xSerP1(const double *w, const double *dxv, const double *nu, const double *f, double *out) 
{ 
  // w[2]:   Cell-center coordinates.
  // dxv[2]: Cell spacing.
  // nu[2]:  diffusion coefficient (collisionality).
  // f:      Input distribution function.
  // out:    Incremented output 
  double rdxSq4nu[2]; 
  rdxSq4nu[0] = 4.0*nu[0]/(dxv[0]*dxv[0]); 
  rdxSq4nu[1] = 4.0*nu[1]/(dxv[1]*dxv[1]); 


  return (rdxSq4nu[0]+rdxSq4nu[1])*0.5*1.333333333333333; 

} 
double ConstDiffusionVol2xSerP2(const double *w, const double *dxv, const double *nu, const double *f, double *out) 
{ 
  // w[2]:   Cell-center coordinates.
  // dxv[2]: Cell spacing.
  // nu[2]:  diffusion coefficient (collisionality).
  // f:      Input distribution function.
  // out:    Incremented output 
  double rdxSq4nu[2]; 
  rdxSq4nu[0] = 4.0*nu[0]/(dxv[0]*dxv[0]); 
  rdxSq4nu[1] = 4.0*nu[1]/(dxv[1]*dxv[1]); 

  out[4] += 6.708203932499369*f[0]*rdxSq4nu[0]; 
  out[5] += 6.708203932499369*f[0]*rdxSq4nu[1]; 
  out[6] += 6.708203932499369*rdxSq4nu[0]*f[2]; 
  out[7] += 6.708203932499369*f[1]*rdxSq4nu[1]; 

  return (rdxSq4nu[0]+rdxSq4nu[1])*0.5*1.8; 

} 
double ConstDiffusionVol2xSerP3(const double *w, const double *dxv, const double *nu, const double *f, double *out) 
{ 
  // w[2]:   Cell-center coordinates.
  // dxv[2]: Cell spacing.
  // nu[2]:  diffusion coefficient (collisionality).
  // f:      Input distribution function.
  // out:    Incremented output 
  double rdxSq4nu[2]; 
  rdxSq4nu[0] = 4.0*nu[0]/(dxv[0]*dxv[0]); 
  rdxSq4nu[1] = 4.0*nu[1]/(dxv[1]*dxv[1]); 

  out[4] += 6.708203932499369*f[0]*rdxSq4nu[0]; 
  out[5] += 6.708203932499369*f[0]*rdxSq4nu[1]; 
  out[6] += 6.708203932499369*rdxSq4nu[0]*f[2]; 
  out[7] += 6.708203932499369*f[1]*rdxSq4nu[1]; 
  out[8] += 22.9128784747792*rdxSq4nu[0]*f[1]; 
  out[9] += 22.9128784747792*rdxSq4nu[1]*f[2]; 
  out[10] += 22.9128784747792*rdxSq4nu[0]*f[3]; 
  out[11] += 22.9128784747792*rdxSq4nu[1]*f[3]; 

  return (rdxSq4nu[0]+rdxSq4nu[1])*0.5*2.285714285714286; 

} 
