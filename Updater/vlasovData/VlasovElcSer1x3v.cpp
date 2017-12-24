#include <VlasovModDecl.h> 
void VlasovVolElc1x3vSerP1(const double *w, const double *dxv, const double *E, const double *f, double *out) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. E/f: Input electric-field/distribution function. out: Incremented output 
  double dv10 = 2/dxv[1]; 
  out[2] += 1.224744871391589*E[1]*f[1]*dv10+1.224744871391589*E[0]*f[0]*dv10; 
  out[5] += 1.224744871391589*E[0]*f[1]*dv10+1.224744871391589*f[0]*E[1]*dv10; 
  out[7] += 1.224744871391589*E[1]*f[6]*dv10+1.224744871391589*E[0]*f[3]*dv10; 
  out[9] += 1.224744871391589*E[1]*f[8]*dv10+1.224744871391589*E[0]*f[4]*dv10; 
  out[11] += 1.224744871391589*E[0]*f[6]*dv10+1.224744871391589*E[1]*f[3]*dv10; 
  out[12] += 1.224744871391589*E[0]*f[8]*dv10+1.224744871391589*E[1]*f[4]*dv10; 
  out[14] += 1.224744871391589*E[1]*f[13]*dv10+1.224744871391589*E[0]*f[10]*dv10; 
  out[15] += 1.224744871391589*E[0]*f[13]*dv10+1.224744871391589*E[1]*f[10]*dv10; 
} 
void VlasovVolElc1x3vSerP2(const double *w, const double *dxv, const double *E, const double *f, double *out) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. E/f: Input electric-field/distribution function. out: Incremented output 
  double dv10 = 2/dxv[1]; 
  out[2] += 1.224744871391589*E[2]*f[11]*dv10+1.224744871391589*E[1]*f[1]*dv10+1.224744871391589*E[0]*f[0]*dv10; 
  out[5] += 1.095445115010332*E[1]*f[11]*dv10+1.095445115010332*f[1]*E[2]*dv10+1.224744871391589*E[0]*f[1]*dv10+1.224744871391589*f[0]*E[1]*dv10; 
  out[7] += 1.224744871391589*E[2]*f[21]*dv10+1.224744871391589*E[1]*f[6]*dv10+1.224744871391589*E[0]*f[3]*dv10; 
  out[9] += 1.224744871391589*E[2]*f[25]*dv10+1.224744871391589*E[1]*f[8]*dv10+1.224744871391589*E[0]*f[4]*dv10; 
  out[12] += 2.738612787525831*E[2]*f[19]*dv10+2.738612787525831*E[1]*f[5]*dv10+2.738612787525831*E[0]*f[2]*dv10; 
  out[15] += 1.095445115010332*E[1]*f[21]*dv10+1.095445115010332*E[2]*f[6]*dv10+1.224744871391589*E[0]*f[6]*dv10+1.224744871391589*E[1]*f[3]*dv10; 
  out[16] += 1.095445115010332*E[1]*f[25]*dv10+1.095445115010332*E[2]*f[8]*dv10+1.224744871391589*E[0]*f[8]*dv10+1.224744871391589*E[1]*f[4]*dv10; 
  out[18] += 1.224744871391589*E[2]*f[37]*dv10+1.224744871391589*E[1]*f[17]*dv10+1.224744871391589*E[0]*f[10]*dv10; 
  out[19] += 0.7824607964359517*E[2]*f[11]*dv10+1.224744871391589*E[0]*f[11]*dv10+1.224744871391589*f[0]*E[2]*dv10+1.095445115010332*E[1]*f[1]*dv10; 
  out[20] += 2.449489742783178*E[1]*f[19]*dv10+2.449489742783178*E[2]*f[5]*dv10+2.738612787525831*E[0]*f[5]*dv10+2.738612787525831*E[1]*f[2]*dv10; 
  out[22] += 2.738612787525831*E[2]*f[32]*dv10+2.738612787525831*E[1]*f[15]*dv10+2.738612787525831*E[0]*f[7]*dv10; 
  out[24] += 1.224744871391589*E[1]*f[23]*dv10+1.224744871391589*E[0]*f[13]*dv10; 
  out[26] += 2.738612787525831*E[2]*f[35]*dv10+2.738612787525831*E[1]*f[16]*dv10+2.738612787525831*E[0]*f[9]*dv10; 
  out[29] += 1.224744871391589*E[1]*f[28]*dv10+1.224744871391589*E[0]*f[14]*dv10; 
  out[31] += 1.095445115010332*E[1]*f[37]*dv10+1.095445115010332*E[2]*f[17]*dv10+1.224744871391589*E[0]*f[17]*dv10+1.224744871391589*E[1]*f[10]*dv10; 
  out[32] += 0.7824607964359517*E[2]*f[21]*dv10+1.224744871391589*E[0]*f[21]*dv10+1.095445115010332*E[1]*f[6]*dv10+1.224744871391589*E[2]*f[3]*dv10; 
  out[33] += 2.449489742783178*E[1]*f[32]*dv10+2.449489742783178*E[2]*f[15]*dv10+2.738612787525831*E[0]*f[15]*dv10+2.738612787525831*E[1]*f[7]*dv10; 
  out[34] += 1.095445115010332*E[2]*f[23]*dv10+1.224744871391589*E[0]*f[23]*dv10+1.224744871391589*E[1]*f[13]*dv10; 
  out[35] += 0.7824607964359517*E[2]*f[25]*dv10+1.224744871391589*E[0]*f[25]*dv10+1.095445115010332*E[1]*f[8]*dv10+1.224744871391589*E[2]*f[4]*dv10; 
  out[36] += 2.449489742783178*E[1]*f[35]*dv10+2.449489742783178*E[2]*f[16]*dv10+2.738612787525831*E[0]*f[16]*dv10+2.738612787525831*E[1]*f[9]*dv10; 
  out[38] += 2.738612787525831*E[2]*f[44]*dv10+2.738612787525831*E[1]*f[31]*dv10+2.738612787525831*E[0]*f[18]*dv10; 
  out[40] += 1.224744871391589*E[1]*f[39]*dv10+1.224744871391589*E[0]*f[27]*dv10; 
  out[41] += 1.095445115010332*E[2]*f[28]*dv10+1.224744871391589*E[0]*f[28]*dv10+1.224744871391589*E[1]*f[14]*dv10; 
  out[43] += 1.224744871391589*E[1]*f[42]*dv10+1.224744871391589*E[0]*f[30]*dv10; 
  out[44] += 0.7824607964359517*E[2]*f[37]*dv10+1.224744871391589*E[0]*f[37]*dv10+1.095445115010332*E[1]*f[17]*dv10+1.224744871391589*E[2]*f[10]*dv10; 
  out[45] += 2.449489742783178*E[1]*f[44]*dv10+2.449489742783178*E[2]*f[31]*dv10+2.738612787525831*E[0]*f[31]*dv10+2.738612787525831*E[1]*f[18]*dv10; 
  out[46] += 1.095445115010332*E[2]*f[39]*dv10+1.224744871391589*E[0]*f[39]*dv10+1.224744871391589*E[1]*f[27]*dv10; 
  out[47] += 1.095445115010332*E[2]*f[42]*dv10+1.224744871391589*E[0]*f[42]*dv10+1.224744871391589*E[1]*f[30]*dv10; 
} 
