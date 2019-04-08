#include <MaxwellModDecl.h> 
double MaxwellCentralSurf2xTensor_X_P1(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[0]; 
  const double dxr1 = 2.0/dxr[0]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[4]; 
  const double *ezl = &ql[8]; 
  const double *bxl = &ql[12]; 
  const double *byl = &ql[16]; 
  const double *bzl = &ql[20]; 
  const double *phl = &ql[24]; 
  const double *psl = &ql[28]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[4]; 
  double *outEzl = &outl[8]; 
  double *outBxl = &outl[12]; 
  double *outByl = &outl[16]; 
  double *outBzl = &outl[20]; 
  double *outPhl = &outl[24]; 
  double *outPsl = &outl[28]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[4]; 
  const double *ezr = &qr[8]; 
  const double *bxr = &qr[12]; 
  const double *byr = &qr[16]; 
  const double *bzr = &qr[20]; 
  const double *phr = &qr[24]; 
  const double *psr = &qr[28]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[4]; 
  double *outEzr = &outr[8]; 
  double *outBxr = &outr[12]; 
  double *outByr = &outr[16]; 
  double *outBzr = &outr[20]; 
  double *outPhr = &outr[24]; 
  double *outPsr = &outr[28]; 
 
  double incr[4]; 
 
  incr[0] = ((-0.4330127018922193*phr[1])+0.4330127018922193*phl[1]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = (0.75*phr[1]-0.75*phl[1]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[2] = ((-0.4330127018922193*phr[3])+0.4330127018922193*phl[3]+0.25*(phr[2]+phl[2]))*c2chi; 
  incr[3] = (0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[2]+phl[2]))*c2chi; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += incr[1]*dxl1; 
  outExl[2] += -1.0*incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*bzr[1])+0.4330127018922193*bzl[1]+0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = (0.75*bzr[1]-0.75*bzl[1]-0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[2] = ((-0.4330127018922193*bzr[3])+0.4330127018922193*bzl[3]+0.25*(bzr[2]+bzl[2]))*c2; 
  incr[3] = (0.75*bzr[3]-0.75*bzl[3]-0.4330127018922193*(bzr[2]+bzl[2]))*c2; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += incr[1]*dxl1; 
  outEyl[2] += -1.0*incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 

 
  incr[0] = (0.4330127018922193*byr[1]-0.4330127018922193*byl[1]-0.25*(byr[0]+byl[0]))*c2; 
  incr[1] = ((-0.75*byr[1])+0.75*byl[1]+0.4330127018922193*(byr[0]+byl[0]))*c2; 
  incr[2] = (0.4330127018922193*byr[3]-0.4330127018922193*byl[3]-0.25*(byr[2]+byl[2]))*c2; 
  incr[3] = ((-0.75*byr[3])+0.75*byl[3]+0.4330127018922193*(byr[2]+byl[2]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += incr[1]*dxl1; 
  outEzl[2] += -1.0*incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*psr[1])+0.4330127018922193*psl[1]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = (0.75*psr[1]-0.75*psl[1]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[2] = ((-0.4330127018922193*psr[3])+0.4330127018922193*psl[3]+0.25*(psr[2]+psl[2]))*gamma; 
  incr[3] = (0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[2]+psl[2]))*gamma; 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += incr[1]*dxl1; 
  outBxl[2] += -1.0*incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 

 
  incr[0] = 0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1]-0.25*(ezr[0]+ezl[0]); 
  incr[1] = (-0.75*ezr[1])+0.75*ezl[1]+0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[2] = 0.4330127018922193*ezr[3]-0.4330127018922193*ezl[3]-0.25*(ezr[2]+ezl[2]); 
  incr[3] = (-0.75*ezr[3])+0.75*ezl[3]+0.4330127018922193*(ezr[2]+ezl[2]); 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += incr[1]*dxl1; 
  outByl[2] += -1.0*incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 

 
  incr[0] = (-0.4330127018922193*eyr[1])+0.4330127018922193*eyl[1]+0.25*(eyr[0]+eyl[0]); 
  incr[1] = 0.75*eyr[1]-0.75*eyl[1]-0.4330127018922193*(eyr[0]+eyl[0]); 
  incr[2] = (-0.4330127018922193*eyr[3])+0.4330127018922193*eyl[3]+0.25*(eyr[2]+eyl[2]); 
  incr[3] = 0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[2]+eyl[2]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += incr[1]*dxl1; 
  outBzl[2] += -1.0*incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*exr[1])+0.4330127018922193*exl[1]+0.25*(exr[0]+exl[0]))*chi; 
  incr[1] = (0.75*exr[1]-0.75*exl[1]-0.4330127018922193*(exr[0]+exl[0]))*chi; 
  incr[2] = ((-0.4330127018922193*exr[3])+0.4330127018922193*exl[3]+0.25*(exr[2]+exl[2]))*chi; 
  incr[3] = (0.75*exr[3]-0.75*exl[3]-0.4330127018922193*(exr[2]+exl[2]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += incr[1]*dxl1; 
  outPhl[2] += -1.0*incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*bxr[1])+0.4330127018922193*bxl[1]+0.25*(bxr[0]+bxl[0]))*c2gamma; 
  incr[1] = (0.75*bxr[1]-0.75*bxl[1]-0.4330127018922193*(bxr[0]+bxl[0]))*c2gamma; 
  incr[2] = ((-0.4330127018922193*bxr[3])+0.4330127018922193*bxl[3]+0.25*(bxr[2]+bxl[2]))*c2gamma; 
  incr[3] = (0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[2]+bxl[2]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += incr[1]*dxl1; 
  outPsl[2] += -1.0*incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 

 
  return c; 
} 
double MaxwellCentralSurf2xTensor_X_P2(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[0]; 
  const double dxr1 = 2.0/dxr[0]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[9]; 
  const double *ezl = &ql[18]; 
  const double *bxl = &ql[27]; 
  const double *byl = &ql[36]; 
  const double *bzl = &ql[45]; 
  const double *phl = &ql[54]; 
  const double *psl = &ql[63]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[9]; 
  double *outEzl = &outl[18]; 
  double *outBxl = &outl[27]; 
  double *outByl = &outl[36]; 
  double *outBzl = &outl[45]; 
  double *outPhl = &outl[54]; 
  double *outPsl = &outl[63]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[9]; 
  const double *ezr = &qr[18]; 
  const double *bxr = &qr[27]; 
  const double *byr = &qr[36]; 
  const double *bzr = &qr[45]; 
  const double *phr = &qr[54]; 
  const double *psr = &qr[63]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[9]; 
  double *outEzr = &outr[18]; 
  double *outBxr = &outr[27]; 
  double *outByr = &outr[36]; 
  double *outBzr = &outr[45]; 
  double *outPhr = &outr[54]; 
  double *outPsr = &outr[63]; 
 
  double incr[9]; 
 
  incr[0] = (0.5590169943749475*(phr[4]+phl[4])-0.4330127018922193*phr[1]+0.4330127018922193*phl[1]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = ((-0.9682458365518543*(phr[4]+phl[4]))+0.75*phr[1]-0.75*phl[1]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[2] = (0.5590169943749476*(phr[6]+phl[6])-0.4330127018922193*phr[3]+0.4330127018922193*phl[3]+0.25*(phr[2]+phl[2]))*c2chi; 
  incr[3] = ((-0.9682458365518543*(phr[6]+phl[6]))+0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[2]+phl[2]))*c2chi; 
  incr[4] = (1.25*(phr[4]+phl[4])-0.9682458365518543*phr[1]+0.9682458365518543*phl[1]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 
  incr[5] = (0.5590169943749475*(phr[8]+phl[8])-0.4330127018922194*phr[7]+0.4330127018922194*phl[7]+0.25*(phr[5]+phl[5]))*c2chi; 
  incr[6] = (1.25*(phr[6]+phl[6])-0.9682458365518543*phr[3]+0.9682458365518543*phl[3]+0.5590169943749476*(phr[2]+phl[2]))*c2chi; 
  incr[7] = ((-0.9682458365518543*(phr[8]+phl[8]))+0.75*phr[7]-0.75*phl[7]-0.4330127018922194*(phr[5]+phl[5]))*c2chi; 
  incr[8] = (1.25*(phr[8]+phl[8])-0.9682458365518543*phr[7]+0.9682458365518543*phl[7]+0.5590169943749475*(phr[5]+phl[5]))*c2chi; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 
  outExr[4] += incr[4]*dxr1; 
  outExr[5] += incr[5]*dxr1; 
  outExr[6] += incr[6]*dxr1; 
  outExr[7] += incr[7]*dxr1; 
  outExr[8] += incr[8]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += incr[1]*dxl1; 
  outExl[2] += -1.0*incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 
  outExl[4] += -1.0*incr[4]*dxl1; 
  outExl[5] += -1.0*incr[5]*dxl1; 
  outExl[6] += -1.0*incr[6]*dxl1; 
  outExl[7] += incr[7]*dxl1; 
  outExl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(bzr[4]+bzl[4])-0.4330127018922193*bzr[1]+0.4330127018922193*bzl[1]+0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = ((-0.9682458365518543*(bzr[4]+bzl[4]))+0.75*bzr[1]-0.75*bzl[1]-0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[2] = (0.5590169943749476*(bzr[6]+bzl[6])-0.4330127018922193*bzr[3]+0.4330127018922193*bzl[3]+0.25*(bzr[2]+bzl[2]))*c2; 
  incr[3] = ((-0.9682458365518543*(bzr[6]+bzl[6]))+0.75*bzr[3]-0.75*bzl[3]-0.4330127018922193*(bzr[2]+bzl[2]))*c2; 
  incr[4] = (1.25*(bzr[4]+bzl[4])-0.9682458365518543*bzr[1]+0.9682458365518543*bzl[1]+0.5590169943749475*(bzr[0]+bzl[0]))*c2; 
  incr[5] = (0.5590169943749475*(bzr[8]+bzl[8])-0.4330127018922194*bzr[7]+0.4330127018922194*bzl[7]+0.25*(bzr[5]+bzl[5]))*c2; 
  incr[6] = (1.25*(bzr[6]+bzl[6])-0.9682458365518543*bzr[3]+0.9682458365518543*bzl[3]+0.5590169943749476*(bzr[2]+bzl[2]))*c2; 
  incr[7] = ((-0.9682458365518543*(bzr[8]+bzl[8]))+0.75*bzr[7]-0.75*bzl[7]-0.4330127018922194*(bzr[5]+bzl[5]))*c2; 
  incr[8] = (1.25*(bzr[8]+bzl[8])-0.9682458365518543*bzr[7]+0.9682458365518543*bzl[7]+0.5590169943749475*(bzr[5]+bzl[5]))*c2; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 
  outEyr[4] += incr[4]*dxr1; 
  outEyr[5] += incr[5]*dxr1; 
  outEyr[6] += incr[6]*dxr1; 
  outEyr[7] += incr[7]*dxr1; 
  outEyr[8] += incr[8]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += incr[1]*dxl1; 
  outEyl[2] += -1.0*incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 
  outEyl[4] += -1.0*incr[4]*dxl1; 
  outEyl[5] += -1.0*incr[5]*dxl1; 
  outEyl[6] += -1.0*incr[6]*dxl1; 
  outEyl[7] += incr[7]*dxl1; 
  outEyl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = ((-0.5590169943749475*(byr[4]+byl[4]))+0.4330127018922193*byr[1]-0.4330127018922193*byl[1]-0.25*(byr[0]+byl[0]))*c2; 
  incr[1] = (0.9682458365518543*(byr[4]+byl[4])-0.75*byr[1]+0.75*byl[1]+0.4330127018922193*(byr[0]+byl[0]))*c2; 
  incr[2] = ((-0.5590169943749476*(byr[6]+byl[6]))+0.4330127018922193*byr[3]-0.4330127018922193*byl[3]-0.25*(byr[2]+byl[2]))*c2; 
  incr[3] = (0.9682458365518543*(byr[6]+byl[6])-0.75*byr[3]+0.75*byl[3]+0.4330127018922193*(byr[2]+byl[2]))*c2; 
  incr[4] = ((-1.25*(byr[4]+byl[4]))+0.9682458365518543*byr[1]-0.9682458365518543*byl[1]-0.5590169943749475*(byr[0]+byl[0]))*c2; 
  incr[5] = ((-0.5590169943749475*(byr[8]+byl[8]))+0.4330127018922194*byr[7]-0.4330127018922194*byl[7]-0.25*(byr[5]+byl[5]))*c2; 
  incr[6] = ((-1.25*(byr[6]+byl[6]))+0.9682458365518543*byr[3]-0.9682458365518543*byl[3]-0.5590169943749476*(byr[2]+byl[2]))*c2; 
  incr[7] = (0.9682458365518543*(byr[8]+byl[8])-0.75*byr[7]+0.75*byl[7]+0.4330127018922194*(byr[5]+byl[5]))*c2; 
  incr[8] = ((-1.25*(byr[8]+byl[8]))+0.9682458365518543*byr[7]-0.9682458365518543*byl[7]-0.5590169943749475*(byr[5]+byl[5]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 
  outEzr[4] += incr[4]*dxr1; 
  outEzr[5] += incr[5]*dxr1; 
  outEzr[6] += incr[6]*dxr1; 
  outEzr[7] += incr[7]*dxr1; 
  outEzr[8] += incr[8]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += incr[1]*dxl1; 
  outEzl[2] += -1.0*incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 
  outEzl[4] += -1.0*incr[4]*dxl1; 
  outEzl[5] += -1.0*incr[5]*dxl1; 
  outEzl[6] += -1.0*incr[6]*dxl1; 
  outEzl[7] += incr[7]*dxl1; 
  outEzl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(psr[4]+psl[4])-0.4330127018922193*psr[1]+0.4330127018922193*psl[1]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = ((-0.9682458365518543*(psr[4]+psl[4]))+0.75*psr[1]-0.75*psl[1]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[2] = (0.5590169943749476*(psr[6]+psl[6])-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[2]+psl[2]))*gamma; 
  incr[3] = ((-0.9682458365518543*(psr[6]+psl[6]))+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[2]+psl[2]))*gamma; 
  incr[4] = (1.25*(psr[4]+psl[4])-0.9682458365518543*psr[1]+0.9682458365518543*psl[1]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 
  incr[5] = (0.5590169943749475*(psr[8]+psl[8])-0.4330127018922194*psr[7]+0.4330127018922194*psl[7]+0.25*(psr[5]+psl[5]))*gamma; 
  incr[6] = (1.25*(psr[6]+psl[6])-0.9682458365518543*psr[3]+0.9682458365518543*psl[3]+0.5590169943749476*(psr[2]+psl[2]))*gamma; 
  incr[7] = ((-0.9682458365518543*(psr[8]+psl[8]))+0.75*psr[7]-0.75*psl[7]-0.4330127018922194*(psr[5]+psl[5]))*gamma; 
  incr[8] = (1.25*(psr[8]+psl[8])-0.9682458365518543*psr[7]+0.9682458365518543*psl[7]+0.5590169943749475*(psr[5]+psl[5]))*gamma; 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 
  outBxr[4] += incr[4]*dxr1; 
  outBxr[5] += incr[5]*dxr1; 
  outBxr[6] += incr[6]*dxr1; 
  outBxr[7] += incr[7]*dxr1; 
  outBxr[8] += incr[8]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += incr[1]*dxl1; 
  outBxl[2] += -1.0*incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 
  outBxl[4] += -1.0*incr[4]*dxl1; 
  outBxl[5] += -1.0*incr[5]*dxl1; 
  outBxl[6] += -1.0*incr[6]*dxl1; 
  outBxl[7] += incr[7]*dxl1; 
  outBxl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (-0.5590169943749475*(ezr[4]+ezl[4]))+0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1]-0.25*(ezr[0]+ezl[0]); 
  incr[1] = 0.9682458365518543*(ezr[4]+ezl[4])-0.75*ezr[1]+0.75*ezl[1]+0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[2] = (-0.5590169943749476*(ezr[6]+ezl[6]))+0.4330127018922193*ezr[3]-0.4330127018922193*ezl[3]-0.25*(ezr[2]+ezl[2]); 
  incr[3] = 0.9682458365518543*(ezr[6]+ezl[6])-0.75*ezr[3]+0.75*ezl[3]+0.4330127018922193*(ezr[2]+ezl[2]); 
  incr[4] = (-1.25*(ezr[4]+ezl[4]))+0.9682458365518543*ezr[1]-0.9682458365518543*ezl[1]-0.5590169943749475*(ezr[0]+ezl[0]); 
  incr[5] = (-0.5590169943749475*(ezr[8]+ezl[8]))+0.4330127018922194*ezr[7]-0.4330127018922194*ezl[7]-0.25*(ezr[5]+ezl[5]); 
  incr[6] = (-1.25*(ezr[6]+ezl[6]))+0.9682458365518543*ezr[3]-0.9682458365518543*ezl[3]-0.5590169943749476*(ezr[2]+ezl[2]); 
  incr[7] = 0.9682458365518543*(ezr[8]+ezl[8])-0.75*ezr[7]+0.75*ezl[7]+0.4330127018922194*(ezr[5]+ezl[5]); 
  incr[8] = (-1.25*(ezr[8]+ezl[8]))+0.9682458365518543*ezr[7]-0.9682458365518543*ezl[7]-0.5590169943749475*(ezr[5]+ezl[5]); 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 
  outByr[4] += incr[4]*dxr1; 
  outByr[5] += incr[5]*dxr1; 
  outByr[6] += incr[6]*dxr1; 
  outByr[7] += incr[7]*dxr1; 
  outByr[8] += incr[8]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += incr[1]*dxl1; 
  outByl[2] += -1.0*incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 
  outByl[4] += -1.0*incr[4]*dxl1; 
  outByl[5] += -1.0*incr[5]*dxl1; 
  outByl[6] += -1.0*incr[6]*dxl1; 
  outByl[7] += incr[7]*dxl1; 
  outByl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = 0.5590169943749475*(eyr[4]+eyl[4])-0.4330127018922193*eyr[1]+0.4330127018922193*eyl[1]+0.25*(eyr[0]+eyl[0]); 
  incr[1] = (-0.9682458365518543*(eyr[4]+eyl[4]))+0.75*eyr[1]-0.75*eyl[1]-0.4330127018922193*(eyr[0]+eyl[0]); 
  incr[2] = 0.5590169943749476*(eyr[6]+eyl[6])-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[2]+eyl[2]); 
  incr[3] = (-0.9682458365518543*(eyr[6]+eyl[6]))+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[2]+eyl[2]); 
  incr[4] = 1.25*(eyr[4]+eyl[4])-0.9682458365518543*eyr[1]+0.9682458365518543*eyl[1]+0.5590169943749475*(eyr[0]+eyl[0]); 
  incr[5] = 0.5590169943749475*(eyr[8]+eyl[8])-0.4330127018922194*eyr[7]+0.4330127018922194*eyl[7]+0.25*(eyr[5]+eyl[5]); 
  incr[6] = 1.25*(eyr[6]+eyl[6])-0.9682458365518543*eyr[3]+0.9682458365518543*eyl[3]+0.5590169943749476*(eyr[2]+eyl[2]); 
  incr[7] = (-0.9682458365518543*(eyr[8]+eyl[8]))+0.75*eyr[7]-0.75*eyl[7]-0.4330127018922194*(eyr[5]+eyl[5]); 
  incr[8] = 1.25*(eyr[8]+eyl[8])-0.9682458365518543*eyr[7]+0.9682458365518543*eyl[7]+0.5590169943749475*(eyr[5]+eyl[5]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 
  outBzr[4] += incr[4]*dxr1; 
  outBzr[5] += incr[5]*dxr1; 
  outBzr[6] += incr[6]*dxr1; 
  outBzr[7] += incr[7]*dxr1; 
  outBzr[8] += incr[8]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += incr[1]*dxl1; 
  outBzl[2] += -1.0*incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 
  outBzl[4] += -1.0*incr[4]*dxl1; 
  outBzl[5] += -1.0*incr[5]*dxl1; 
  outBzl[6] += -1.0*incr[6]*dxl1; 
  outBzl[7] += incr[7]*dxl1; 
  outBzl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(exr[4]+exl[4])-0.4330127018922193*exr[1]+0.4330127018922193*exl[1]+0.25*(exr[0]+exl[0]))*chi; 
  incr[1] = ((-0.9682458365518543*(exr[4]+exl[4]))+0.75*exr[1]-0.75*exl[1]-0.4330127018922193*(exr[0]+exl[0]))*chi; 
  incr[2] = (0.5590169943749476*(exr[6]+exl[6])-0.4330127018922193*exr[3]+0.4330127018922193*exl[3]+0.25*(exr[2]+exl[2]))*chi; 
  incr[3] = ((-0.9682458365518543*(exr[6]+exl[6]))+0.75*exr[3]-0.75*exl[3]-0.4330127018922193*(exr[2]+exl[2]))*chi; 
  incr[4] = (1.25*(exr[4]+exl[4])-0.9682458365518543*exr[1]+0.9682458365518543*exl[1]+0.5590169943749475*(exr[0]+exl[0]))*chi; 
  incr[5] = (0.5590169943749475*(exr[8]+exl[8])-0.4330127018922194*exr[7]+0.4330127018922194*exl[7]+0.25*(exr[5]+exl[5]))*chi; 
  incr[6] = (1.25*(exr[6]+exl[6])-0.9682458365518543*exr[3]+0.9682458365518543*exl[3]+0.5590169943749476*(exr[2]+exl[2]))*chi; 
  incr[7] = ((-0.9682458365518543*(exr[8]+exl[8]))+0.75*exr[7]-0.75*exl[7]-0.4330127018922194*(exr[5]+exl[5]))*chi; 
  incr[8] = (1.25*(exr[8]+exl[8])-0.9682458365518543*exr[7]+0.9682458365518543*exl[7]+0.5590169943749475*(exr[5]+exl[5]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 
  outPhr[4] += incr[4]*dxr1; 
  outPhr[5] += incr[5]*dxr1; 
  outPhr[6] += incr[6]*dxr1; 
  outPhr[7] += incr[7]*dxr1; 
  outPhr[8] += incr[8]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += incr[1]*dxl1; 
  outPhl[2] += -1.0*incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 
  outPhl[4] += -1.0*incr[4]*dxl1; 
  outPhl[5] += -1.0*incr[5]*dxl1; 
  outPhl[6] += -1.0*incr[6]*dxl1; 
  outPhl[7] += incr[7]*dxl1; 
  outPhl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(bxr[4]+bxl[4])-0.4330127018922193*bxr[1]+0.4330127018922193*bxl[1]+0.25*(bxr[0]+bxl[0]))*c2gamma; 
  incr[1] = ((-0.9682458365518543*(bxr[4]+bxl[4]))+0.75*bxr[1]-0.75*bxl[1]-0.4330127018922193*(bxr[0]+bxl[0]))*c2gamma; 
  incr[2] = (0.5590169943749476*(bxr[6]+bxl[6])-0.4330127018922193*bxr[3]+0.4330127018922193*bxl[3]+0.25*(bxr[2]+bxl[2]))*c2gamma; 
  incr[3] = ((-0.9682458365518543*(bxr[6]+bxl[6]))+0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[2]+bxl[2]))*c2gamma; 
  incr[4] = (1.25*(bxr[4]+bxl[4])-0.9682458365518543*bxr[1]+0.9682458365518543*bxl[1]+0.5590169943749475*(bxr[0]+bxl[0]))*c2gamma; 
  incr[5] = (0.5590169943749475*(bxr[8]+bxl[8])-0.4330127018922194*bxr[7]+0.4330127018922194*bxl[7]+0.25*(bxr[5]+bxl[5]))*c2gamma; 
  incr[6] = (1.25*(bxr[6]+bxl[6])-0.9682458365518543*bxr[3]+0.9682458365518543*bxl[3]+0.5590169943749476*(bxr[2]+bxl[2]))*c2gamma; 
  incr[7] = ((-0.9682458365518543*(bxr[8]+bxl[8]))+0.75*bxr[7]-0.75*bxl[7]-0.4330127018922194*(bxr[5]+bxl[5]))*c2gamma; 
  incr[8] = (1.25*(bxr[8]+bxl[8])-0.9682458365518543*bxr[7]+0.9682458365518543*bxl[7]+0.5590169943749475*(bxr[5]+bxl[5]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 
  outPsr[4] += incr[4]*dxr1; 
  outPsr[5] += incr[5]*dxr1; 
  outPsr[6] += incr[6]*dxr1; 
  outPsr[7] += incr[7]*dxr1; 
  outPsr[8] += incr[8]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += incr[1]*dxl1; 
  outPsl[2] += -1.0*incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 
  outPsl[4] += -1.0*incr[4]*dxl1; 
  outPsl[5] += -1.0*incr[5]*dxl1; 
  outPsl[6] += -1.0*incr[6]*dxl1; 
  outPsl[7] += incr[7]*dxl1; 
  outPsl[8] += -1.0*incr[8]*dxl1; 

 
  return c; 
} 
double MaxwellCentralSurf2xTensor_X_P3(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[0]; 
  const double dxr1 = 2.0/dxr[0]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[16]; 
  const double *ezl = &ql[32]; 
  const double *bxl = &ql[48]; 
  const double *byl = &ql[64]; 
  const double *bzl = &ql[80]; 
  const double *phl = &ql[96]; 
  const double *psl = &ql[112]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[16]; 
  double *outEzl = &outl[32]; 
  double *outBxl = &outl[48]; 
  double *outByl = &outl[64]; 
  double *outBzl = &outl[80]; 
  double *outPhl = &outl[96]; 
  double *outPsl = &outl[112]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[16]; 
  const double *ezr = &qr[32]; 
  const double *bxr = &qr[48]; 
  const double *byr = &qr[64]; 
  const double *bzr = &qr[80]; 
  const double *phr = &qr[96]; 
  const double *psr = &qr[112]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[16]; 
  double *outEzr = &outr[32]; 
  double *outBxr = &outr[48]; 
  double *outByr = &outr[64]; 
  double *outBzr = &outr[80]; 
  double *outPhr = &outr[96]; 
  double *outPsr = &outr[112]; 
 
  double incr[16]; 
 
  incr[0] = ((-0.6614378277661477*phr[8])+0.6614378277661477*phl[8]+0.5590169943749475*(phr[4]+phl[4])-0.4330127018922193*phr[1]+0.4330127018922193*phl[1]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = (1.14564392373896*phr[8]-1.14564392373896*phl[8]-0.9682458365518543*(phr[4]+phl[4])+0.75*phr[1]-0.75*phl[1]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[2] = ((-0.6614378277661477*phr[11])+0.6614378277661477*phl[11]+0.5590169943749476*(phr[6]+phl[6])-0.4330127018922193*phr[3]+0.4330127018922193*phl[3]+0.25*(phr[2]+phl[2]))*c2chi; 
  incr[3] = (1.14564392373896*phr[11]-1.14564392373896*phl[11]-0.9682458365518543*(phr[6]+phl[6])+0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[2]+phl[2]))*c2chi; 
  incr[4] = ((-1.479019945774904*phr[8])+1.479019945774904*phl[8]+1.25*(phr[4]+phl[4])-0.9682458365518543*phr[1]+0.9682458365518543*phl[1]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 
  incr[5] = ((-0.6614378277661477*phr[13])+0.6614378277661477*phl[13]+0.5590169943749475*(phr[10]+phl[10])-0.4330127018922194*phr[7]+0.4330127018922194*phl[7]+0.25*(phr[5]+phl[5]))*c2chi; 
  incr[6] = ((-1.479019945774904*phr[11])+1.479019945774904*phl[11]+1.25*(phr[6]+phl[6])-0.9682458365518543*phr[3]+0.9682458365518543*phl[3]+0.5590169943749476*(phr[2]+phl[2]))*c2chi; 
  incr[7] = (1.14564392373896*phr[13]-1.14564392373896*phl[13]-0.9682458365518543*(phr[10]+phl[10])+0.75*phr[7]-0.75*phl[7]-0.4330127018922194*(phr[5]+phl[5]))*c2chi; 
  incr[8] = (1.75*phr[8]-1.75*phl[8]-1.479019945774904*(phr[4]+phl[4])+1.14564392373896*phr[1]-1.14564392373896*phl[1]-0.6614378277661477*(phr[0]+phl[0]))*c2chi; 
  incr[9] = ((-0.6614378277661477*phr[15])+0.6614378277661477*phl[15]+0.5590169943749473*(phr[14]+phl[14])-0.4330127018922193*phr[12]+0.4330127018922193*phl[12]+0.25*(phr[9]+phl[9]))*c2chi; 
  incr[10] = ((-1.479019945774904*phr[13])+1.479019945774904*phl[13]+1.25*(phr[10]+phl[10])-0.9682458365518543*phr[7]+0.9682458365518543*phl[7]+0.5590169943749475*(phr[5]+phl[5]))*c2chi; 
  incr[11] = (1.75*phr[11]-1.75*phl[11]-1.479019945774904*(phr[6]+phl[6])+1.14564392373896*phr[3]-1.14564392373896*phl[3]-0.6614378277661477*(phr[2]+phl[2]))*c2chi; 
  incr[12] = (1.14564392373896*phr[15]-1.14564392373896*phl[15]-0.9682458365518541*(phr[14]+phl[14])+0.75*phr[12]-0.75*phl[12]-0.4330127018922193*(phr[9]+phl[9]))*c2chi; 
  incr[13] = (1.75*phr[13]-1.75*phl[13]-1.479019945774904*(phr[10]+phl[10])+1.14564392373896*phr[7]-1.14564392373896*phl[7]-0.6614378277661477*(phr[5]+phl[5]))*c2chi; 
  incr[14] = ((-1.479019945774904*phr[15])+1.479019945774904*phl[15]+1.25*(phr[14]+phl[14])-0.9682458365518541*phr[12]+0.9682458365518541*phl[12]+0.5590169943749473*(phr[9]+phl[9]))*c2chi; 
  incr[15] = (1.75*phr[15]-1.75*phl[15]-1.479019945774904*(phr[14]+phl[14])+1.14564392373896*phr[12]-1.14564392373896*phl[12]-0.6614378277661477*(phr[9]+phl[9]))*c2chi; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 
  outExr[4] += incr[4]*dxr1; 
  outExr[5] += incr[5]*dxr1; 
  outExr[6] += incr[6]*dxr1; 
  outExr[7] += incr[7]*dxr1; 
  outExr[8] += incr[8]*dxr1; 
  outExr[9] += incr[9]*dxr1; 
  outExr[10] += incr[10]*dxr1; 
  outExr[11] += incr[11]*dxr1; 
  outExr[12] += incr[12]*dxr1; 
  outExr[13] += incr[13]*dxr1; 
  outExr[14] += incr[14]*dxr1; 
  outExr[15] += incr[15]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += incr[1]*dxl1; 
  outExl[2] += -1.0*incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 
  outExl[4] += -1.0*incr[4]*dxl1; 
  outExl[5] += -1.0*incr[5]*dxl1; 
  outExl[6] += -1.0*incr[6]*dxl1; 
  outExl[7] += incr[7]*dxl1; 
  outExl[8] += incr[8]*dxl1; 
  outExl[9] += -1.0*incr[9]*dxl1; 
  outExl[10] += -1.0*incr[10]*dxl1; 
  outExl[11] += incr[11]*dxl1; 
  outExl[12] += incr[12]*dxl1; 
  outExl[13] += incr[13]*dxl1; 
  outExl[14] += -1.0*incr[14]*dxl1; 
  outExl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*bzr[8])+0.6614378277661477*bzl[8]+0.5590169943749475*(bzr[4]+bzl[4])-0.4330127018922193*bzr[1]+0.4330127018922193*bzl[1]+0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = (1.14564392373896*bzr[8]-1.14564392373896*bzl[8]-0.9682458365518543*(bzr[4]+bzl[4])+0.75*bzr[1]-0.75*bzl[1]-0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[2] = ((-0.6614378277661477*bzr[11])+0.6614378277661477*bzl[11]+0.5590169943749476*(bzr[6]+bzl[6])-0.4330127018922193*bzr[3]+0.4330127018922193*bzl[3]+0.25*(bzr[2]+bzl[2]))*c2; 
  incr[3] = (1.14564392373896*bzr[11]-1.14564392373896*bzl[11]-0.9682458365518543*(bzr[6]+bzl[6])+0.75*bzr[3]-0.75*bzl[3]-0.4330127018922193*(bzr[2]+bzl[2]))*c2; 
  incr[4] = ((-1.479019945774904*bzr[8])+1.479019945774904*bzl[8]+1.25*(bzr[4]+bzl[4])-0.9682458365518543*bzr[1]+0.9682458365518543*bzl[1]+0.5590169943749475*(bzr[0]+bzl[0]))*c2; 
  incr[5] = ((-0.6614378277661477*bzr[13])+0.6614378277661477*bzl[13]+0.5590169943749475*(bzr[10]+bzl[10])-0.4330127018922194*bzr[7]+0.4330127018922194*bzl[7]+0.25*(bzr[5]+bzl[5]))*c2; 
  incr[6] = ((-1.479019945774904*bzr[11])+1.479019945774904*bzl[11]+1.25*(bzr[6]+bzl[6])-0.9682458365518543*bzr[3]+0.9682458365518543*bzl[3]+0.5590169943749476*(bzr[2]+bzl[2]))*c2; 
  incr[7] = (1.14564392373896*bzr[13]-1.14564392373896*bzl[13]-0.9682458365518543*(bzr[10]+bzl[10])+0.75*bzr[7]-0.75*bzl[7]-0.4330127018922194*(bzr[5]+bzl[5]))*c2; 
  incr[8] = (1.75*bzr[8]-1.75*bzl[8]-1.479019945774904*(bzr[4]+bzl[4])+1.14564392373896*bzr[1]-1.14564392373896*bzl[1]-0.6614378277661477*(bzr[0]+bzl[0]))*c2; 
  incr[9] = ((-0.6614378277661477*bzr[15])+0.6614378277661477*bzl[15]+0.5590169943749473*(bzr[14]+bzl[14])-0.4330127018922193*bzr[12]+0.4330127018922193*bzl[12]+0.25*(bzr[9]+bzl[9]))*c2; 
  incr[10] = ((-1.479019945774904*bzr[13])+1.479019945774904*bzl[13]+1.25*(bzr[10]+bzl[10])-0.9682458365518543*bzr[7]+0.9682458365518543*bzl[7]+0.5590169943749475*(bzr[5]+bzl[5]))*c2; 
  incr[11] = (1.75*bzr[11]-1.75*bzl[11]-1.479019945774904*(bzr[6]+bzl[6])+1.14564392373896*bzr[3]-1.14564392373896*bzl[3]-0.6614378277661477*(bzr[2]+bzl[2]))*c2; 
  incr[12] = (1.14564392373896*bzr[15]-1.14564392373896*bzl[15]-0.9682458365518541*(bzr[14]+bzl[14])+0.75*bzr[12]-0.75*bzl[12]-0.4330127018922193*(bzr[9]+bzl[9]))*c2; 
  incr[13] = (1.75*bzr[13]-1.75*bzl[13]-1.479019945774904*(bzr[10]+bzl[10])+1.14564392373896*bzr[7]-1.14564392373896*bzl[7]-0.6614378277661477*(bzr[5]+bzl[5]))*c2; 
  incr[14] = ((-1.479019945774904*bzr[15])+1.479019945774904*bzl[15]+1.25*(bzr[14]+bzl[14])-0.9682458365518541*bzr[12]+0.9682458365518541*bzl[12]+0.5590169943749473*(bzr[9]+bzl[9]))*c2; 
  incr[15] = (1.75*bzr[15]-1.75*bzl[15]-1.479019945774904*(bzr[14]+bzl[14])+1.14564392373896*bzr[12]-1.14564392373896*bzl[12]-0.6614378277661477*(bzr[9]+bzl[9]))*c2; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 
  outEyr[4] += incr[4]*dxr1; 
  outEyr[5] += incr[5]*dxr1; 
  outEyr[6] += incr[6]*dxr1; 
  outEyr[7] += incr[7]*dxr1; 
  outEyr[8] += incr[8]*dxr1; 
  outEyr[9] += incr[9]*dxr1; 
  outEyr[10] += incr[10]*dxr1; 
  outEyr[11] += incr[11]*dxr1; 
  outEyr[12] += incr[12]*dxr1; 
  outEyr[13] += incr[13]*dxr1; 
  outEyr[14] += incr[14]*dxr1; 
  outEyr[15] += incr[15]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += incr[1]*dxl1; 
  outEyl[2] += -1.0*incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 
  outEyl[4] += -1.0*incr[4]*dxl1; 
  outEyl[5] += -1.0*incr[5]*dxl1; 
  outEyl[6] += -1.0*incr[6]*dxl1; 
  outEyl[7] += incr[7]*dxl1; 
  outEyl[8] += incr[8]*dxl1; 
  outEyl[9] += -1.0*incr[9]*dxl1; 
  outEyl[10] += -1.0*incr[10]*dxl1; 
  outEyl[11] += incr[11]*dxl1; 
  outEyl[12] += incr[12]*dxl1; 
  outEyl[13] += incr[13]*dxl1; 
  outEyl[14] += -1.0*incr[14]*dxl1; 
  outEyl[15] += incr[15]*dxl1; 

 
  incr[0] = (0.6614378277661477*byr[8]-0.6614378277661477*byl[8]-0.5590169943749475*(byr[4]+byl[4])+0.4330127018922193*byr[1]-0.4330127018922193*byl[1]-0.25*(byr[0]+byl[0]))*c2; 
  incr[1] = ((-1.14564392373896*byr[8])+1.14564392373896*byl[8]+0.9682458365518543*(byr[4]+byl[4])-0.75*byr[1]+0.75*byl[1]+0.4330127018922193*(byr[0]+byl[0]))*c2; 
  incr[2] = (0.6614378277661477*byr[11]-0.6614378277661477*byl[11]-0.5590169943749476*(byr[6]+byl[6])+0.4330127018922193*byr[3]-0.4330127018922193*byl[3]-0.25*(byr[2]+byl[2]))*c2; 
  incr[3] = ((-1.14564392373896*byr[11])+1.14564392373896*byl[11]+0.9682458365518543*(byr[6]+byl[6])-0.75*byr[3]+0.75*byl[3]+0.4330127018922193*(byr[2]+byl[2]))*c2; 
  incr[4] = (1.479019945774904*byr[8]-1.479019945774904*byl[8]-1.25*(byr[4]+byl[4])+0.9682458365518543*byr[1]-0.9682458365518543*byl[1]-0.5590169943749475*(byr[0]+byl[0]))*c2; 
  incr[5] = (0.6614378277661477*byr[13]-0.6614378277661477*byl[13]-0.5590169943749475*(byr[10]+byl[10])+0.4330127018922194*byr[7]-0.4330127018922194*byl[7]-0.25*(byr[5]+byl[5]))*c2; 
  incr[6] = (1.479019945774904*byr[11]-1.479019945774904*byl[11]-1.25*(byr[6]+byl[6])+0.9682458365518543*byr[3]-0.9682458365518543*byl[3]-0.5590169943749476*(byr[2]+byl[2]))*c2; 
  incr[7] = ((-1.14564392373896*byr[13])+1.14564392373896*byl[13]+0.9682458365518543*(byr[10]+byl[10])-0.75*byr[7]+0.75*byl[7]+0.4330127018922194*(byr[5]+byl[5]))*c2; 
  incr[8] = ((-1.75*byr[8])+1.75*byl[8]+1.479019945774904*(byr[4]+byl[4])-1.14564392373896*byr[1]+1.14564392373896*byl[1]+0.6614378277661477*(byr[0]+byl[0]))*c2; 
  incr[9] = (0.6614378277661477*byr[15]-0.6614378277661477*byl[15]-0.5590169943749473*(byr[14]+byl[14])+0.4330127018922193*byr[12]-0.4330127018922193*byl[12]-0.25*(byr[9]+byl[9]))*c2; 
  incr[10] = (1.479019945774904*byr[13]-1.479019945774904*byl[13]-1.25*(byr[10]+byl[10])+0.9682458365518543*byr[7]-0.9682458365518543*byl[7]-0.5590169943749475*(byr[5]+byl[5]))*c2; 
  incr[11] = ((-1.75*byr[11])+1.75*byl[11]+1.479019945774904*(byr[6]+byl[6])-1.14564392373896*byr[3]+1.14564392373896*byl[3]+0.6614378277661477*(byr[2]+byl[2]))*c2; 
  incr[12] = ((-1.14564392373896*byr[15])+1.14564392373896*byl[15]+0.9682458365518541*(byr[14]+byl[14])-0.75*byr[12]+0.75*byl[12]+0.4330127018922193*(byr[9]+byl[9]))*c2; 
  incr[13] = ((-1.75*byr[13])+1.75*byl[13]+1.479019945774904*(byr[10]+byl[10])-1.14564392373896*byr[7]+1.14564392373896*byl[7]+0.6614378277661477*(byr[5]+byl[5]))*c2; 
  incr[14] = (1.479019945774904*byr[15]-1.479019945774904*byl[15]-1.25*(byr[14]+byl[14])+0.9682458365518541*byr[12]-0.9682458365518541*byl[12]-0.5590169943749473*(byr[9]+byl[9]))*c2; 
  incr[15] = ((-1.75*byr[15])+1.75*byl[15]+1.479019945774904*(byr[14]+byl[14])-1.14564392373896*byr[12]+1.14564392373896*byl[12]+0.6614378277661477*(byr[9]+byl[9]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 
  outEzr[4] += incr[4]*dxr1; 
  outEzr[5] += incr[5]*dxr1; 
  outEzr[6] += incr[6]*dxr1; 
  outEzr[7] += incr[7]*dxr1; 
  outEzr[8] += incr[8]*dxr1; 
  outEzr[9] += incr[9]*dxr1; 
  outEzr[10] += incr[10]*dxr1; 
  outEzr[11] += incr[11]*dxr1; 
  outEzr[12] += incr[12]*dxr1; 
  outEzr[13] += incr[13]*dxr1; 
  outEzr[14] += incr[14]*dxr1; 
  outEzr[15] += incr[15]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += incr[1]*dxl1; 
  outEzl[2] += -1.0*incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 
  outEzl[4] += -1.0*incr[4]*dxl1; 
  outEzl[5] += -1.0*incr[5]*dxl1; 
  outEzl[6] += -1.0*incr[6]*dxl1; 
  outEzl[7] += incr[7]*dxl1; 
  outEzl[8] += incr[8]*dxl1; 
  outEzl[9] += -1.0*incr[9]*dxl1; 
  outEzl[10] += -1.0*incr[10]*dxl1; 
  outEzl[11] += incr[11]*dxl1; 
  outEzl[12] += incr[12]*dxl1; 
  outEzl[13] += incr[13]*dxl1; 
  outEzl[14] += -1.0*incr[14]*dxl1; 
  outEzl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*psr[8])+0.6614378277661477*psl[8]+0.5590169943749475*(psr[4]+psl[4])-0.4330127018922193*psr[1]+0.4330127018922193*psl[1]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = (1.14564392373896*psr[8]-1.14564392373896*psl[8]-0.9682458365518543*(psr[4]+psl[4])+0.75*psr[1]-0.75*psl[1]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[2] = ((-0.6614378277661477*psr[11])+0.6614378277661477*psl[11]+0.5590169943749476*(psr[6]+psl[6])-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[2]+psl[2]))*gamma; 
  incr[3] = (1.14564392373896*psr[11]-1.14564392373896*psl[11]-0.9682458365518543*(psr[6]+psl[6])+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[2]+psl[2]))*gamma; 
  incr[4] = ((-1.479019945774904*psr[8])+1.479019945774904*psl[8]+1.25*(psr[4]+psl[4])-0.9682458365518543*psr[1]+0.9682458365518543*psl[1]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 
  incr[5] = ((-0.6614378277661477*psr[13])+0.6614378277661477*psl[13]+0.5590169943749475*(psr[10]+psl[10])-0.4330127018922194*psr[7]+0.4330127018922194*psl[7]+0.25*(psr[5]+psl[5]))*gamma; 
  incr[6] = ((-1.479019945774904*psr[11])+1.479019945774904*psl[11]+1.25*(psr[6]+psl[6])-0.9682458365518543*psr[3]+0.9682458365518543*psl[3]+0.5590169943749476*(psr[2]+psl[2]))*gamma; 
  incr[7] = (1.14564392373896*psr[13]-1.14564392373896*psl[13]-0.9682458365518543*(psr[10]+psl[10])+0.75*psr[7]-0.75*psl[7]-0.4330127018922194*(psr[5]+psl[5]))*gamma; 
  incr[8] = (1.75*psr[8]-1.75*psl[8]-1.479019945774904*(psr[4]+psl[4])+1.14564392373896*psr[1]-1.14564392373896*psl[1]-0.6614378277661477*(psr[0]+psl[0]))*gamma; 
  incr[9] = ((-0.6614378277661477*psr[15])+0.6614378277661477*psl[15]+0.5590169943749473*(psr[14]+psl[14])-0.4330127018922193*psr[12]+0.4330127018922193*psl[12]+0.25*(psr[9]+psl[9]))*gamma; 
  incr[10] = ((-1.479019945774904*psr[13])+1.479019945774904*psl[13]+1.25*(psr[10]+psl[10])-0.9682458365518543*psr[7]+0.9682458365518543*psl[7]+0.5590169943749475*(psr[5]+psl[5]))*gamma; 
  incr[11] = (1.75*psr[11]-1.75*psl[11]-1.479019945774904*(psr[6]+psl[6])+1.14564392373896*psr[3]-1.14564392373896*psl[3]-0.6614378277661477*(psr[2]+psl[2]))*gamma; 
  incr[12] = (1.14564392373896*psr[15]-1.14564392373896*psl[15]-0.9682458365518541*(psr[14]+psl[14])+0.75*psr[12]-0.75*psl[12]-0.4330127018922193*(psr[9]+psl[9]))*gamma; 
  incr[13] = (1.75*psr[13]-1.75*psl[13]-1.479019945774904*(psr[10]+psl[10])+1.14564392373896*psr[7]-1.14564392373896*psl[7]-0.6614378277661477*(psr[5]+psl[5]))*gamma; 
  incr[14] = ((-1.479019945774904*psr[15])+1.479019945774904*psl[15]+1.25*(psr[14]+psl[14])-0.9682458365518541*psr[12]+0.9682458365518541*psl[12]+0.5590169943749473*(psr[9]+psl[9]))*gamma; 
  incr[15] = (1.75*psr[15]-1.75*psl[15]-1.479019945774904*(psr[14]+psl[14])+1.14564392373896*psr[12]-1.14564392373896*psl[12]-0.6614378277661477*(psr[9]+psl[9]))*gamma; 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 
  outBxr[4] += incr[4]*dxr1; 
  outBxr[5] += incr[5]*dxr1; 
  outBxr[6] += incr[6]*dxr1; 
  outBxr[7] += incr[7]*dxr1; 
  outBxr[8] += incr[8]*dxr1; 
  outBxr[9] += incr[9]*dxr1; 
  outBxr[10] += incr[10]*dxr1; 
  outBxr[11] += incr[11]*dxr1; 
  outBxr[12] += incr[12]*dxr1; 
  outBxr[13] += incr[13]*dxr1; 
  outBxr[14] += incr[14]*dxr1; 
  outBxr[15] += incr[15]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += incr[1]*dxl1; 
  outBxl[2] += -1.0*incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 
  outBxl[4] += -1.0*incr[4]*dxl1; 
  outBxl[5] += -1.0*incr[5]*dxl1; 
  outBxl[6] += -1.0*incr[6]*dxl1; 
  outBxl[7] += incr[7]*dxl1; 
  outBxl[8] += incr[8]*dxl1; 
  outBxl[9] += -1.0*incr[9]*dxl1; 
  outBxl[10] += -1.0*incr[10]*dxl1; 
  outBxl[11] += incr[11]*dxl1; 
  outBxl[12] += incr[12]*dxl1; 
  outBxl[13] += incr[13]*dxl1; 
  outBxl[14] += -1.0*incr[14]*dxl1; 
  outBxl[15] += incr[15]*dxl1; 

 
  incr[0] = 0.6614378277661477*ezr[8]-0.6614378277661477*ezl[8]-0.5590169943749475*(ezr[4]+ezl[4])+0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1]-0.25*(ezr[0]+ezl[0]); 
  incr[1] = (-1.14564392373896*ezr[8])+1.14564392373896*ezl[8]+0.9682458365518543*(ezr[4]+ezl[4])-0.75*ezr[1]+0.75*ezl[1]+0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[2] = 0.6614378277661477*ezr[11]-0.6614378277661477*ezl[11]-0.5590169943749476*(ezr[6]+ezl[6])+0.4330127018922193*ezr[3]-0.4330127018922193*ezl[3]-0.25*(ezr[2]+ezl[2]); 
  incr[3] = (-1.14564392373896*ezr[11])+1.14564392373896*ezl[11]+0.9682458365518543*(ezr[6]+ezl[6])-0.75*ezr[3]+0.75*ezl[3]+0.4330127018922193*(ezr[2]+ezl[2]); 
  incr[4] = 1.479019945774904*ezr[8]-1.479019945774904*ezl[8]-1.25*(ezr[4]+ezl[4])+0.9682458365518543*ezr[1]-0.9682458365518543*ezl[1]-0.5590169943749475*(ezr[0]+ezl[0]); 
  incr[5] = 0.6614378277661477*ezr[13]-0.6614378277661477*ezl[13]-0.5590169943749475*(ezr[10]+ezl[10])+0.4330127018922194*ezr[7]-0.4330127018922194*ezl[7]-0.25*(ezr[5]+ezl[5]); 
  incr[6] = 1.479019945774904*ezr[11]-1.479019945774904*ezl[11]-1.25*(ezr[6]+ezl[6])+0.9682458365518543*ezr[3]-0.9682458365518543*ezl[3]-0.5590169943749476*(ezr[2]+ezl[2]); 
  incr[7] = (-1.14564392373896*ezr[13])+1.14564392373896*ezl[13]+0.9682458365518543*(ezr[10]+ezl[10])-0.75*ezr[7]+0.75*ezl[7]+0.4330127018922194*(ezr[5]+ezl[5]); 
  incr[8] = (-1.75*ezr[8])+1.75*ezl[8]+1.479019945774904*(ezr[4]+ezl[4])-1.14564392373896*ezr[1]+1.14564392373896*ezl[1]+0.6614378277661477*(ezr[0]+ezl[0]); 
  incr[9] = 0.6614378277661477*ezr[15]-0.6614378277661477*ezl[15]-0.5590169943749473*(ezr[14]+ezl[14])+0.4330127018922193*ezr[12]-0.4330127018922193*ezl[12]-0.25*(ezr[9]+ezl[9]); 
  incr[10] = 1.479019945774904*ezr[13]-1.479019945774904*ezl[13]-1.25*(ezr[10]+ezl[10])+0.9682458365518543*ezr[7]-0.9682458365518543*ezl[7]-0.5590169943749475*(ezr[5]+ezl[5]); 
  incr[11] = (-1.75*ezr[11])+1.75*ezl[11]+1.479019945774904*(ezr[6]+ezl[6])-1.14564392373896*ezr[3]+1.14564392373896*ezl[3]+0.6614378277661477*(ezr[2]+ezl[2]); 
  incr[12] = (-1.14564392373896*ezr[15])+1.14564392373896*ezl[15]+0.9682458365518541*(ezr[14]+ezl[14])-0.75*ezr[12]+0.75*ezl[12]+0.4330127018922193*(ezr[9]+ezl[9]); 
  incr[13] = (-1.75*ezr[13])+1.75*ezl[13]+1.479019945774904*(ezr[10]+ezl[10])-1.14564392373896*ezr[7]+1.14564392373896*ezl[7]+0.6614378277661477*(ezr[5]+ezl[5]); 
  incr[14] = 1.479019945774904*ezr[15]-1.479019945774904*ezl[15]-1.25*(ezr[14]+ezl[14])+0.9682458365518541*ezr[12]-0.9682458365518541*ezl[12]-0.5590169943749473*(ezr[9]+ezl[9]); 
  incr[15] = (-1.75*ezr[15])+1.75*ezl[15]+1.479019945774904*(ezr[14]+ezl[14])-1.14564392373896*ezr[12]+1.14564392373896*ezl[12]+0.6614378277661477*(ezr[9]+ezl[9]); 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 
  outByr[4] += incr[4]*dxr1; 
  outByr[5] += incr[5]*dxr1; 
  outByr[6] += incr[6]*dxr1; 
  outByr[7] += incr[7]*dxr1; 
  outByr[8] += incr[8]*dxr1; 
  outByr[9] += incr[9]*dxr1; 
  outByr[10] += incr[10]*dxr1; 
  outByr[11] += incr[11]*dxr1; 
  outByr[12] += incr[12]*dxr1; 
  outByr[13] += incr[13]*dxr1; 
  outByr[14] += incr[14]*dxr1; 
  outByr[15] += incr[15]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += incr[1]*dxl1; 
  outByl[2] += -1.0*incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 
  outByl[4] += -1.0*incr[4]*dxl1; 
  outByl[5] += -1.0*incr[5]*dxl1; 
  outByl[6] += -1.0*incr[6]*dxl1; 
  outByl[7] += incr[7]*dxl1; 
  outByl[8] += incr[8]*dxl1; 
  outByl[9] += -1.0*incr[9]*dxl1; 
  outByl[10] += -1.0*incr[10]*dxl1; 
  outByl[11] += incr[11]*dxl1; 
  outByl[12] += incr[12]*dxl1; 
  outByl[13] += incr[13]*dxl1; 
  outByl[14] += -1.0*incr[14]*dxl1; 
  outByl[15] += incr[15]*dxl1; 

 
  incr[0] = (-0.6614378277661477*eyr[8])+0.6614378277661477*eyl[8]+0.5590169943749475*(eyr[4]+eyl[4])-0.4330127018922193*eyr[1]+0.4330127018922193*eyl[1]+0.25*(eyr[0]+eyl[0]); 
  incr[1] = 1.14564392373896*eyr[8]-1.14564392373896*eyl[8]-0.9682458365518543*(eyr[4]+eyl[4])+0.75*eyr[1]-0.75*eyl[1]-0.4330127018922193*(eyr[0]+eyl[0]); 
  incr[2] = (-0.6614378277661477*eyr[11])+0.6614378277661477*eyl[11]+0.5590169943749476*(eyr[6]+eyl[6])-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[2]+eyl[2]); 
  incr[3] = 1.14564392373896*eyr[11]-1.14564392373896*eyl[11]-0.9682458365518543*(eyr[6]+eyl[6])+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[2]+eyl[2]); 
  incr[4] = (-1.479019945774904*eyr[8])+1.479019945774904*eyl[8]+1.25*(eyr[4]+eyl[4])-0.9682458365518543*eyr[1]+0.9682458365518543*eyl[1]+0.5590169943749475*(eyr[0]+eyl[0]); 
  incr[5] = (-0.6614378277661477*eyr[13])+0.6614378277661477*eyl[13]+0.5590169943749475*(eyr[10]+eyl[10])-0.4330127018922194*eyr[7]+0.4330127018922194*eyl[7]+0.25*(eyr[5]+eyl[5]); 
  incr[6] = (-1.479019945774904*eyr[11])+1.479019945774904*eyl[11]+1.25*(eyr[6]+eyl[6])-0.9682458365518543*eyr[3]+0.9682458365518543*eyl[3]+0.5590169943749476*(eyr[2]+eyl[2]); 
  incr[7] = 1.14564392373896*eyr[13]-1.14564392373896*eyl[13]-0.9682458365518543*(eyr[10]+eyl[10])+0.75*eyr[7]-0.75*eyl[7]-0.4330127018922194*(eyr[5]+eyl[5]); 
  incr[8] = 1.75*eyr[8]-1.75*eyl[8]-1.479019945774904*(eyr[4]+eyl[4])+1.14564392373896*eyr[1]-1.14564392373896*eyl[1]-0.6614378277661477*(eyr[0]+eyl[0]); 
  incr[9] = (-0.6614378277661477*eyr[15])+0.6614378277661477*eyl[15]+0.5590169943749473*(eyr[14]+eyl[14])-0.4330127018922193*eyr[12]+0.4330127018922193*eyl[12]+0.25*(eyr[9]+eyl[9]); 
  incr[10] = (-1.479019945774904*eyr[13])+1.479019945774904*eyl[13]+1.25*(eyr[10]+eyl[10])-0.9682458365518543*eyr[7]+0.9682458365518543*eyl[7]+0.5590169943749475*(eyr[5]+eyl[5]); 
  incr[11] = 1.75*eyr[11]-1.75*eyl[11]-1.479019945774904*(eyr[6]+eyl[6])+1.14564392373896*eyr[3]-1.14564392373896*eyl[3]-0.6614378277661477*(eyr[2]+eyl[2]); 
  incr[12] = 1.14564392373896*eyr[15]-1.14564392373896*eyl[15]-0.9682458365518541*(eyr[14]+eyl[14])+0.75*eyr[12]-0.75*eyl[12]-0.4330127018922193*(eyr[9]+eyl[9]); 
  incr[13] = 1.75*eyr[13]-1.75*eyl[13]-1.479019945774904*(eyr[10]+eyl[10])+1.14564392373896*eyr[7]-1.14564392373896*eyl[7]-0.6614378277661477*(eyr[5]+eyl[5]); 
  incr[14] = (-1.479019945774904*eyr[15])+1.479019945774904*eyl[15]+1.25*(eyr[14]+eyl[14])-0.9682458365518541*eyr[12]+0.9682458365518541*eyl[12]+0.5590169943749473*(eyr[9]+eyl[9]); 
  incr[15] = 1.75*eyr[15]-1.75*eyl[15]-1.479019945774904*(eyr[14]+eyl[14])+1.14564392373896*eyr[12]-1.14564392373896*eyl[12]-0.6614378277661477*(eyr[9]+eyl[9]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 
  outBzr[4] += incr[4]*dxr1; 
  outBzr[5] += incr[5]*dxr1; 
  outBzr[6] += incr[6]*dxr1; 
  outBzr[7] += incr[7]*dxr1; 
  outBzr[8] += incr[8]*dxr1; 
  outBzr[9] += incr[9]*dxr1; 
  outBzr[10] += incr[10]*dxr1; 
  outBzr[11] += incr[11]*dxr1; 
  outBzr[12] += incr[12]*dxr1; 
  outBzr[13] += incr[13]*dxr1; 
  outBzr[14] += incr[14]*dxr1; 
  outBzr[15] += incr[15]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += incr[1]*dxl1; 
  outBzl[2] += -1.0*incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 
  outBzl[4] += -1.0*incr[4]*dxl1; 
  outBzl[5] += -1.0*incr[5]*dxl1; 
  outBzl[6] += -1.0*incr[6]*dxl1; 
  outBzl[7] += incr[7]*dxl1; 
  outBzl[8] += incr[8]*dxl1; 
  outBzl[9] += -1.0*incr[9]*dxl1; 
  outBzl[10] += -1.0*incr[10]*dxl1; 
  outBzl[11] += incr[11]*dxl1; 
  outBzl[12] += incr[12]*dxl1; 
  outBzl[13] += incr[13]*dxl1; 
  outBzl[14] += -1.0*incr[14]*dxl1; 
  outBzl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*exr[8])+0.6614378277661477*exl[8]+0.5590169943749475*(exr[4]+exl[4])-0.4330127018922193*exr[1]+0.4330127018922193*exl[1]+0.25*(exr[0]+exl[0]))*chi; 
  incr[1] = (1.14564392373896*exr[8]-1.14564392373896*exl[8]-0.9682458365518543*(exr[4]+exl[4])+0.75*exr[1]-0.75*exl[1]-0.4330127018922193*(exr[0]+exl[0]))*chi; 
  incr[2] = ((-0.6614378277661477*exr[11])+0.6614378277661477*exl[11]+0.5590169943749476*(exr[6]+exl[6])-0.4330127018922193*exr[3]+0.4330127018922193*exl[3]+0.25*(exr[2]+exl[2]))*chi; 
  incr[3] = (1.14564392373896*exr[11]-1.14564392373896*exl[11]-0.9682458365518543*(exr[6]+exl[6])+0.75*exr[3]-0.75*exl[3]-0.4330127018922193*(exr[2]+exl[2]))*chi; 
  incr[4] = ((-1.479019945774904*exr[8])+1.479019945774904*exl[8]+1.25*(exr[4]+exl[4])-0.9682458365518543*exr[1]+0.9682458365518543*exl[1]+0.5590169943749475*(exr[0]+exl[0]))*chi; 
  incr[5] = ((-0.6614378277661477*exr[13])+0.6614378277661477*exl[13]+0.5590169943749475*(exr[10]+exl[10])-0.4330127018922194*exr[7]+0.4330127018922194*exl[7]+0.25*(exr[5]+exl[5]))*chi; 
  incr[6] = ((-1.479019945774904*exr[11])+1.479019945774904*exl[11]+1.25*(exr[6]+exl[6])-0.9682458365518543*exr[3]+0.9682458365518543*exl[3]+0.5590169943749476*(exr[2]+exl[2]))*chi; 
  incr[7] = (1.14564392373896*exr[13]-1.14564392373896*exl[13]-0.9682458365518543*(exr[10]+exl[10])+0.75*exr[7]-0.75*exl[7]-0.4330127018922194*(exr[5]+exl[5]))*chi; 
  incr[8] = (1.75*exr[8]-1.75*exl[8]-1.479019945774904*(exr[4]+exl[4])+1.14564392373896*exr[1]-1.14564392373896*exl[1]-0.6614378277661477*(exr[0]+exl[0]))*chi; 
  incr[9] = ((-0.6614378277661477*exr[15])+0.6614378277661477*exl[15]+0.5590169943749473*(exr[14]+exl[14])-0.4330127018922193*exr[12]+0.4330127018922193*exl[12]+0.25*(exr[9]+exl[9]))*chi; 
  incr[10] = ((-1.479019945774904*exr[13])+1.479019945774904*exl[13]+1.25*(exr[10]+exl[10])-0.9682458365518543*exr[7]+0.9682458365518543*exl[7]+0.5590169943749475*(exr[5]+exl[5]))*chi; 
  incr[11] = (1.75*exr[11]-1.75*exl[11]-1.479019945774904*(exr[6]+exl[6])+1.14564392373896*exr[3]-1.14564392373896*exl[3]-0.6614378277661477*(exr[2]+exl[2]))*chi; 
  incr[12] = (1.14564392373896*exr[15]-1.14564392373896*exl[15]-0.9682458365518541*(exr[14]+exl[14])+0.75*exr[12]-0.75*exl[12]-0.4330127018922193*(exr[9]+exl[9]))*chi; 
  incr[13] = (1.75*exr[13]-1.75*exl[13]-1.479019945774904*(exr[10]+exl[10])+1.14564392373896*exr[7]-1.14564392373896*exl[7]-0.6614378277661477*(exr[5]+exl[5]))*chi; 
  incr[14] = ((-1.479019945774904*exr[15])+1.479019945774904*exl[15]+1.25*(exr[14]+exl[14])-0.9682458365518541*exr[12]+0.9682458365518541*exl[12]+0.5590169943749473*(exr[9]+exl[9]))*chi; 
  incr[15] = (1.75*exr[15]-1.75*exl[15]-1.479019945774904*(exr[14]+exl[14])+1.14564392373896*exr[12]-1.14564392373896*exl[12]-0.6614378277661477*(exr[9]+exl[9]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 
  outPhr[4] += incr[4]*dxr1; 
  outPhr[5] += incr[5]*dxr1; 
  outPhr[6] += incr[6]*dxr1; 
  outPhr[7] += incr[7]*dxr1; 
  outPhr[8] += incr[8]*dxr1; 
  outPhr[9] += incr[9]*dxr1; 
  outPhr[10] += incr[10]*dxr1; 
  outPhr[11] += incr[11]*dxr1; 
  outPhr[12] += incr[12]*dxr1; 
  outPhr[13] += incr[13]*dxr1; 
  outPhr[14] += incr[14]*dxr1; 
  outPhr[15] += incr[15]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += incr[1]*dxl1; 
  outPhl[2] += -1.0*incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 
  outPhl[4] += -1.0*incr[4]*dxl1; 
  outPhl[5] += -1.0*incr[5]*dxl1; 
  outPhl[6] += -1.0*incr[6]*dxl1; 
  outPhl[7] += incr[7]*dxl1; 
  outPhl[8] += incr[8]*dxl1; 
  outPhl[9] += -1.0*incr[9]*dxl1; 
  outPhl[10] += -1.0*incr[10]*dxl1; 
  outPhl[11] += incr[11]*dxl1; 
  outPhl[12] += incr[12]*dxl1; 
  outPhl[13] += incr[13]*dxl1; 
  outPhl[14] += -1.0*incr[14]*dxl1; 
  outPhl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*bxr[8])+0.6614378277661477*bxl[8]+0.5590169943749475*(bxr[4]+bxl[4])-0.4330127018922193*bxr[1]+0.4330127018922193*bxl[1]+0.25*(bxr[0]+bxl[0]))*c2gamma; 
  incr[1] = (1.14564392373896*bxr[8]-1.14564392373896*bxl[8]-0.9682458365518543*(bxr[4]+bxl[4])+0.75*bxr[1]-0.75*bxl[1]-0.4330127018922193*(bxr[0]+bxl[0]))*c2gamma; 
  incr[2] = ((-0.6614378277661477*bxr[11])+0.6614378277661477*bxl[11]+0.5590169943749476*(bxr[6]+bxl[6])-0.4330127018922193*bxr[3]+0.4330127018922193*bxl[3]+0.25*(bxr[2]+bxl[2]))*c2gamma; 
  incr[3] = (1.14564392373896*bxr[11]-1.14564392373896*bxl[11]-0.9682458365518543*(bxr[6]+bxl[6])+0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[2]+bxl[2]))*c2gamma; 
  incr[4] = ((-1.479019945774904*bxr[8])+1.479019945774904*bxl[8]+1.25*(bxr[4]+bxl[4])-0.9682458365518543*bxr[1]+0.9682458365518543*bxl[1]+0.5590169943749475*(bxr[0]+bxl[0]))*c2gamma; 
  incr[5] = ((-0.6614378277661477*bxr[13])+0.6614378277661477*bxl[13]+0.5590169943749475*(bxr[10]+bxl[10])-0.4330127018922194*bxr[7]+0.4330127018922194*bxl[7]+0.25*(bxr[5]+bxl[5]))*c2gamma; 
  incr[6] = ((-1.479019945774904*bxr[11])+1.479019945774904*bxl[11]+1.25*(bxr[6]+bxl[6])-0.9682458365518543*bxr[3]+0.9682458365518543*bxl[3]+0.5590169943749476*(bxr[2]+bxl[2]))*c2gamma; 
  incr[7] = (1.14564392373896*bxr[13]-1.14564392373896*bxl[13]-0.9682458365518543*(bxr[10]+bxl[10])+0.75*bxr[7]-0.75*bxl[7]-0.4330127018922194*(bxr[5]+bxl[5]))*c2gamma; 
  incr[8] = (1.75*bxr[8]-1.75*bxl[8]-1.479019945774904*(bxr[4]+bxl[4])+1.14564392373896*bxr[1]-1.14564392373896*bxl[1]-0.6614378277661477*(bxr[0]+bxl[0]))*c2gamma; 
  incr[9] = ((-0.6614378277661477*bxr[15])+0.6614378277661477*bxl[15]+0.5590169943749473*(bxr[14]+bxl[14])-0.4330127018922193*bxr[12]+0.4330127018922193*bxl[12]+0.25*(bxr[9]+bxl[9]))*c2gamma; 
  incr[10] = ((-1.479019945774904*bxr[13])+1.479019945774904*bxl[13]+1.25*(bxr[10]+bxl[10])-0.9682458365518543*bxr[7]+0.9682458365518543*bxl[7]+0.5590169943749475*(bxr[5]+bxl[5]))*c2gamma; 
  incr[11] = (1.75*bxr[11]-1.75*bxl[11]-1.479019945774904*(bxr[6]+bxl[6])+1.14564392373896*bxr[3]-1.14564392373896*bxl[3]-0.6614378277661477*(bxr[2]+bxl[2]))*c2gamma; 
  incr[12] = (1.14564392373896*bxr[15]-1.14564392373896*bxl[15]-0.9682458365518541*(bxr[14]+bxl[14])+0.75*bxr[12]-0.75*bxl[12]-0.4330127018922193*(bxr[9]+bxl[9]))*c2gamma; 
  incr[13] = (1.75*bxr[13]-1.75*bxl[13]-1.479019945774904*(bxr[10]+bxl[10])+1.14564392373896*bxr[7]-1.14564392373896*bxl[7]-0.6614378277661477*(bxr[5]+bxl[5]))*c2gamma; 
  incr[14] = ((-1.479019945774904*bxr[15])+1.479019945774904*bxl[15]+1.25*(bxr[14]+bxl[14])-0.9682458365518541*bxr[12]+0.9682458365518541*bxl[12]+0.5590169943749473*(bxr[9]+bxl[9]))*c2gamma; 
  incr[15] = (1.75*bxr[15]-1.75*bxl[15]-1.479019945774904*(bxr[14]+bxl[14])+1.14564392373896*bxr[12]-1.14564392373896*bxl[12]-0.6614378277661477*(bxr[9]+bxl[9]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 
  outPsr[4] += incr[4]*dxr1; 
  outPsr[5] += incr[5]*dxr1; 
  outPsr[6] += incr[6]*dxr1; 
  outPsr[7] += incr[7]*dxr1; 
  outPsr[8] += incr[8]*dxr1; 
  outPsr[9] += incr[9]*dxr1; 
  outPsr[10] += incr[10]*dxr1; 
  outPsr[11] += incr[11]*dxr1; 
  outPsr[12] += incr[12]*dxr1; 
  outPsr[13] += incr[13]*dxr1; 
  outPsr[14] += incr[14]*dxr1; 
  outPsr[15] += incr[15]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += incr[1]*dxl1; 
  outPsl[2] += -1.0*incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 
  outPsl[4] += -1.0*incr[4]*dxl1; 
  outPsl[5] += -1.0*incr[5]*dxl1; 
  outPsl[6] += -1.0*incr[6]*dxl1; 
  outPsl[7] += incr[7]*dxl1; 
  outPsl[8] += incr[8]*dxl1; 
  outPsl[9] += -1.0*incr[9]*dxl1; 
  outPsl[10] += -1.0*incr[10]*dxl1; 
  outPsl[11] += incr[11]*dxl1; 
  outPsl[12] += incr[12]*dxl1; 
  outPsl[13] += incr[13]*dxl1; 
  outPsl[14] += -1.0*incr[14]*dxl1; 
  outPsl[15] += incr[15]*dxl1; 

 
  return c; 
} 
double MaxwellCentralSurf2xTensor_Y_P1(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[1]; 
  const double dxr1 = 2.0/dxr[1]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[4]; 
  const double *ezl = &ql[8]; 
  const double *bxl = &ql[12]; 
  const double *byl = &ql[16]; 
  const double *bzl = &ql[20]; 
  const double *phl = &ql[24]; 
  const double *psl = &ql[28]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[4]; 
  double *outEzl = &outl[8]; 
  double *outBxl = &outl[12]; 
  double *outByl = &outl[16]; 
  double *outBzl = &outl[20]; 
  double *outPhl = &outl[24]; 
  double *outPsl = &outl[28]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[4]; 
  const double *ezr = &qr[8]; 
  const double *bxr = &qr[12]; 
  const double *byr = &qr[16]; 
  const double *bzr = &qr[20]; 
  const double *phr = &qr[24]; 
  const double *psr = &qr[28]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[4]; 
  double *outEzr = &outr[8]; 
  double *outBxr = &outr[12]; 
  double *outByr = &outr[16]; 
  double *outBzr = &outr[20]; 
  double *outPhr = &outr[24]; 
  double *outPsr = &outr[28]; 
 
  double incr[4]; 
 
  incr[0] = (0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2]-0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = (0.4330127018922193*bzr[3]-0.4330127018922193*bzl[3]-0.25*(bzr[1]+bzl[1]))*c2; 
  incr[2] = ((-0.75*bzr[2])+0.75*bzl[2]+0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[3] = ((-0.75*bzr[3])+0.75*bzl[3]+0.4330127018922193*(bzr[1]+bzl[1]))*c2; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += -1.0*incr[1]*dxl1; 
  outExl[2] += incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*phr[2])+0.4330127018922193*phl[2]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = ((-0.4330127018922193*phr[3])+0.4330127018922193*phl[3]+0.25*(phr[1]+phl[1]))*c2chi; 
  incr[2] = (0.75*phr[2]-0.75*phl[2]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[3] = (0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[1]+phl[1]))*c2chi; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += -1.0*incr[1]*dxl1; 
  outEyl[2] += incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*bxr[2])+0.4330127018922193*bxl[2]+0.25*(bxr[0]+bxl[0]))*c2; 
  incr[1] = ((-0.4330127018922193*bxr[3])+0.4330127018922193*bxl[3]+0.25*(bxr[1]+bxl[1]))*c2; 
  incr[2] = (0.75*bxr[2]-0.75*bxl[2]-0.4330127018922193*(bxr[0]+bxl[0]))*c2; 
  incr[3] = (0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[1]+bxl[1]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += -1.0*incr[1]*dxl1; 
  outEzl[2] += incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 

 
  incr[0] = (-0.4330127018922193*ezr[2])+0.4330127018922193*ezl[2]+0.25*(ezr[0]+ezl[0]); 
  incr[1] = (-0.4330127018922193*ezr[3])+0.4330127018922193*ezl[3]+0.25*(ezr[1]+ezl[1]); 
  incr[2] = 0.75*ezr[2]-0.75*ezl[2]-0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[3] = 0.75*ezr[3]-0.75*ezl[3]-0.4330127018922193*(ezr[1]+ezl[1]); 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += -1.0*incr[1]*dxl1; 
  outBxl[2] += incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*psr[2])+0.4330127018922193*psl[2]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = ((-0.4330127018922193*psr[3])+0.4330127018922193*psl[3]+0.25*(psr[1]+psl[1]))*gamma; 
  incr[2] = (0.75*psr[2]-0.75*psl[2]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[3] = (0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[1]+psl[1]))*gamma; 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += -1.0*incr[1]*dxl1; 
  outByl[2] += incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 

 
  incr[0] = 0.4330127018922193*exr[2]-0.4330127018922193*exl[2]-0.25*(exr[0]+exl[0]); 
  incr[1] = 0.4330127018922193*exr[3]-0.4330127018922193*exl[3]-0.25*(exr[1]+exl[1]); 
  incr[2] = (-0.75*exr[2])+0.75*exl[2]+0.4330127018922193*(exr[0]+exl[0]); 
  incr[3] = (-0.75*exr[3])+0.75*exl[3]+0.4330127018922193*(exr[1]+exl[1]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += -1.0*incr[1]*dxl1; 
  outBzl[2] += incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*eyr[2])+0.4330127018922193*eyl[2]+0.25*(eyr[0]+eyl[0]))*chi; 
  incr[1] = ((-0.4330127018922193*eyr[3])+0.4330127018922193*eyl[3]+0.25*(eyr[1]+eyl[1]))*chi; 
  incr[2] = (0.75*eyr[2]-0.75*eyl[2]-0.4330127018922193*(eyr[0]+eyl[0]))*chi; 
  incr[3] = (0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[1]+eyl[1]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += -1.0*incr[1]*dxl1; 
  outPhl[2] += incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 

 
  incr[0] = ((-0.4330127018922193*byr[2])+0.4330127018922193*byl[2]+0.25*(byr[0]+byl[0]))*c2gamma; 
  incr[1] = ((-0.4330127018922193*byr[3])+0.4330127018922193*byl[3]+0.25*(byr[1]+byl[1]))*c2gamma; 
  incr[2] = (0.75*byr[2]-0.75*byl[2]-0.4330127018922193*(byr[0]+byl[0]))*c2gamma; 
  incr[3] = (0.75*byr[3]-0.75*byl[3]-0.4330127018922193*(byr[1]+byl[1]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += -1.0*incr[1]*dxl1; 
  outPsl[2] += incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 

 
  return c; 
} 
double MaxwellCentralSurf2xTensor_Y_P2(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[1]; 
  const double dxr1 = 2.0/dxr[1]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[9]; 
  const double *ezl = &ql[18]; 
  const double *bxl = &ql[27]; 
  const double *byl = &ql[36]; 
  const double *bzl = &ql[45]; 
  const double *phl = &ql[54]; 
  const double *psl = &ql[63]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[9]; 
  double *outEzl = &outl[18]; 
  double *outBxl = &outl[27]; 
  double *outByl = &outl[36]; 
  double *outBzl = &outl[45]; 
  double *outPhl = &outl[54]; 
  double *outPsl = &outl[63]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[9]; 
  const double *ezr = &qr[18]; 
  const double *bxr = &qr[27]; 
  const double *byr = &qr[36]; 
  const double *bzr = &qr[45]; 
  const double *phr = &qr[54]; 
  const double *psr = &qr[63]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[9]; 
  double *outEzr = &outr[18]; 
  double *outBxr = &outr[27]; 
  double *outByr = &outr[36]; 
  double *outBzr = &outr[45]; 
  double *outPhr = &outr[54]; 
  double *outPsr = &outr[63]; 
 
  double incr[9]; 
 
  incr[0] = ((-0.5590169943749475*(bzr[5]+bzl[5]))+0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2]-0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = ((-0.5590169943749476*(bzr[7]+bzl[7]))+0.4330127018922193*bzr[3]-0.4330127018922193*bzl[3]-0.25*(bzr[1]+bzl[1]))*c2; 
  incr[2] = (0.9682458365518543*(bzr[5]+bzl[5])-0.75*bzr[2]+0.75*bzl[2]+0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[3] = (0.9682458365518543*(bzr[7]+bzl[7])-0.75*bzr[3]+0.75*bzl[3]+0.4330127018922193*(bzr[1]+bzl[1]))*c2; 
  incr[4] = ((-0.5590169943749475*(bzr[8]+bzl[8]))+0.4330127018922194*bzr[6]-0.4330127018922194*bzl[6]-0.25*(bzr[4]+bzl[4]))*c2; 
  incr[5] = ((-1.25*(bzr[5]+bzl[5]))+0.9682458365518543*bzr[2]-0.9682458365518543*bzl[2]-0.5590169943749475*(bzr[0]+bzl[0]))*c2; 
  incr[6] = (0.9682458365518543*(bzr[8]+bzl[8])-0.75*bzr[6]+0.75*bzl[6]+0.4330127018922194*(bzr[4]+bzl[4]))*c2; 
  incr[7] = ((-1.25*(bzr[7]+bzl[7]))+0.9682458365518543*bzr[3]-0.9682458365518543*bzl[3]-0.5590169943749476*(bzr[1]+bzl[1]))*c2; 
  incr[8] = ((-1.25*(bzr[8]+bzl[8]))+0.9682458365518543*bzr[6]-0.9682458365518543*bzl[6]-0.5590169943749475*(bzr[4]+bzl[4]))*c2; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 
  outExr[4] += incr[4]*dxr1; 
  outExr[5] += incr[5]*dxr1; 
  outExr[6] += incr[6]*dxr1; 
  outExr[7] += incr[7]*dxr1; 
  outExr[8] += incr[8]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += -1.0*incr[1]*dxl1; 
  outExl[2] += incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 
  outExl[4] += -1.0*incr[4]*dxl1; 
  outExl[5] += -1.0*incr[5]*dxl1; 
  outExl[6] += incr[6]*dxl1; 
  outExl[7] += -1.0*incr[7]*dxl1; 
  outExl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(phr[5]+phl[5])-0.4330127018922193*phr[2]+0.4330127018922193*phl[2]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = (0.5590169943749476*(phr[7]+phl[7])-0.4330127018922193*phr[3]+0.4330127018922193*phl[3]+0.25*(phr[1]+phl[1]))*c2chi; 
  incr[2] = ((-0.9682458365518543*(phr[5]+phl[5]))+0.75*phr[2]-0.75*phl[2]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[3] = ((-0.9682458365518543*(phr[7]+phl[7]))+0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[1]+phl[1]))*c2chi; 
  incr[4] = (0.5590169943749475*(phr[8]+phl[8])-0.4330127018922194*phr[6]+0.4330127018922194*phl[6]+0.25*(phr[4]+phl[4]))*c2chi; 
  incr[5] = (1.25*(phr[5]+phl[5])-0.9682458365518543*phr[2]+0.9682458365518543*phl[2]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 
  incr[6] = ((-0.9682458365518543*(phr[8]+phl[8]))+0.75*phr[6]-0.75*phl[6]-0.4330127018922194*(phr[4]+phl[4]))*c2chi; 
  incr[7] = (1.25*(phr[7]+phl[7])-0.9682458365518543*phr[3]+0.9682458365518543*phl[3]+0.5590169943749476*(phr[1]+phl[1]))*c2chi; 
  incr[8] = (1.25*(phr[8]+phl[8])-0.9682458365518543*phr[6]+0.9682458365518543*phl[6]+0.5590169943749475*(phr[4]+phl[4]))*c2chi; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 
  outEyr[4] += incr[4]*dxr1; 
  outEyr[5] += incr[5]*dxr1; 
  outEyr[6] += incr[6]*dxr1; 
  outEyr[7] += incr[7]*dxr1; 
  outEyr[8] += incr[8]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += -1.0*incr[1]*dxl1; 
  outEyl[2] += incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 
  outEyl[4] += -1.0*incr[4]*dxl1; 
  outEyl[5] += -1.0*incr[5]*dxl1; 
  outEyl[6] += incr[6]*dxl1; 
  outEyl[7] += -1.0*incr[7]*dxl1; 
  outEyl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(bxr[5]+bxl[5])-0.4330127018922193*bxr[2]+0.4330127018922193*bxl[2]+0.25*(bxr[0]+bxl[0]))*c2; 
  incr[1] = (0.5590169943749476*(bxr[7]+bxl[7])-0.4330127018922193*bxr[3]+0.4330127018922193*bxl[3]+0.25*(bxr[1]+bxl[1]))*c2; 
  incr[2] = ((-0.9682458365518543*(bxr[5]+bxl[5]))+0.75*bxr[2]-0.75*bxl[2]-0.4330127018922193*(bxr[0]+bxl[0]))*c2; 
  incr[3] = ((-0.9682458365518543*(bxr[7]+bxl[7]))+0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[1]+bxl[1]))*c2; 
  incr[4] = (0.5590169943749475*(bxr[8]+bxl[8])-0.4330127018922194*bxr[6]+0.4330127018922194*bxl[6]+0.25*(bxr[4]+bxl[4]))*c2; 
  incr[5] = (1.25*(bxr[5]+bxl[5])-0.9682458365518543*bxr[2]+0.9682458365518543*bxl[2]+0.5590169943749475*(bxr[0]+bxl[0]))*c2; 
  incr[6] = ((-0.9682458365518543*(bxr[8]+bxl[8]))+0.75*bxr[6]-0.75*bxl[6]-0.4330127018922194*(bxr[4]+bxl[4]))*c2; 
  incr[7] = (1.25*(bxr[7]+bxl[7])-0.9682458365518543*bxr[3]+0.9682458365518543*bxl[3]+0.5590169943749476*(bxr[1]+bxl[1]))*c2; 
  incr[8] = (1.25*(bxr[8]+bxl[8])-0.9682458365518543*bxr[6]+0.9682458365518543*bxl[6]+0.5590169943749475*(bxr[4]+bxl[4]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 
  outEzr[4] += incr[4]*dxr1; 
  outEzr[5] += incr[5]*dxr1; 
  outEzr[6] += incr[6]*dxr1; 
  outEzr[7] += incr[7]*dxr1; 
  outEzr[8] += incr[8]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += -1.0*incr[1]*dxl1; 
  outEzl[2] += incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 
  outEzl[4] += -1.0*incr[4]*dxl1; 
  outEzl[5] += -1.0*incr[5]*dxl1; 
  outEzl[6] += incr[6]*dxl1; 
  outEzl[7] += -1.0*incr[7]*dxl1; 
  outEzl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = 0.5590169943749475*(ezr[5]+ezl[5])-0.4330127018922193*ezr[2]+0.4330127018922193*ezl[2]+0.25*(ezr[0]+ezl[0]); 
  incr[1] = 0.5590169943749476*(ezr[7]+ezl[7])-0.4330127018922193*ezr[3]+0.4330127018922193*ezl[3]+0.25*(ezr[1]+ezl[1]); 
  incr[2] = (-0.9682458365518543*(ezr[5]+ezl[5]))+0.75*ezr[2]-0.75*ezl[2]-0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[3] = (-0.9682458365518543*(ezr[7]+ezl[7]))+0.75*ezr[3]-0.75*ezl[3]-0.4330127018922193*(ezr[1]+ezl[1]); 
  incr[4] = 0.5590169943749475*(ezr[8]+ezl[8])-0.4330127018922194*ezr[6]+0.4330127018922194*ezl[6]+0.25*(ezr[4]+ezl[4]); 
  incr[5] = 1.25*(ezr[5]+ezl[5])-0.9682458365518543*ezr[2]+0.9682458365518543*ezl[2]+0.5590169943749475*(ezr[0]+ezl[0]); 
  incr[6] = (-0.9682458365518543*(ezr[8]+ezl[8]))+0.75*ezr[6]-0.75*ezl[6]-0.4330127018922194*(ezr[4]+ezl[4]); 
  incr[7] = 1.25*(ezr[7]+ezl[7])-0.9682458365518543*ezr[3]+0.9682458365518543*ezl[3]+0.5590169943749476*(ezr[1]+ezl[1]); 
  incr[8] = 1.25*(ezr[8]+ezl[8])-0.9682458365518543*ezr[6]+0.9682458365518543*ezl[6]+0.5590169943749475*(ezr[4]+ezl[4]); 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 
  outBxr[4] += incr[4]*dxr1; 
  outBxr[5] += incr[5]*dxr1; 
  outBxr[6] += incr[6]*dxr1; 
  outBxr[7] += incr[7]*dxr1; 
  outBxr[8] += incr[8]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += -1.0*incr[1]*dxl1; 
  outBxl[2] += incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 
  outBxl[4] += -1.0*incr[4]*dxl1; 
  outBxl[5] += -1.0*incr[5]*dxl1; 
  outBxl[6] += incr[6]*dxl1; 
  outBxl[7] += -1.0*incr[7]*dxl1; 
  outBxl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(psr[5]+psl[5])-0.4330127018922193*psr[2]+0.4330127018922193*psl[2]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = (0.5590169943749476*(psr[7]+psl[7])-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[1]+psl[1]))*gamma; 
  incr[2] = ((-0.9682458365518543*(psr[5]+psl[5]))+0.75*psr[2]-0.75*psl[2]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[3] = ((-0.9682458365518543*(psr[7]+psl[7]))+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[1]+psl[1]))*gamma; 
  incr[4] = (0.5590169943749475*(psr[8]+psl[8])-0.4330127018922194*psr[6]+0.4330127018922194*psl[6]+0.25*(psr[4]+psl[4]))*gamma; 
  incr[5] = (1.25*(psr[5]+psl[5])-0.9682458365518543*psr[2]+0.9682458365518543*psl[2]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 
  incr[6] = ((-0.9682458365518543*(psr[8]+psl[8]))+0.75*psr[6]-0.75*psl[6]-0.4330127018922194*(psr[4]+psl[4]))*gamma; 
  incr[7] = (1.25*(psr[7]+psl[7])-0.9682458365518543*psr[3]+0.9682458365518543*psl[3]+0.5590169943749476*(psr[1]+psl[1]))*gamma; 
  incr[8] = (1.25*(psr[8]+psl[8])-0.9682458365518543*psr[6]+0.9682458365518543*psl[6]+0.5590169943749475*(psr[4]+psl[4]))*gamma; 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 
  outByr[4] += incr[4]*dxr1; 
  outByr[5] += incr[5]*dxr1; 
  outByr[6] += incr[6]*dxr1; 
  outByr[7] += incr[7]*dxr1; 
  outByr[8] += incr[8]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += -1.0*incr[1]*dxl1; 
  outByl[2] += incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 
  outByl[4] += -1.0*incr[4]*dxl1; 
  outByl[5] += -1.0*incr[5]*dxl1; 
  outByl[6] += incr[6]*dxl1; 
  outByl[7] += -1.0*incr[7]*dxl1; 
  outByl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (-0.5590169943749475*(exr[5]+exl[5]))+0.4330127018922193*exr[2]-0.4330127018922193*exl[2]-0.25*(exr[0]+exl[0]); 
  incr[1] = (-0.5590169943749476*(exr[7]+exl[7]))+0.4330127018922193*exr[3]-0.4330127018922193*exl[3]-0.25*(exr[1]+exl[1]); 
  incr[2] = 0.9682458365518543*(exr[5]+exl[5])-0.75*exr[2]+0.75*exl[2]+0.4330127018922193*(exr[0]+exl[0]); 
  incr[3] = 0.9682458365518543*(exr[7]+exl[7])-0.75*exr[3]+0.75*exl[3]+0.4330127018922193*(exr[1]+exl[1]); 
  incr[4] = (-0.5590169943749475*(exr[8]+exl[8]))+0.4330127018922194*exr[6]-0.4330127018922194*exl[6]-0.25*(exr[4]+exl[4]); 
  incr[5] = (-1.25*(exr[5]+exl[5]))+0.9682458365518543*exr[2]-0.9682458365518543*exl[2]-0.5590169943749475*(exr[0]+exl[0]); 
  incr[6] = 0.9682458365518543*(exr[8]+exl[8])-0.75*exr[6]+0.75*exl[6]+0.4330127018922194*(exr[4]+exl[4]); 
  incr[7] = (-1.25*(exr[7]+exl[7]))+0.9682458365518543*exr[3]-0.9682458365518543*exl[3]-0.5590169943749476*(exr[1]+exl[1]); 
  incr[8] = (-1.25*(exr[8]+exl[8]))+0.9682458365518543*exr[6]-0.9682458365518543*exl[6]-0.5590169943749475*(exr[4]+exl[4]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 
  outBzr[4] += incr[4]*dxr1; 
  outBzr[5] += incr[5]*dxr1; 
  outBzr[6] += incr[6]*dxr1; 
  outBzr[7] += incr[7]*dxr1; 
  outBzr[8] += incr[8]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += -1.0*incr[1]*dxl1; 
  outBzl[2] += incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 
  outBzl[4] += -1.0*incr[4]*dxl1; 
  outBzl[5] += -1.0*incr[5]*dxl1; 
  outBzl[6] += incr[6]*dxl1; 
  outBzl[7] += -1.0*incr[7]*dxl1; 
  outBzl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(eyr[5]+eyl[5])-0.4330127018922193*eyr[2]+0.4330127018922193*eyl[2]+0.25*(eyr[0]+eyl[0]))*chi; 
  incr[1] = (0.5590169943749476*(eyr[7]+eyl[7])-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[1]+eyl[1]))*chi; 
  incr[2] = ((-0.9682458365518543*(eyr[5]+eyl[5]))+0.75*eyr[2]-0.75*eyl[2]-0.4330127018922193*(eyr[0]+eyl[0]))*chi; 
  incr[3] = ((-0.9682458365518543*(eyr[7]+eyl[7]))+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[1]+eyl[1]))*chi; 
  incr[4] = (0.5590169943749475*(eyr[8]+eyl[8])-0.4330127018922194*eyr[6]+0.4330127018922194*eyl[6]+0.25*(eyr[4]+eyl[4]))*chi; 
  incr[5] = (1.25*(eyr[5]+eyl[5])-0.9682458365518543*eyr[2]+0.9682458365518543*eyl[2]+0.5590169943749475*(eyr[0]+eyl[0]))*chi; 
  incr[6] = ((-0.9682458365518543*(eyr[8]+eyl[8]))+0.75*eyr[6]-0.75*eyl[6]-0.4330127018922194*(eyr[4]+eyl[4]))*chi; 
  incr[7] = (1.25*(eyr[7]+eyl[7])-0.9682458365518543*eyr[3]+0.9682458365518543*eyl[3]+0.5590169943749476*(eyr[1]+eyl[1]))*chi; 
  incr[8] = (1.25*(eyr[8]+eyl[8])-0.9682458365518543*eyr[6]+0.9682458365518543*eyl[6]+0.5590169943749475*(eyr[4]+eyl[4]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 
  outPhr[4] += incr[4]*dxr1; 
  outPhr[5] += incr[5]*dxr1; 
  outPhr[6] += incr[6]*dxr1; 
  outPhr[7] += incr[7]*dxr1; 
  outPhr[8] += incr[8]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += -1.0*incr[1]*dxl1; 
  outPhl[2] += incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 
  outPhl[4] += -1.0*incr[4]*dxl1; 
  outPhl[5] += -1.0*incr[5]*dxl1; 
  outPhl[6] += incr[6]*dxl1; 
  outPhl[7] += -1.0*incr[7]*dxl1; 
  outPhl[8] += -1.0*incr[8]*dxl1; 

 
  incr[0] = (0.5590169943749475*(byr[5]+byl[5])-0.4330127018922193*byr[2]+0.4330127018922193*byl[2]+0.25*(byr[0]+byl[0]))*c2gamma; 
  incr[1] = (0.5590169943749476*(byr[7]+byl[7])-0.4330127018922193*byr[3]+0.4330127018922193*byl[3]+0.25*(byr[1]+byl[1]))*c2gamma; 
  incr[2] = ((-0.9682458365518543*(byr[5]+byl[5]))+0.75*byr[2]-0.75*byl[2]-0.4330127018922193*(byr[0]+byl[0]))*c2gamma; 
  incr[3] = ((-0.9682458365518543*(byr[7]+byl[7]))+0.75*byr[3]-0.75*byl[3]-0.4330127018922193*(byr[1]+byl[1]))*c2gamma; 
  incr[4] = (0.5590169943749475*(byr[8]+byl[8])-0.4330127018922194*byr[6]+0.4330127018922194*byl[6]+0.25*(byr[4]+byl[4]))*c2gamma; 
  incr[5] = (1.25*(byr[5]+byl[5])-0.9682458365518543*byr[2]+0.9682458365518543*byl[2]+0.5590169943749475*(byr[0]+byl[0]))*c2gamma; 
  incr[6] = ((-0.9682458365518543*(byr[8]+byl[8]))+0.75*byr[6]-0.75*byl[6]-0.4330127018922194*(byr[4]+byl[4]))*c2gamma; 
  incr[7] = (1.25*(byr[7]+byl[7])-0.9682458365518543*byr[3]+0.9682458365518543*byl[3]+0.5590169943749476*(byr[1]+byl[1]))*c2gamma; 
  incr[8] = (1.25*(byr[8]+byl[8])-0.9682458365518543*byr[6]+0.9682458365518543*byl[6]+0.5590169943749475*(byr[4]+byl[4]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 
  outPsr[4] += incr[4]*dxr1; 
  outPsr[5] += incr[5]*dxr1; 
  outPsr[6] += incr[6]*dxr1; 
  outPsr[7] += incr[7]*dxr1; 
  outPsr[8] += incr[8]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += -1.0*incr[1]*dxl1; 
  outPsl[2] += incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 
  outPsl[4] += -1.0*incr[4]*dxl1; 
  outPsl[5] += -1.0*incr[5]*dxl1; 
  outPsl[6] += incr[6]*dxl1; 
  outPsl[7] += -1.0*incr[7]*dxl1; 
  outPsl[8] += -1.0*incr[8]*dxl1; 

 
  return c; 
} 
double MaxwellCentralSurf2xTensor_Y_P3(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[1]; 
  const double dxr1 = 2.0/dxr[1]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[16]; 
  const double *ezl = &ql[32]; 
  const double *bxl = &ql[48]; 
  const double *byl = &ql[64]; 
  const double *bzl = &ql[80]; 
  const double *phl = &ql[96]; 
  const double *psl = &ql[112]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[16]; 
  double *outEzl = &outl[32]; 
  double *outBxl = &outl[48]; 
  double *outByl = &outl[64]; 
  double *outBzl = &outl[80]; 
  double *outPhl = &outl[96]; 
  double *outPsl = &outl[112]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[16]; 
  const double *ezr = &qr[32]; 
  const double *bxr = &qr[48]; 
  const double *byr = &qr[64]; 
  const double *bzr = &qr[80]; 
  const double *phr = &qr[96]; 
  const double *psr = &qr[112]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[16]; 
  double *outEzr = &outr[32]; 
  double *outBxr = &outr[48]; 
  double *outByr = &outr[64]; 
  double *outBzr = &outr[80]; 
  double *outPhr = &outr[96]; 
  double *outPsr = &outr[112]; 
 
  double incr[16]; 
 
  incr[0] = (0.6614378277661477*bzr[9]-0.6614378277661477*bzl[9]-0.5590169943749475*(bzr[5]+bzl[5])+0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2]-0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = (0.6614378277661477*bzr[12]-0.6614378277661477*bzl[12]-0.5590169943749476*(bzr[7]+bzl[7])+0.4330127018922193*bzr[3]-0.4330127018922193*bzl[3]-0.25*(bzr[1]+bzl[1]))*c2; 
  incr[2] = ((-1.14564392373896*bzr[9])+1.14564392373896*bzl[9]+0.9682458365518543*(bzr[5]+bzl[5])-0.75*bzr[2]+0.75*bzl[2]+0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[3] = ((-1.14564392373896*bzr[12])+1.14564392373896*bzl[12]+0.9682458365518543*(bzr[7]+bzl[7])-0.75*bzr[3]+0.75*bzl[3]+0.4330127018922193*(bzr[1]+bzl[1]))*c2; 
  incr[4] = (0.6614378277661477*bzr[14]-0.6614378277661477*bzl[14]-0.5590169943749475*(bzr[10]+bzl[10])+0.4330127018922194*bzr[6]-0.4330127018922194*bzl[6]-0.25*(bzr[4]+bzl[4]))*c2; 
  incr[5] = (1.479019945774904*bzr[9]-1.479019945774904*bzl[9]-1.25*(bzr[5]+bzl[5])+0.9682458365518543*bzr[2]-0.9682458365518543*bzl[2]-0.5590169943749475*(bzr[0]+bzl[0]))*c2; 
  incr[6] = ((-1.14564392373896*bzr[14])+1.14564392373896*bzl[14]+0.9682458365518543*(bzr[10]+bzl[10])-0.75*bzr[6]+0.75*bzl[6]+0.4330127018922194*(bzr[4]+bzl[4]))*c2; 
  incr[7] = (1.479019945774904*bzr[12]-1.479019945774904*bzl[12]-1.25*(bzr[7]+bzl[7])+0.9682458365518543*bzr[3]-0.9682458365518543*bzl[3]-0.5590169943749476*(bzr[1]+bzl[1]))*c2; 
  incr[8] = (0.6614378277661477*bzr[15]-0.6614378277661477*bzl[15]-0.5590169943749473*(bzr[13]+bzl[13])+0.4330127018922193*bzr[11]-0.4330127018922193*bzl[11]-0.25*(bzr[8]+bzl[8]))*c2; 
  incr[9] = ((-1.75*bzr[9])+1.75*bzl[9]+1.479019945774904*(bzr[5]+bzl[5])-1.14564392373896*bzr[2]+1.14564392373896*bzl[2]+0.6614378277661477*(bzr[0]+bzl[0]))*c2; 
  incr[10] = (1.479019945774904*bzr[14]-1.479019945774904*bzl[14]-1.25*(bzr[10]+bzl[10])+0.9682458365518543*bzr[6]-0.9682458365518543*bzl[6]-0.5590169943749475*(bzr[4]+bzl[4]))*c2; 
  incr[11] = ((-1.14564392373896*bzr[15])+1.14564392373896*bzl[15]+0.9682458365518541*(bzr[13]+bzl[13])-0.75*bzr[11]+0.75*bzl[11]+0.4330127018922193*(bzr[8]+bzl[8]))*c2; 
  incr[12] = ((-1.75*bzr[12])+1.75*bzl[12]+1.479019945774904*(bzr[7]+bzl[7])-1.14564392373896*bzr[3]+1.14564392373896*bzl[3]+0.6614378277661477*(bzr[1]+bzl[1]))*c2; 
  incr[13] = (1.479019945774904*bzr[15]-1.479019945774904*bzl[15]-1.25*(bzr[13]+bzl[13])+0.9682458365518541*bzr[11]-0.9682458365518541*bzl[11]-0.5590169943749473*(bzr[8]+bzl[8]))*c2; 
  incr[14] = ((-1.75*bzr[14])+1.75*bzl[14]+1.479019945774904*(bzr[10]+bzl[10])-1.14564392373896*bzr[6]+1.14564392373896*bzl[6]+0.6614378277661477*(bzr[4]+bzl[4]))*c2; 
  incr[15] = ((-1.75*bzr[15])+1.75*bzl[15]+1.479019945774904*(bzr[13]+bzl[13])-1.14564392373896*bzr[11]+1.14564392373896*bzl[11]+0.6614378277661477*(bzr[8]+bzl[8]))*c2; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 
  outExr[4] += incr[4]*dxr1; 
  outExr[5] += incr[5]*dxr1; 
  outExr[6] += incr[6]*dxr1; 
  outExr[7] += incr[7]*dxr1; 
  outExr[8] += incr[8]*dxr1; 
  outExr[9] += incr[9]*dxr1; 
  outExr[10] += incr[10]*dxr1; 
  outExr[11] += incr[11]*dxr1; 
  outExr[12] += incr[12]*dxr1; 
  outExr[13] += incr[13]*dxr1; 
  outExr[14] += incr[14]*dxr1; 
  outExr[15] += incr[15]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += -1.0*incr[1]*dxl1; 
  outExl[2] += incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 
  outExl[4] += -1.0*incr[4]*dxl1; 
  outExl[5] += -1.0*incr[5]*dxl1; 
  outExl[6] += incr[6]*dxl1; 
  outExl[7] += -1.0*incr[7]*dxl1; 
  outExl[8] += -1.0*incr[8]*dxl1; 
  outExl[9] += incr[9]*dxl1; 
  outExl[10] += -1.0*incr[10]*dxl1; 
  outExl[11] += incr[11]*dxl1; 
  outExl[12] += incr[12]*dxl1; 
  outExl[13] += -1.0*incr[13]*dxl1; 
  outExl[14] += incr[14]*dxl1; 
  outExl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*phr[9])+0.6614378277661477*phl[9]+0.5590169943749475*(phr[5]+phl[5])-0.4330127018922193*phr[2]+0.4330127018922193*phl[2]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = ((-0.6614378277661477*phr[12])+0.6614378277661477*phl[12]+0.5590169943749476*(phr[7]+phl[7])-0.4330127018922193*phr[3]+0.4330127018922193*phl[3]+0.25*(phr[1]+phl[1]))*c2chi; 
  incr[2] = (1.14564392373896*phr[9]-1.14564392373896*phl[9]-0.9682458365518543*(phr[5]+phl[5])+0.75*phr[2]-0.75*phl[2]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[3] = (1.14564392373896*phr[12]-1.14564392373896*phl[12]-0.9682458365518543*(phr[7]+phl[7])+0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[1]+phl[1]))*c2chi; 
  incr[4] = ((-0.6614378277661477*phr[14])+0.6614378277661477*phl[14]+0.5590169943749475*(phr[10]+phl[10])-0.4330127018922194*phr[6]+0.4330127018922194*phl[6]+0.25*(phr[4]+phl[4]))*c2chi; 
  incr[5] = ((-1.479019945774904*phr[9])+1.479019945774904*phl[9]+1.25*(phr[5]+phl[5])-0.9682458365518543*phr[2]+0.9682458365518543*phl[2]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 
  incr[6] = (1.14564392373896*phr[14]-1.14564392373896*phl[14]-0.9682458365518543*(phr[10]+phl[10])+0.75*phr[6]-0.75*phl[6]-0.4330127018922194*(phr[4]+phl[4]))*c2chi; 
  incr[7] = ((-1.479019945774904*phr[12])+1.479019945774904*phl[12]+1.25*(phr[7]+phl[7])-0.9682458365518543*phr[3]+0.9682458365518543*phl[3]+0.5590169943749476*(phr[1]+phl[1]))*c2chi; 
  incr[8] = ((-0.6614378277661477*phr[15])+0.6614378277661477*phl[15]+0.5590169943749473*(phr[13]+phl[13])-0.4330127018922193*phr[11]+0.4330127018922193*phl[11]+0.25*(phr[8]+phl[8]))*c2chi; 
  incr[9] = (1.75*phr[9]-1.75*phl[9]-1.479019945774904*(phr[5]+phl[5])+1.14564392373896*phr[2]-1.14564392373896*phl[2]-0.6614378277661477*(phr[0]+phl[0]))*c2chi; 
  incr[10] = ((-1.479019945774904*phr[14])+1.479019945774904*phl[14]+1.25*(phr[10]+phl[10])-0.9682458365518543*phr[6]+0.9682458365518543*phl[6]+0.5590169943749475*(phr[4]+phl[4]))*c2chi; 
  incr[11] = (1.14564392373896*phr[15]-1.14564392373896*phl[15]-0.9682458365518541*(phr[13]+phl[13])+0.75*phr[11]-0.75*phl[11]-0.4330127018922193*(phr[8]+phl[8]))*c2chi; 
  incr[12] = (1.75*phr[12]-1.75*phl[12]-1.479019945774904*(phr[7]+phl[7])+1.14564392373896*phr[3]-1.14564392373896*phl[3]-0.6614378277661477*(phr[1]+phl[1]))*c2chi; 
  incr[13] = ((-1.479019945774904*phr[15])+1.479019945774904*phl[15]+1.25*(phr[13]+phl[13])-0.9682458365518541*phr[11]+0.9682458365518541*phl[11]+0.5590169943749473*(phr[8]+phl[8]))*c2chi; 
  incr[14] = (1.75*phr[14]-1.75*phl[14]-1.479019945774904*(phr[10]+phl[10])+1.14564392373896*phr[6]-1.14564392373896*phl[6]-0.6614378277661477*(phr[4]+phl[4]))*c2chi; 
  incr[15] = (1.75*phr[15]-1.75*phl[15]-1.479019945774904*(phr[13]+phl[13])+1.14564392373896*phr[11]-1.14564392373896*phl[11]-0.6614378277661477*(phr[8]+phl[8]))*c2chi; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 
  outEyr[4] += incr[4]*dxr1; 
  outEyr[5] += incr[5]*dxr1; 
  outEyr[6] += incr[6]*dxr1; 
  outEyr[7] += incr[7]*dxr1; 
  outEyr[8] += incr[8]*dxr1; 
  outEyr[9] += incr[9]*dxr1; 
  outEyr[10] += incr[10]*dxr1; 
  outEyr[11] += incr[11]*dxr1; 
  outEyr[12] += incr[12]*dxr1; 
  outEyr[13] += incr[13]*dxr1; 
  outEyr[14] += incr[14]*dxr1; 
  outEyr[15] += incr[15]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += -1.0*incr[1]*dxl1; 
  outEyl[2] += incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 
  outEyl[4] += -1.0*incr[4]*dxl1; 
  outEyl[5] += -1.0*incr[5]*dxl1; 
  outEyl[6] += incr[6]*dxl1; 
  outEyl[7] += -1.0*incr[7]*dxl1; 
  outEyl[8] += -1.0*incr[8]*dxl1; 
  outEyl[9] += incr[9]*dxl1; 
  outEyl[10] += -1.0*incr[10]*dxl1; 
  outEyl[11] += incr[11]*dxl1; 
  outEyl[12] += incr[12]*dxl1; 
  outEyl[13] += -1.0*incr[13]*dxl1; 
  outEyl[14] += incr[14]*dxl1; 
  outEyl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*bxr[9])+0.6614378277661477*bxl[9]+0.5590169943749475*(bxr[5]+bxl[5])-0.4330127018922193*bxr[2]+0.4330127018922193*bxl[2]+0.25*(bxr[0]+bxl[0]))*c2; 
  incr[1] = ((-0.6614378277661477*bxr[12])+0.6614378277661477*bxl[12]+0.5590169943749476*(bxr[7]+bxl[7])-0.4330127018922193*bxr[3]+0.4330127018922193*bxl[3]+0.25*(bxr[1]+bxl[1]))*c2; 
  incr[2] = (1.14564392373896*bxr[9]-1.14564392373896*bxl[9]-0.9682458365518543*(bxr[5]+bxl[5])+0.75*bxr[2]-0.75*bxl[2]-0.4330127018922193*(bxr[0]+bxl[0]))*c2; 
  incr[3] = (1.14564392373896*bxr[12]-1.14564392373896*bxl[12]-0.9682458365518543*(bxr[7]+bxl[7])+0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[1]+bxl[1]))*c2; 
  incr[4] = ((-0.6614378277661477*bxr[14])+0.6614378277661477*bxl[14]+0.5590169943749475*(bxr[10]+bxl[10])-0.4330127018922194*bxr[6]+0.4330127018922194*bxl[6]+0.25*(bxr[4]+bxl[4]))*c2; 
  incr[5] = ((-1.479019945774904*bxr[9])+1.479019945774904*bxl[9]+1.25*(bxr[5]+bxl[5])-0.9682458365518543*bxr[2]+0.9682458365518543*bxl[2]+0.5590169943749475*(bxr[0]+bxl[0]))*c2; 
  incr[6] = (1.14564392373896*bxr[14]-1.14564392373896*bxl[14]-0.9682458365518543*(bxr[10]+bxl[10])+0.75*bxr[6]-0.75*bxl[6]-0.4330127018922194*(bxr[4]+bxl[4]))*c2; 
  incr[7] = ((-1.479019945774904*bxr[12])+1.479019945774904*bxl[12]+1.25*(bxr[7]+bxl[7])-0.9682458365518543*bxr[3]+0.9682458365518543*bxl[3]+0.5590169943749476*(bxr[1]+bxl[1]))*c2; 
  incr[8] = ((-0.6614378277661477*bxr[15])+0.6614378277661477*bxl[15]+0.5590169943749473*(bxr[13]+bxl[13])-0.4330127018922193*bxr[11]+0.4330127018922193*bxl[11]+0.25*(bxr[8]+bxl[8]))*c2; 
  incr[9] = (1.75*bxr[9]-1.75*bxl[9]-1.479019945774904*(bxr[5]+bxl[5])+1.14564392373896*bxr[2]-1.14564392373896*bxl[2]-0.6614378277661477*(bxr[0]+bxl[0]))*c2; 
  incr[10] = ((-1.479019945774904*bxr[14])+1.479019945774904*bxl[14]+1.25*(bxr[10]+bxl[10])-0.9682458365518543*bxr[6]+0.9682458365518543*bxl[6]+0.5590169943749475*(bxr[4]+bxl[4]))*c2; 
  incr[11] = (1.14564392373896*bxr[15]-1.14564392373896*bxl[15]-0.9682458365518541*(bxr[13]+bxl[13])+0.75*bxr[11]-0.75*bxl[11]-0.4330127018922193*(bxr[8]+bxl[8]))*c2; 
  incr[12] = (1.75*bxr[12]-1.75*bxl[12]-1.479019945774904*(bxr[7]+bxl[7])+1.14564392373896*bxr[3]-1.14564392373896*bxl[3]-0.6614378277661477*(bxr[1]+bxl[1]))*c2; 
  incr[13] = ((-1.479019945774904*bxr[15])+1.479019945774904*bxl[15]+1.25*(bxr[13]+bxl[13])-0.9682458365518541*bxr[11]+0.9682458365518541*bxl[11]+0.5590169943749473*(bxr[8]+bxl[8]))*c2; 
  incr[14] = (1.75*bxr[14]-1.75*bxl[14]-1.479019945774904*(bxr[10]+bxl[10])+1.14564392373896*bxr[6]-1.14564392373896*bxl[6]-0.6614378277661477*(bxr[4]+bxl[4]))*c2; 
  incr[15] = (1.75*bxr[15]-1.75*bxl[15]-1.479019945774904*(bxr[13]+bxl[13])+1.14564392373896*bxr[11]-1.14564392373896*bxl[11]-0.6614378277661477*(bxr[8]+bxl[8]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 
  outEzr[4] += incr[4]*dxr1; 
  outEzr[5] += incr[5]*dxr1; 
  outEzr[6] += incr[6]*dxr1; 
  outEzr[7] += incr[7]*dxr1; 
  outEzr[8] += incr[8]*dxr1; 
  outEzr[9] += incr[9]*dxr1; 
  outEzr[10] += incr[10]*dxr1; 
  outEzr[11] += incr[11]*dxr1; 
  outEzr[12] += incr[12]*dxr1; 
  outEzr[13] += incr[13]*dxr1; 
  outEzr[14] += incr[14]*dxr1; 
  outEzr[15] += incr[15]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += -1.0*incr[1]*dxl1; 
  outEzl[2] += incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 
  outEzl[4] += -1.0*incr[4]*dxl1; 
  outEzl[5] += -1.0*incr[5]*dxl1; 
  outEzl[6] += incr[6]*dxl1; 
  outEzl[7] += -1.0*incr[7]*dxl1; 
  outEzl[8] += -1.0*incr[8]*dxl1; 
  outEzl[9] += incr[9]*dxl1; 
  outEzl[10] += -1.0*incr[10]*dxl1; 
  outEzl[11] += incr[11]*dxl1; 
  outEzl[12] += incr[12]*dxl1; 
  outEzl[13] += -1.0*incr[13]*dxl1; 
  outEzl[14] += incr[14]*dxl1; 
  outEzl[15] += incr[15]*dxl1; 

 
  incr[0] = (-0.6614378277661477*ezr[9])+0.6614378277661477*ezl[9]+0.5590169943749475*(ezr[5]+ezl[5])-0.4330127018922193*ezr[2]+0.4330127018922193*ezl[2]+0.25*(ezr[0]+ezl[0]); 
  incr[1] = (-0.6614378277661477*ezr[12])+0.6614378277661477*ezl[12]+0.5590169943749476*(ezr[7]+ezl[7])-0.4330127018922193*ezr[3]+0.4330127018922193*ezl[3]+0.25*(ezr[1]+ezl[1]); 
  incr[2] = 1.14564392373896*ezr[9]-1.14564392373896*ezl[9]-0.9682458365518543*(ezr[5]+ezl[5])+0.75*ezr[2]-0.75*ezl[2]-0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[3] = 1.14564392373896*ezr[12]-1.14564392373896*ezl[12]-0.9682458365518543*(ezr[7]+ezl[7])+0.75*ezr[3]-0.75*ezl[3]-0.4330127018922193*(ezr[1]+ezl[1]); 
  incr[4] = (-0.6614378277661477*ezr[14])+0.6614378277661477*ezl[14]+0.5590169943749475*(ezr[10]+ezl[10])-0.4330127018922194*ezr[6]+0.4330127018922194*ezl[6]+0.25*(ezr[4]+ezl[4]); 
  incr[5] = (-1.479019945774904*ezr[9])+1.479019945774904*ezl[9]+1.25*(ezr[5]+ezl[5])-0.9682458365518543*ezr[2]+0.9682458365518543*ezl[2]+0.5590169943749475*(ezr[0]+ezl[0]); 
  incr[6] = 1.14564392373896*ezr[14]-1.14564392373896*ezl[14]-0.9682458365518543*(ezr[10]+ezl[10])+0.75*ezr[6]-0.75*ezl[6]-0.4330127018922194*(ezr[4]+ezl[4]); 
  incr[7] = (-1.479019945774904*ezr[12])+1.479019945774904*ezl[12]+1.25*(ezr[7]+ezl[7])-0.9682458365518543*ezr[3]+0.9682458365518543*ezl[3]+0.5590169943749476*(ezr[1]+ezl[1]); 
  incr[8] = (-0.6614378277661477*ezr[15])+0.6614378277661477*ezl[15]+0.5590169943749473*(ezr[13]+ezl[13])-0.4330127018922193*ezr[11]+0.4330127018922193*ezl[11]+0.25*(ezr[8]+ezl[8]); 
  incr[9] = 1.75*ezr[9]-1.75*ezl[9]-1.479019945774904*(ezr[5]+ezl[5])+1.14564392373896*ezr[2]-1.14564392373896*ezl[2]-0.6614378277661477*(ezr[0]+ezl[0]); 
  incr[10] = (-1.479019945774904*ezr[14])+1.479019945774904*ezl[14]+1.25*(ezr[10]+ezl[10])-0.9682458365518543*ezr[6]+0.9682458365518543*ezl[6]+0.5590169943749475*(ezr[4]+ezl[4]); 
  incr[11] = 1.14564392373896*ezr[15]-1.14564392373896*ezl[15]-0.9682458365518541*(ezr[13]+ezl[13])+0.75*ezr[11]-0.75*ezl[11]-0.4330127018922193*(ezr[8]+ezl[8]); 
  incr[12] = 1.75*ezr[12]-1.75*ezl[12]-1.479019945774904*(ezr[7]+ezl[7])+1.14564392373896*ezr[3]-1.14564392373896*ezl[3]-0.6614378277661477*(ezr[1]+ezl[1]); 
  incr[13] = (-1.479019945774904*ezr[15])+1.479019945774904*ezl[15]+1.25*(ezr[13]+ezl[13])-0.9682458365518541*ezr[11]+0.9682458365518541*ezl[11]+0.5590169943749473*(ezr[8]+ezl[8]); 
  incr[14] = 1.75*ezr[14]-1.75*ezl[14]-1.479019945774904*(ezr[10]+ezl[10])+1.14564392373896*ezr[6]-1.14564392373896*ezl[6]-0.6614378277661477*(ezr[4]+ezl[4]); 
  incr[15] = 1.75*ezr[15]-1.75*ezl[15]-1.479019945774904*(ezr[13]+ezl[13])+1.14564392373896*ezr[11]-1.14564392373896*ezl[11]-0.6614378277661477*(ezr[8]+ezl[8]); 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 
  outBxr[4] += incr[4]*dxr1; 
  outBxr[5] += incr[5]*dxr1; 
  outBxr[6] += incr[6]*dxr1; 
  outBxr[7] += incr[7]*dxr1; 
  outBxr[8] += incr[8]*dxr1; 
  outBxr[9] += incr[9]*dxr1; 
  outBxr[10] += incr[10]*dxr1; 
  outBxr[11] += incr[11]*dxr1; 
  outBxr[12] += incr[12]*dxr1; 
  outBxr[13] += incr[13]*dxr1; 
  outBxr[14] += incr[14]*dxr1; 
  outBxr[15] += incr[15]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += -1.0*incr[1]*dxl1; 
  outBxl[2] += incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 
  outBxl[4] += -1.0*incr[4]*dxl1; 
  outBxl[5] += -1.0*incr[5]*dxl1; 
  outBxl[6] += incr[6]*dxl1; 
  outBxl[7] += -1.0*incr[7]*dxl1; 
  outBxl[8] += -1.0*incr[8]*dxl1; 
  outBxl[9] += incr[9]*dxl1; 
  outBxl[10] += -1.0*incr[10]*dxl1; 
  outBxl[11] += incr[11]*dxl1; 
  outBxl[12] += incr[12]*dxl1; 
  outBxl[13] += -1.0*incr[13]*dxl1; 
  outBxl[14] += incr[14]*dxl1; 
  outBxl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*psr[9])+0.6614378277661477*psl[9]+0.5590169943749475*(psr[5]+psl[5])-0.4330127018922193*psr[2]+0.4330127018922193*psl[2]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = ((-0.6614378277661477*psr[12])+0.6614378277661477*psl[12]+0.5590169943749476*(psr[7]+psl[7])-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[1]+psl[1]))*gamma; 
  incr[2] = (1.14564392373896*psr[9]-1.14564392373896*psl[9]-0.9682458365518543*(psr[5]+psl[5])+0.75*psr[2]-0.75*psl[2]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[3] = (1.14564392373896*psr[12]-1.14564392373896*psl[12]-0.9682458365518543*(psr[7]+psl[7])+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[1]+psl[1]))*gamma; 
  incr[4] = ((-0.6614378277661477*psr[14])+0.6614378277661477*psl[14]+0.5590169943749475*(psr[10]+psl[10])-0.4330127018922194*psr[6]+0.4330127018922194*psl[6]+0.25*(psr[4]+psl[4]))*gamma; 
  incr[5] = ((-1.479019945774904*psr[9])+1.479019945774904*psl[9]+1.25*(psr[5]+psl[5])-0.9682458365518543*psr[2]+0.9682458365518543*psl[2]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 
  incr[6] = (1.14564392373896*psr[14]-1.14564392373896*psl[14]-0.9682458365518543*(psr[10]+psl[10])+0.75*psr[6]-0.75*psl[6]-0.4330127018922194*(psr[4]+psl[4]))*gamma; 
  incr[7] = ((-1.479019945774904*psr[12])+1.479019945774904*psl[12]+1.25*(psr[7]+psl[7])-0.9682458365518543*psr[3]+0.9682458365518543*psl[3]+0.5590169943749476*(psr[1]+psl[1]))*gamma; 
  incr[8] = ((-0.6614378277661477*psr[15])+0.6614378277661477*psl[15]+0.5590169943749473*(psr[13]+psl[13])-0.4330127018922193*psr[11]+0.4330127018922193*psl[11]+0.25*(psr[8]+psl[8]))*gamma; 
  incr[9] = (1.75*psr[9]-1.75*psl[9]-1.479019945774904*(psr[5]+psl[5])+1.14564392373896*psr[2]-1.14564392373896*psl[2]-0.6614378277661477*(psr[0]+psl[0]))*gamma; 
  incr[10] = ((-1.479019945774904*psr[14])+1.479019945774904*psl[14]+1.25*(psr[10]+psl[10])-0.9682458365518543*psr[6]+0.9682458365518543*psl[6]+0.5590169943749475*(psr[4]+psl[4]))*gamma; 
  incr[11] = (1.14564392373896*psr[15]-1.14564392373896*psl[15]-0.9682458365518541*(psr[13]+psl[13])+0.75*psr[11]-0.75*psl[11]-0.4330127018922193*(psr[8]+psl[8]))*gamma; 
  incr[12] = (1.75*psr[12]-1.75*psl[12]-1.479019945774904*(psr[7]+psl[7])+1.14564392373896*psr[3]-1.14564392373896*psl[3]-0.6614378277661477*(psr[1]+psl[1]))*gamma; 
  incr[13] = ((-1.479019945774904*psr[15])+1.479019945774904*psl[15]+1.25*(psr[13]+psl[13])-0.9682458365518541*psr[11]+0.9682458365518541*psl[11]+0.5590169943749473*(psr[8]+psl[8]))*gamma; 
  incr[14] = (1.75*psr[14]-1.75*psl[14]-1.479019945774904*(psr[10]+psl[10])+1.14564392373896*psr[6]-1.14564392373896*psl[6]-0.6614378277661477*(psr[4]+psl[4]))*gamma; 
  incr[15] = (1.75*psr[15]-1.75*psl[15]-1.479019945774904*(psr[13]+psl[13])+1.14564392373896*psr[11]-1.14564392373896*psl[11]-0.6614378277661477*(psr[8]+psl[8]))*gamma; 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 
  outByr[4] += incr[4]*dxr1; 
  outByr[5] += incr[5]*dxr1; 
  outByr[6] += incr[6]*dxr1; 
  outByr[7] += incr[7]*dxr1; 
  outByr[8] += incr[8]*dxr1; 
  outByr[9] += incr[9]*dxr1; 
  outByr[10] += incr[10]*dxr1; 
  outByr[11] += incr[11]*dxr1; 
  outByr[12] += incr[12]*dxr1; 
  outByr[13] += incr[13]*dxr1; 
  outByr[14] += incr[14]*dxr1; 
  outByr[15] += incr[15]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += -1.0*incr[1]*dxl1; 
  outByl[2] += incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 
  outByl[4] += -1.0*incr[4]*dxl1; 
  outByl[5] += -1.0*incr[5]*dxl1; 
  outByl[6] += incr[6]*dxl1; 
  outByl[7] += -1.0*incr[7]*dxl1; 
  outByl[8] += -1.0*incr[8]*dxl1; 
  outByl[9] += incr[9]*dxl1; 
  outByl[10] += -1.0*incr[10]*dxl1; 
  outByl[11] += incr[11]*dxl1; 
  outByl[12] += incr[12]*dxl1; 
  outByl[13] += -1.0*incr[13]*dxl1; 
  outByl[14] += incr[14]*dxl1; 
  outByl[15] += incr[15]*dxl1; 

 
  incr[0] = 0.6614378277661477*exr[9]-0.6614378277661477*exl[9]-0.5590169943749475*(exr[5]+exl[5])+0.4330127018922193*exr[2]-0.4330127018922193*exl[2]-0.25*(exr[0]+exl[0]); 
  incr[1] = 0.6614378277661477*exr[12]-0.6614378277661477*exl[12]-0.5590169943749476*(exr[7]+exl[7])+0.4330127018922193*exr[3]-0.4330127018922193*exl[3]-0.25*(exr[1]+exl[1]); 
  incr[2] = (-1.14564392373896*exr[9])+1.14564392373896*exl[9]+0.9682458365518543*(exr[5]+exl[5])-0.75*exr[2]+0.75*exl[2]+0.4330127018922193*(exr[0]+exl[0]); 
  incr[3] = (-1.14564392373896*exr[12])+1.14564392373896*exl[12]+0.9682458365518543*(exr[7]+exl[7])-0.75*exr[3]+0.75*exl[3]+0.4330127018922193*(exr[1]+exl[1]); 
  incr[4] = 0.6614378277661477*exr[14]-0.6614378277661477*exl[14]-0.5590169943749475*(exr[10]+exl[10])+0.4330127018922194*exr[6]-0.4330127018922194*exl[6]-0.25*(exr[4]+exl[4]); 
  incr[5] = 1.479019945774904*exr[9]-1.479019945774904*exl[9]-1.25*(exr[5]+exl[5])+0.9682458365518543*exr[2]-0.9682458365518543*exl[2]-0.5590169943749475*(exr[0]+exl[0]); 
  incr[6] = (-1.14564392373896*exr[14])+1.14564392373896*exl[14]+0.9682458365518543*(exr[10]+exl[10])-0.75*exr[6]+0.75*exl[6]+0.4330127018922194*(exr[4]+exl[4]); 
  incr[7] = 1.479019945774904*exr[12]-1.479019945774904*exl[12]-1.25*(exr[7]+exl[7])+0.9682458365518543*exr[3]-0.9682458365518543*exl[3]-0.5590169943749476*(exr[1]+exl[1]); 
  incr[8] = 0.6614378277661477*exr[15]-0.6614378277661477*exl[15]-0.5590169943749473*(exr[13]+exl[13])+0.4330127018922193*exr[11]-0.4330127018922193*exl[11]-0.25*(exr[8]+exl[8]); 
  incr[9] = (-1.75*exr[9])+1.75*exl[9]+1.479019945774904*(exr[5]+exl[5])-1.14564392373896*exr[2]+1.14564392373896*exl[2]+0.6614378277661477*(exr[0]+exl[0]); 
  incr[10] = 1.479019945774904*exr[14]-1.479019945774904*exl[14]-1.25*(exr[10]+exl[10])+0.9682458365518543*exr[6]-0.9682458365518543*exl[6]-0.5590169943749475*(exr[4]+exl[4]); 
  incr[11] = (-1.14564392373896*exr[15])+1.14564392373896*exl[15]+0.9682458365518541*(exr[13]+exl[13])-0.75*exr[11]+0.75*exl[11]+0.4330127018922193*(exr[8]+exl[8]); 
  incr[12] = (-1.75*exr[12])+1.75*exl[12]+1.479019945774904*(exr[7]+exl[7])-1.14564392373896*exr[3]+1.14564392373896*exl[3]+0.6614378277661477*(exr[1]+exl[1]); 
  incr[13] = 1.479019945774904*exr[15]-1.479019945774904*exl[15]-1.25*(exr[13]+exl[13])+0.9682458365518541*exr[11]-0.9682458365518541*exl[11]-0.5590169943749473*(exr[8]+exl[8]); 
  incr[14] = (-1.75*exr[14])+1.75*exl[14]+1.479019945774904*(exr[10]+exl[10])-1.14564392373896*exr[6]+1.14564392373896*exl[6]+0.6614378277661477*(exr[4]+exl[4]); 
  incr[15] = (-1.75*exr[15])+1.75*exl[15]+1.479019945774904*(exr[13]+exl[13])-1.14564392373896*exr[11]+1.14564392373896*exl[11]+0.6614378277661477*(exr[8]+exl[8]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 
  outBzr[4] += incr[4]*dxr1; 
  outBzr[5] += incr[5]*dxr1; 
  outBzr[6] += incr[6]*dxr1; 
  outBzr[7] += incr[7]*dxr1; 
  outBzr[8] += incr[8]*dxr1; 
  outBzr[9] += incr[9]*dxr1; 
  outBzr[10] += incr[10]*dxr1; 
  outBzr[11] += incr[11]*dxr1; 
  outBzr[12] += incr[12]*dxr1; 
  outBzr[13] += incr[13]*dxr1; 
  outBzr[14] += incr[14]*dxr1; 
  outBzr[15] += incr[15]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += -1.0*incr[1]*dxl1; 
  outBzl[2] += incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 
  outBzl[4] += -1.0*incr[4]*dxl1; 
  outBzl[5] += -1.0*incr[5]*dxl1; 
  outBzl[6] += incr[6]*dxl1; 
  outBzl[7] += -1.0*incr[7]*dxl1; 
  outBzl[8] += -1.0*incr[8]*dxl1; 
  outBzl[9] += incr[9]*dxl1; 
  outBzl[10] += -1.0*incr[10]*dxl1; 
  outBzl[11] += incr[11]*dxl1; 
  outBzl[12] += incr[12]*dxl1; 
  outBzl[13] += -1.0*incr[13]*dxl1; 
  outBzl[14] += incr[14]*dxl1; 
  outBzl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*eyr[9])+0.6614378277661477*eyl[9]+0.5590169943749475*(eyr[5]+eyl[5])-0.4330127018922193*eyr[2]+0.4330127018922193*eyl[2]+0.25*(eyr[0]+eyl[0]))*chi; 
  incr[1] = ((-0.6614378277661477*eyr[12])+0.6614378277661477*eyl[12]+0.5590169943749476*(eyr[7]+eyl[7])-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[1]+eyl[1]))*chi; 
  incr[2] = (1.14564392373896*eyr[9]-1.14564392373896*eyl[9]-0.9682458365518543*(eyr[5]+eyl[5])+0.75*eyr[2]-0.75*eyl[2]-0.4330127018922193*(eyr[0]+eyl[0]))*chi; 
  incr[3] = (1.14564392373896*eyr[12]-1.14564392373896*eyl[12]-0.9682458365518543*(eyr[7]+eyl[7])+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[1]+eyl[1]))*chi; 
  incr[4] = ((-0.6614378277661477*eyr[14])+0.6614378277661477*eyl[14]+0.5590169943749475*(eyr[10]+eyl[10])-0.4330127018922194*eyr[6]+0.4330127018922194*eyl[6]+0.25*(eyr[4]+eyl[4]))*chi; 
  incr[5] = ((-1.479019945774904*eyr[9])+1.479019945774904*eyl[9]+1.25*(eyr[5]+eyl[5])-0.9682458365518543*eyr[2]+0.9682458365518543*eyl[2]+0.5590169943749475*(eyr[0]+eyl[0]))*chi; 
  incr[6] = (1.14564392373896*eyr[14]-1.14564392373896*eyl[14]-0.9682458365518543*(eyr[10]+eyl[10])+0.75*eyr[6]-0.75*eyl[6]-0.4330127018922194*(eyr[4]+eyl[4]))*chi; 
  incr[7] = ((-1.479019945774904*eyr[12])+1.479019945774904*eyl[12]+1.25*(eyr[7]+eyl[7])-0.9682458365518543*eyr[3]+0.9682458365518543*eyl[3]+0.5590169943749476*(eyr[1]+eyl[1]))*chi; 
  incr[8] = ((-0.6614378277661477*eyr[15])+0.6614378277661477*eyl[15]+0.5590169943749473*(eyr[13]+eyl[13])-0.4330127018922193*eyr[11]+0.4330127018922193*eyl[11]+0.25*(eyr[8]+eyl[8]))*chi; 
  incr[9] = (1.75*eyr[9]-1.75*eyl[9]-1.479019945774904*(eyr[5]+eyl[5])+1.14564392373896*eyr[2]-1.14564392373896*eyl[2]-0.6614378277661477*(eyr[0]+eyl[0]))*chi; 
  incr[10] = ((-1.479019945774904*eyr[14])+1.479019945774904*eyl[14]+1.25*(eyr[10]+eyl[10])-0.9682458365518543*eyr[6]+0.9682458365518543*eyl[6]+0.5590169943749475*(eyr[4]+eyl[4]))*chi; 
  incr[11] = (1.14564392373896*eyr[15]-1.14564392373896*eyl[15]-0.9682458365518541*(eyr[13]+eyl[13])+0.75*eyr[11]-0.75*eyl[11]-0.4330127018922193*(eyr[8]+eyl[8]))*chi; 
  incr[12] = (1.75*eyr[12]-1.75*eyl[12]-1.479019945774904*(eyr[7]+eyl[7])+1.14564392373896*eyr[3]-1.14564392373896*eyl[3]-0.6614378277661477*(eyr[1]+eyl[1]))*chi; 
  incr[13] = ((-1.479019945774904*eyr[15])+1.479019945774904*eyl[15]+1.25*(eyr[13]+eyl[13])-0.9682458365518541*eyr[11]+0.9682458365518541*eyl[11]+0.5590169943749473*(eyr[8]+eyl[8]))*chi; 
  incr[14] = (1.75*eyr[14]-1.75*eyl[14]-1.479019945774904*(eyr[10]+eyl[10])+1.14564392373896*eyr[6]-1.14564392373896*eyl[6]-0.6614378277661477*(eyr[4]+eyl[4]))*chi; 
  incr[15] = (1.75*eyr[15]-1.75*eyl[15]-1.479019945774904*(eyr[13]+eyl[13])+1.14564392373896*eyr[11]-1.14564392373896*eyl[11]-0.6614378277661477*(eyr[8]+eyl[8]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 
  outPhr[4] += incr[4]*dxr1; 
  outPhr[5] += incr[5]*dxr1; 
  outPhr[6] += incr[6]*dxr1; 
  outPhr[7] += incr[7]*dxr1; 
  outPhr[8] += incr[8]*dxr1; 
  outPhr[9] += incr[9]*dxr1; 
  outPhr[10] += incr[10]*dxr1; 
  outPhr[11] += incr[11]*dxr1; 
  outPhr[12] += incr[12]*dxr1; 
  outPhr[13] += incr[13]*dxr1; 
  outPhr[14] += incr[14]*dxr1; 
  outPhr[15] += incr[15]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += -1.0*incr[1]*dxl1; 
  outPhl[2] += incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 
  outPhl[4] += -1.0*incr[4]*dxl1; 
  outPhl[5] += -1.0*incr[5]*dxl1; 
  outPhl[6] += incr[6]*dxl1; 
  outPhl[7] += -1.0*incr[7]*dxl1; 
  outPhl[8] += -1.0*incr[8]*dxl1; 
  outPhl[9] += incr[9]*dxl1; 
  outPhl[10] += -1.0*incr[10]*dxl1; 
  outPhl[11] += incr[11]*dxl1; 
  outPhl[12] += incr[12]*dxl1; 
  outPhl[13] += -1.0*incr[13]*dxl1; 
  outPhl[14] += incr[14]*dxl1; 
  outPhl[15] += incr[15]*dxl1; 

 
  incr[0] = ((-0.6614378277661477*byr[9])+0.6614378277661477*byl[9]+0.5590169943749475*(byr[5]+byl[5])-0.4330127018922193*byr[2]+0.4330127018922193*byl[2]+0.25*(byr[0]+byl[0]))*c2gamma; 
  incr[1] = ((-0.6614378277661477*byr[12])+0.6614378277661477*byl[12]+0.5590169943749476*(byr[7]+byl[7])-0.4330127018922193*byr[3]+0.4330127018922193*byl[3]+0.25*(byr[1]+byl[1]))*c2gamma; 
  incr[2] = (1.14564392373896*byr[9]-1.14564392373896*byl[9]-0.9682458365518543*(byr[5]+byl[5])+0.75*byr[2]-0.75*byl[2]-0.4330127018922193*(byr[0]+byl[0]))*c2gamma; 
  incr[3] = (1.14564392373896*byr[12]-1.14564392373896*byl[12]-0.9682458365518543*(byr[7]+byl[7])+0.75*byr[3]-0.75*byl[3]-0.4330127018922193*(byr[1]+byl[1]))*c2gamma; 
  incr[4] = ((-0.6614378277661477*byr[14])+0.6614378277661477*byl[14]+0.5590169943749475*(byr[10]+byl[10])-0.4330127018922194*byr[6]+0.4330127018922194*byl[6]+0.25*(byr[4]+byl[4]))*c2gamma; 
  incr[5] = ((-1.479019945774904*byr[9])+1.479019945774904*byl[9]+1.25*(byr[5]+byl[5])-0.9682458365518543*byr[2]+0.9682458365518543*byl[2]+0.5590169943749475*(byr[0]+byl[0]))*c2gamma; 
  incr[6] = (1.14564392373896*byr[14]-1.14564392373896*byl[14]-0.9682458365518543*(byr[10]+byl[10])+0.75*byr[6]-0.75*byl[6]-0.4330127018922194*(byr[4]+byl[4]))*c2gamma; 
  incr[7] = ((-1.479019945774904*byr[12])+1.479019945774904*byl[12]+1.25*(byr[7]+byl[7])-0.9682458365518543*byr[3]+0.9682458365518543*byl[3]+0.5590169943749476*(byr[1]+byl[1]))*c2gamma; 
  incr[8] = ((-0.6614378277661477*byr[15])+0.6614378277661477*byl[15]+0.5590169943749473*(byr[13]+byl[13])-0.4330127018922193*byr[11]+0.4330127018922193*byl[11]+0.25*(byr[8]+byl[8]))*c2gamma; 
  incr[9] = (1.75*byr[9]-1.75*byl[9]-1.479019945774904*(byr[5]+byl[5])+1.14564392373896*byr[2]-1.14564392373896*byl[2]-0.6614378277661477*(byr[0]+byl[0]))*c2gamma; 
  incr[10] = ((-1.479019945774904*byr[14])+1.479019945774904*byl[14]+1.25*(byr[10]+byl[10])-0.9682458365518543*byr[6]+0.9682458365518543*byl[6]+0.5590169943749475*(byr[4]+byl[4]))*c2gamma; 
  incr[11] = (1.14564392373896*byr[15]-1.14564392373896*byl[15]-0.9682458365518541*(byr[13]+byl[13])+0.75*byr[11]-0.75*byl[11]-0.4330127018922193*(byr[8]+byl[8]))*c2gamma; 
  incr[12] = (1.75*byr[12]-1.75*byl[12]-1.479019945774904*(byr[7]+byl[7])+1.14564392373896*byr[3]-1.14564392373896*byl[3]-0.6614378277661477*(byr[1]+byl[1]))*c2gamma; 
  incr[13] = ((-1.479019945774904*byr[15])+1.479019945774904*byl[15]+1.25*(byr[13]+byl[13])-0.9682458365518541*byr[11]+0.9682458365518541*byl[11]+0.5590169943749473*(byr[8]+byl[8]))*c2gamma; 
  incr[14] = (1.75*byr[14]-1.75*byl[14]-1.479019945774904*(byr[10]+byl[10])+1.14564392373896*byr[6]-1.14564392373896*byl[6]-0.6614378277661477*(byr[4]+byl[4]))*c2gamma; 
  incr[15] = (1.75*byr[15]-1.75*byl[15]-1.479019945774904*(byr[13]+byl[13])+1.14564392373896*byr[11]-1.14564392373896*byl[11]-0.6614378277661477*(byr[8]+byl[8]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 
  outPsr[4] += incr[4]*dxr1; 
  outPsr[5] += incr[5]*dxr1; 
  outPsr[6] += incr[6]*dxr1; 
  outPsr[7] += incr[7]*dxr1; 
  outPsr[8] += incr[8]*dxr1; 
  outPsr[9] += incr[9]*dxr1; 
  outPsr[10] += incr[10]*dxr1; 
  outPsr[11] += incr[11]*dxr1; 
  outPsr[12] += incr[12]*dxr1; 
  outPsr[13] += incr[13]*dxr1; 
  outPsr[14] += incr[14]*dxr1; 
  outPsr[15] += incr[15]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += -1.0*incr[1]*dxl1; 
  outPsl[2] += incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 
  outPsl[4] += -1.0*incr[4]*dxl1; 
  outPsl[5] += -1.0*incr[5]*dxl1; 
  outPsl[6] += incr[6]*dxl1; 
  outPsl[7] += -1.0*incr[7]*dxl1; 
  outPsl[8] += -1.0*incr[8]*dxl1; 
  outPsl[9] += incr[9]*dxl1; 
  outPsl[10] += -1.0*incr[10]*dxl1; 
  outPsl[11] += incr[11]*dxl1; 
  outPsl[12] += incr[12]*dxl1; 
  outPsl[13] += -1.0*incr[13]*dxl1; 
  outPsl[14] += incr[14]*dxl1; 
  outPsl[15] += incr[15]*dxl1; 

 
  return c; 
} 
