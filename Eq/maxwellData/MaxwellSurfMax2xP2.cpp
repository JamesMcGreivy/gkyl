#include <MaxwellModDecl.h> 
__host__ __device__ double MaxwellSurf2xMax_X_P2(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[0]; 
  const double dxr1 = 2.0/dxr[0]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[6]; 
  const double *ezl = &ql[12]; 
  const double *bxl = &ql[18]; 
  const double *byl = &ql[24]; 
  const double *bzl = &ql[30]; 
  const double *phl = &ql[36]; 
  const double *psl = &ql[42]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[6]; 
  double *outEzl = &outl[12]; 
  double *outBxl = &outl[18]; 
  double *outByl = &outl[24]; 
  double *outBzl = &outl[30]; 
  double *outPhl = &outl[36]; 
  double *outPsl = &outl[42]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[6]; 
  const double *ezr = &qr[12]; 
  const double *bxr = &qr[18]; 
  const double *byr = &qr[24]; 
  const double *bzr = &qr[30]; 
  const double *phr = &qr[36]; 
  const double *psr = &qr[42]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[6]; 
  double *outEzr = &outr[12]; 
  double *outBxr = &outr[18]; 
  double *outByr = &outr[24]; 
  double *outBzr = &outr[30]; 
  double *outPhr = &outr[36]; 
  double *outPsr = &outr[42]; 
 
  double incr[6]; 
 
  incr[0] = ((-0.5590169943749475*exr[4])+0.5590169943749475*exl[4]+0.4330127018922193*(exr[1]+exl[1])-0.25*exr[0]+0.25*exl[0])*c*chi+(0.5590169943749475*(phr[4]+phl[4])-0.4330127018922193*phr[1]+0.4330127018922193*phl[1]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = (0.9682458365518543*exr[4]-0.9682458365518543*exl[4]-0.75*(exr[1]+exl[1])+0.4330127018922193*exr[0]-0.4330127018922193*exl[0])*c*chi+((-0.9682458365518543*(phr[4]+phl[4]))+0.75*phr[1]-0.75*phl[1]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[2] = (0.4330127018922193*(exr[3]+exl[3])-0.25*exr[2]+0.25*exl[2])*c*chi+((-0.4330127018922193*phr[3])+0.4330127018922193*phl[3]+0.25*(phr[2]+phl[2]))*c2chi; 
  incr[3] = ((-0.75*(exr[3]+exl[3]))+0.4330127018922193*exr[2]-0.4330127018922193*exl[2])*c*chi+(0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[2]+phl[2]))*c2chi; 
  incr[4] = ((-1.25*exr[4])+1.25*exl[4]+0.9682458365518543*(exr[1]+exl[1])-0.5590169943749475*exr[0]+0.5590169943749475*exl[0])*c*chi+(1.25*(phr[4]+phl[4])-0.9682458365518543*phr[1]+0.9682458365518543*phl[1]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 
  incr[5] = (0.25*exl[5]-0.25*exr[5])*c*chi+0.25*(phr[5]+phl[5])*c2chi; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 
  outExr[4] += incr[4]*dxr1; 
  outExr[5] += incr[5]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += incr[1]*dxl1; 
  outExl[2] += -1.0*incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 
  outExl[4] += -1.0*incr[4]*dxl1; 
  outExl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = ((-0.5590169943749475*eyr[4])+0.5590169943749475*eyl[4]+0.4330127018922193*(eyr[1]+eyl[1])-0.25*eyr[0]+0.25*eyl[0])*tau+(0.5590169943749475*(bzr[4]+bzl[4])-0.4330127018922193*bzr[1]+0.4330127018922193*bzl[1]+0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = (0.9682458365518543*eyr[4]-0.9682458365518543*eyl[4]-0.75*(eyr[1]+eyl[1])+0.4330127018922193*eyr[0]-0.4330127018922193*eyl[0])*tau+((-0.9682458365518543*(bzr[4]+bzl[4]))+0.75*bzr[1]-0.75*bzl[1]-0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[2] = (0.4330127018922193*(eyr[3]+eyl[3])-0.25*eyr[2]+0.25*eyl[2])*tau+((-0.4330127018922193*bzr[3])+0.4330127018922193*bzl[3]+0.25*(bzr[2]+bzl[2]))*c2; 
  incr[3] = ((-0.75*(eyr[3]+eyl[3]))+0.4330127018922193*eyr[2]-0.4330127018922193*eyl[2])*tau+(0.75*bzr[3]-0.75*bzl[3]-0.4330127018922193*(bzr[2]+bzl[2]))*c2; 
  incr[4] = ((-1.25*eyr[4])+1.25*eyl[4]+0.9682458365518543*(eyr[1]+eyl[1])-0.5590169943749475*eyr[0]+0.5590169943749475*eyl[0])*tau+(1.25*(bzr[4]+bzl[4])-0.9682458365518543*bzr[1]+0.9682458365518543*bzl[1]+0.5590169943749475*(bzr[0]+bzl[0]))*c2; 
  incr[5] = 0.25*(eyl[5]*tau+(bzr[5]+bzl[5])*c2)-0.25*eyr[5]*tau; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 
  outEyr[4] += incr[4]*dxr1; 
  outEyr[5] += incr[5]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += incr[1]*dxl1; 
  outEyl[2] += -1.0*incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 
  outEyl[4] += -1.0*incr[4]*dxl1; 
  outEyl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = ((-0.5590169943749475*ezr[4])+0.5590169943749475*ezl[4]+0.4330127018922193*(ezr[1]+ezl[1])-0.25*ezr[0]+0.25*ezl[0])*tau+((-0.5590169943749475*(byr[4]+byl[4]))+0.4330127018922193*byr[1]-0.4330127018922193*byl[1]-0.25*(byr[0]+byl[0]))*c2; 
  incr[1] = (0.9682458365518543*ezr[4]-0.9682458365518543*ezl[4]-0.75*(ezr[1]+ezl[1])+0.4330127018922193*ezr[0]-0.4330127018922193*ezl[0])*tau+(0.9682458365518543*(byr[4]+byl[4])-0.75*byr[1]+0.75*byl[1]+0.4330127018922193*(byr[0]+byl[0]))*c2; 
  incr[2] = (0.4330127018922193*(ezr[3]+ezl[3])-0.25*ezr[2]+0.25*ezl[2])*tau+(0.4330127018922193*byr[3]-0.4330127018922193*byl[3]-0.25*(byr[2]+byl[2]))*c2; 
  incr[3] = ((-0.75*(ezr[3]+ezl[3]))+0.4330127018922193*ezr[2]-0.4330127018922193*ezl[2])*tau+((-0.75*byr[3])+0.75*byl[3]+0.4330127018922193*(byr[2]+byl[2]))*c2; 
  incr[4] = ((-1.25*ezr[4])+1.25*ezl[4]+0.9682458365518543*(ezr[1]+ezl[1])-0.5590169943749475*ezr[0]+0.5590169943749475*ezl[0])*tau+((-1.25*(byr[4]+byl[4]))+0.9682458365518543*byr[1]-0.9682458365518543*byl[1]-0.5590169943749475*(byr[0]+byl[0]))*c2; 
  incr[5] = (0.25*ezl[5]-0.25*ezr[5])*tau-0.25*(byr[5]+byl[5])*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 
  outEzr[4] += incr[4]*dxr1; 
  outEzr[5] += incr[5]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += incr[1]*dxl1; 
  outEzl[2] += -1.0*incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 
  outEzl[4] += -1.0*incr[4]*dxl1; 
  outEzl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*bxr[4])+0.5590169943749475*bxl[4]+0.4330127018922193*(bxr[1]+bxl[1])-0.25*bxr[0]+0.25*bxl[0])*c+0.5590169943749475*(psr[4]+psl[4])-0.4330127018922193*psr[1]+0.4330127018922193*psl[1]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = ((0.9682458365518543*bxr[4]-0.9682458365518543*bxl[4]-0.75*(bxr[1]+bxl[1])+0.4330127018922193*bxr[0]-0.4330127018922193*bxl[0])*c-0.9682458365518543*(psr[4]+psl[4])+0.75*psr[1]-0.75*psl[1]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[2] = ((0.4330127018922193*(bxr[3]+bxl[3])-0.25*bxr[2]+0.25*bxl[2])*c-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[2]+psl[2]))*gamma; 
  incr[3] = (((-0.75*(bxr[3]+bxl[3]))+0.4330127018922193*bxr[2]-0.4330127018922193*bxl[2])*c+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[2]+psl[2]))*gamma; 
  incr[4] = (((-1.25*bxr[4])+1.25*bxl[4]+0.9682458365518543*(bxr[1]+bxl[1])-0.5590169943749475*bxr[0]+0.5590169943749475*bxl[0])*c+1.25*(psr[4]+psl[4])-0.9682458365518543*psr[1]+0.9682458365518543*psl[1]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 
  incr[5] = (0.25*(bxl[5]*c+psr[5]+psl[5])-0.25*bxr[5]*c)*gamma; 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 
  outBxr[4] += incr[4]*dxr1; 
  outBxr[5] += incr[5]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += incr[1]*dxl1; 
  outBxl[2] += -1.0*incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 
  outBxl[4] += -1.0*incr[4]*dxl1; 
  outBxl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*byr[4])+0.5590169943749475*byl[4]+0.4330127018922193*(byr[1]+byl[1])-0.25*byr[0]+0.25*byl[0])*c2)/tau-0.5590169943749475*(ezr[4]+ezl[4])+0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1]-0.25*(ezr[0]+ezl[0]); 
  incr[1] = ((0.9682458365518543*byr[4]-0.9682458365518543*byl[4]-0.75*(byr[1]+byl[1])+0.4330127018922193*byr[0]-0.4330127018922193*byl[0])*c2)/tau+0.9682458365518543*(ezr[4]+ezl[4])-0.75*ezr[1]+0.75*ezl[1]+0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[2] = ((0.4330127018922193*(byr[3]+byl[3])-0.25*byr[2]+0.25*byl[2])*c2)/tau+0.4330127018922193*ezr[3]-0.4330127018922193*ezl[3]-0.25*(ezr[2]+ezl[2]); 
  incr[3] = (((-0.75*(byr[3]+byl[3]))+0.4330127018922193*byr[2]-0.4330127018922193*byl[2])*c2)/tau-0.75*ezr[3]+0.75*ezl[3]+0.4330127018922193*(ezr[2]+ezl[2]); 
  incr[4] = (((-1.25*byr[4])+1.25*byl[4]+0.9682458365518543*(byr[1]+byl[1])-0.5590169943749475*byr[0]+0.5590169943749475*byl[0])*c2)/tau-1.25*(ezr[4]+ezl[4])+0.9682458365518543*ezr[1]-0.9682458365518543*ezl[1]-0.5590169943749475*(ezr[0]+ezl[0]); 
  incr[5] = ((0.25*byl[5]-0.25*byr[5])*c2)/tau-0.25*(ezr[5]+ezl[5]); 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 
  outByr[4] += incr[4]*dxr1; 
  outByr[5] += incr[5]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += incr[1]*dxl1; 
  outByl[2] += -1.0*incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 
  outByl[4] += -1.0*incr[4]*dxl1; 
  outByl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*bzr[4])+0.5590169943749475*bzl[4]+0.4330127018922193*(bzr[1]+bzl[1])-0.25*bzr[0]+0.25*bzl[0])*c2)/tau+0.5590169943749475*(eyr[4]+eyl[4])-0.4330127018922193*eyr[1]+0.4330127018922193*eyl[1]+0.25*(eyr[0]+eyl[0]); 
  incr[1] = ((0.9682458365518543*bzr[4]-0.9682458365518543*bzl[4]-0.75*(bzr[1]+bzl[1])+0.4330127018922193*bzr[0]-0.4330127018922193*bzl[0])*c2)/tau-0.9682458365518543*(eyr[4]+eyl[4])+0.75*eyr[1]-0.75*eyl[1]-0.4330127018922193*(eyr[0]+eyl[0]); 
  incr[2] = ((0.4330127018922193*(bzr[3]+bzl[3])-0.25*bzr[2]+0.25*bzl[2])*c2)/tau-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[2]+eyl[2]); 
  incr[3] = (((-0.75*(bzr[3]+bzl[3]))+0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2])*c2)/tau+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[2]+eyl[2]); 
  incr[4] = (((-1.25*bzr[4])+1.25*bzl[4]+0.9682458365518543*(bzr[1]+bzl[1])-0.5590169943749475*bzr[0]+0.5590169943749475*bzl[0])*c2)/tau+1.25*(eyr[4]+eyl[4])-0.9682458365518543*eyr[1]+0.9682458365518543*eyl[1]+0.5590169943749475*(eyr[0]+eyl[0]); 
  incr[5] = ((0.25*bzl[5]-0.25*bzr[5])*c2)/tau+0.25*(eyr[5]+eyl[5]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 
  outBzr[4] += incr[4]*dxr1; 
  outBzr[5] += incr[5]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += incr[1]*dxl1; 
  outBzl[2] += -1.0*incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 
  outBzl[4] += -1.0*incr[4]*dxl1; 
  outBzl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*phr[4])+0.5590169943749475*phl[4]+0.4330127018922193*(phr[1]+phl[1])-0.25*phr[0]+0.25*phl[0])*c+0.5590169943749475*(exr[4]+exl[4])-0.4330127018922193*exr[1]+0.4330127018922193*exl[1]+0.25*(exr[0]+exl[0]))*chi; 
  incr[1] = ((0.9682458365518543*phr[4]-0.9682458365518543*phl[4]-0.75*(phr[1]+phl[1])+0.4330127018922193*phr[0]-0.4330127018922193*phl[0])*c-0.9682458365518543*(exr[4]+exl[4])+0.75*exr[1]-0.75*exl[1]-0.4330127018922193*(exr[0]+exl[0]))*chi; 
  incr[2] = ((0.4330127018922193*(phr[3]+phl[3])-0.25*phr[2]+0.25*phl[2])*c-0.4330127018922193*exr[3]+0.4330127018922193*exl[3]+0.25*(exr[2]+exl[2]))*chi; 
  incr[3] = (((-0.75*(phr[3]+phl[3]))+0.4330127018922193*phr[2]-0.4330127018922193*phl[2])*c+0.75*exr[3]-0.75*exl[3]-0.4330127018922193*(exr[2]+exl[2]))*chi; 
  incr[4] = (((-1.25*phr[4])+1.25*phl[4]+0.9682458365518543*(phr[1]+phl[1])-0.5590169943749475*phr[0]+0.5590169943749475*phl[0])*c+1.25*(exr[4]+exl[4])-0.9682458365518543*exr[1]+0.9682458365518543*exl[1]+0.5590169943749475*(exr[0]+exl[0]))*chi; 
  incr[5] = (0.25*(phl[5]*c+exr[5]+exl[5])-0.25*phr[5]*c)*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 
  outPhr[4] += incr[4]*dxr1; 
  outPhr[5] += incr[5]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += incr[1]*dxl1; 
  outPhl[2] += -1.0*incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 
  outPhl[4] += -1.0*incr[4]*dxl1; 
  outPhl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = ((-0.5590169943749475*psr[4])+0.5590169943749475*psl[4]+0.4330127018922193*(psr[1]+psl[1])-0.25*psr[0]+0.25*psl[0])*c*gamma+(0.5590169943749475*(bxr[4]+bxl[4])-0.4330127018922193*bxr[1]+0.4330127018922193*bxl[1]+0.25*(bxr[0]+bxl[0]))*c2gamma; 
  incr[1] = (0.9682458365518543*psr[4]-0.9682458365518543*psl[4]-0.75*(psr[1]+psl[1])+0.4330127018922193*psr[0]-0.4330127018922193*psl[0])*c*gamma+((-0.9682458365518543*(bxr[4]+bxl[4]))+0.75*bxr[1]-0.75*bxl[1]-0.4330127018922193*(bxr[0]+bxl[0]))*c2gamma; 
  incr[2] = (0.4330127018922193*(psr[3]+psl[3])-0.25*psr[2]+0.25*psl[2])*c*gamma+((-0.4330127018922193*bxr[3])+0.4330127018922193*bxl[3]+0.25*(bxr[2]+bxl[2]))*c2gamma; 
  incr[3] = ((-0.75*(psr[3]+psl[3]))+0.4330127018922193*psr[2]-0.4330127018922193*psl[2])*c*gamma+(0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[2]+bxl[2]))*c2gamma; 
  incr[4] = ((-1.25*psr[4])+1.25*psl[4]+0.9682458365518543*(psr[1]+psl[1])-0.5590169943749475*psr[0]+0.5590169943749475*psl[0])*c*gamma+(1.25*(bxr[4]+bxl[4])-0.9682458365518543*bxr[1]+0.9682458365518543*bxl[1]+0.5590169943749475*(bxr[0]+bxl[0]))*c2gamma; 
  incr[5] = (0.25*psl[5]-0.25*psr[5])*c*gamma+0.25*(bxr[5]+bxl[5])*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 
  outPsr[4] += incr[4]*dxr1; 
  outPsr[5] += incr[5]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += incr[1]*dxl1; 
  outPsl[2] += -1.0*incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 
  outPsl[4] += -1.0*incr[4]*dxl1; 
  outPsl[5] += -1.0*incr[5]*dxl1; 

  return std::fmax(c, tau); 
} 
__host__ __device__ double MaxwellSurf2xMax_Y_P2(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[1]; 
  const double dxr1 = 2.0/dxr[1]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[6]; 
  const double *ezl = &ql[12]; 
  const double *bxl = &ql[18]; 
  const double *byl = &ql[24]; 
  const double *bzl = &ql[30]; 
  const double *phl = &ql[36]; 
  const double *psl = &ql[42]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[6]; 
  double *outEzl = &outl[12]; 
  double *outBxl = &outl[18]; 
  double *outByl = &outl[24]; 
  double *outBzl = &outl[30]; 
  double *outPhl = &outl[36]; 
  double *outPsl = &outl[42]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[6]; 
  const double *ezr = &qr[12]; 
  const double *bxr = &qr[18]; 
  const double *byr = &qr[24]; 
  const double *bzr = &qr[30]; 
  const double *phr = &qr[36]; 
  const double *psr = &qr[42]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[6]; 
  double *outEzr = &outr[12]; 
  double *outBxr = &outr[18]; 
  double *outByr = &outr[24]; 
  double *outBzr = &outr[30]; 
  double *outPhr = &outr[36]; 
  double *outPsr = &outr[42]; 
 
  double incr[6]; 
 
  incr[0] = ((-0.5590169943749475*exr[5])+0.5590169943749475*exl[5]+0.4330127018922193*(exr[2]+exl[2])-0.25*exr[0]+0.25*exl[0])*tau+((-0.5590169943749475*(bzr[5]+bzl[5]))+0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2]-0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = (0.4330127018922193*(exr[3]+exl[3])-0.25*exr[1]+0.25*exl[1])*tau+(0.4330127018922193*bzr[3]-0.4330127018922193*bzl[3]-0.25*(bzr[1]+bzl[1]))*c2; 
  incr[2] = (0.9682458365518543*exr[5]-0.9682458365518543*exl[5]-0.75*(exr[2]+exl[2])+0.4330127018922193*exr[0]-0.4330127018922193*exl[0])*tau+(0.9682458365518543*(bzr[5]+bzl[5])-0.75*bzr[2]+0.75*bzl[2]+0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[3] = ((-0.75*(exr[3]+exl[3]))+0.4330127018922193*exr[1]-0.4330127018922193*exl[1])*tau+((-0.75*bzr[3])+0.75*bzl[3]+0.4330127018922193*(bzr[1]+bzl[1]))*c2; 
  incr[4] = (0.25*exl[4]-0.25*exr[4])*tau-0.25*(bzr[4]+bzl[4])*c2; 
  incr[5] = ((-1.25*exr[5])+1.25*exl[5]+0.9682458365518543*(exr[2]+exl[2])-0.5590169943749475*exr[0]+0.5590169943749475*exl[0])*tau+((-1.25*(bzr[5]+bzl[5]))+0.9682458365518543*bzr[2]-0.9682458365518543*bzl[2]-0.5590169943749475*(bzr[0]+bzl[0]))*c2; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 
  outExr[3] += incr[3]*dxr1; 
  outExr[4] += incr[4]*dxr1; 
  outExr[5] += incr[5]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += -1.0*incr[1]*dxl1; 
  outExl[2] += incr[2]*dxl1; 
  outExl[3] += incr[3]*dxl1; 
  outExl[4] += -1.0*incr[4]*dxl1; 
  outExl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = ((-0.5590169943749475*eyr[5])+0.5590169943749475*eyl[5]+0.4330127018922193*(eyr[2]+eyl[2])-0.25*eyr[0]+0.25*eyl[0])*c*chi+(0.5590169943749475*(phr[5]+phl[5])-0.4330127018922193*phr[2]+0.4330127018922193*phl[2]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = (0.4330127018922193*(eyr[3]+eyl[3])-0.25*eyr[1]+0.25*eyl[1])*c*chi+((-0.4330127018922193*phr[3])+0.4330127018922193*phl[3]+0.25*(phr[1]+phl[1]))*c2chi; 
  incr[2] = (0.9682458365518543*eyr[5]-0.9682458365518543*eyl[5]-0.75*(eyr[2]+eyl[2])+0.4330127018922193*eyr[0]-0.4330127018922193*eyl[0])*c*chi+((-0.9682458365518543*(phr[5]+phl[5]))+0.75*phr[2]-0.75*phl[2]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[3] = ((-0.75*(eyr[3]+eyl[3]))+0.4330127018922193*eyr[1]-0.4330127018922193*eyl[1])*c*chi+(0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[1]+phl[1]))*c2chi; 
  incr[4] = (0.25*eyl[4]-0.25*eyr[4])*c*chi+0.25*(phr[4]+phl[4])*c2chi; 
  incr[5] = ((-1.25*eyr[5])+1.25*eyl[5]+0.9682458365518543*(eyr[2]+eyl[2])-0.5590169943749475*eyr[0]+0.5590169943749475*eyl[0])*c*chi+(1.25*(phr[5]+phl[5])-0.9682458365518543*phr[2]+0.9682458365518543*phl[2]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 
  outEyr[3] += incr[3]*dxr1; 
  outEyr[4] += incr[4]*dxr1; 
  outEyr[5] += incr[5]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += -1.0*incr[1]*dxl1; 
  outEyl[2] += incr[2]*dxl1; 
  outEyl[3] += incr[3]*dxl1; 
  outEyl[4] += -1.0*incr[4]*dxl1; 
  outEyl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = ((-0.5590169943749475*ezr[5])+0.5590169943749475*ezl[5]+0.4330127018922193*(ezr[2]+ezl[2])-0.25*ezr[0]+0.25*ezl[0])*tau+(0.5590169943749475*(bxr[5]+bxl[5])-0.4330127018922193*bxr[2]+0.4330127018922193*bxl[2]+0.25*(bxr[0]+bxl[0]))*c2; 
  incr[1] = (0.4330127018922193*(ezr[3]+ezl[3])-0.25*ezr[1]+0.25*ezl[1])*tau+((-0.4330127018922193*bxr[3])+0.4330127018922193*bxl[3]+0.25*(bxr[1]+bxl[1]))*c2; 
  incr[2] = (0.9682458365518543*ezr[5]-0.9682458365518543*ezl[5]-0.75*(ezr[2]+ezl[2])+0.4330127018922193*ezr[0]-0.4330127018922193*ezl[0])*tau+((-0.9682458365518543*(bxr[5]+bxl[5]))+0.75*bxr[2]-0.75*bxl[2]-0.4330127018922193*(bxr[0]+bxl[0]))*c2; 
  incr[3] = ((-0.75*(ezr[3]+ezl[3]))+0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1])*tau+(0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[1]+bxl[1]))*c2; 
  incr[4] = 0.25*(ezl[4]*tau+(bxr[4]+bxl[4])*c2)-0.25*ezr[4]*tau; 
  incr[5] = ((-1.25*ezr[5])+1.25*ezl[5]+0.9682458365518543*(ezr[2]+ezl[2])-0.5590169943749475*ezr[0]+0.5590169943749475*ezl[0])*tau+(1.25*(bxr[5]+bxl[5])-0.9682458365518543*bxr[2]+0.9682458365518543*bxl[2]+0.5590169943749475*(bxr[0]+bxl[0]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 
  outEzr[3] += incr[3]*dxr1; 
  outEzr[4] += incr[4]*dxr1; 
  outEzr[5] += incr[5]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += -1.0*incr[1]*dxl1; 
  outEzl[2] += incr[2]*dxl1; 
  outEzl[3] += incr[3]*dxl1; 
  outEzl[4] += -1.0*incr[4]*dxl1; 
  outEzl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*bxr[5])+0.5590169943749475*bxl[5]+0.4330127018922193*(bxr[2]+bxl[2])-0.25*bxr[0]+0.25*bxl[0])*c2)/tau+0.5590169943749475*(ezr[5]+ezl[5])-0.4330127018922193*ezr[2]+0.4330127018922193*ezl[2]+0.25*(ezr[0]+ezl[0]); 
  incr[1] = ((0.4330127018922193*(bxr[3]+bxl[3])-0.25*bxr[1]+0.25*bxl[1])*c2)/tau-0.4330127018922193*ezr[3]+0.4330127018922193*ezl[3]+0.25*(ezr[1]+ezl[1]); 
  incr[2] = ((0.9682458365518543*bxr[5]-0.9682458365518543*bxl[5]-0.75*(bxr[2]+bxl[2])+0.4330127018922193*bxr[0]-0.4330127018922193*bxl[0])*c2)/tau-0.9682458365518543*(ezr[5]+ezl[5])+0.75*ezr[2]-0.75*ezl[2]-0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[3] = (((-0.75*(bxr[3]+bxl[3]))+0.4330127018922193*bxr[1]-0.4330127018922193*bxl[1])*c2)/tau+0.75*ezr[3]-0.75*ezl[3]-0.4330127018922193*(ezr[1]+ezl[1]); 
  incr[4] = ((0.25*bxl[4]-0.25*bxr[4])*c2)/tau+0.25*(ezr[4]+ezl[4]); 
  incr[5] = (((-1.25*bxr[5])+1.25*bxl[5]+0.9682458365518543*(bxr[2]+bxl[2])-0.5590169943749475*bxr[0]+0.5590169943749475*bxl[0])*c2)/tau+1.25*(ezr[5]+ezl[5])-0.9682458365518543*ezr[2]+0.9682458365518543*ezl[2]+0.5590169943749475*(ezr[0]+ezl[0]); 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 
  outBxr[3] += incr[3]*dxr1; 
  outBxr[4] += incr[4]*dxr1; 
  outBxr[5] += incr[5]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += -1.0*incr[1]*dxl1; 
  outBxl[2] += incr[2]*dxl1; 
  outBxl[3] += incr[3]*dxl1; 
  outBxl[4] += -1.0*incr[4]*dxl1; 
  outBxl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*byr[5])+0.5590169943749475*byl[5]+0.4330127018922193*(byr[2]+byl[2])-0.25*byr[0]+0.25*byl[0])*c+0.5590169943749475*(psr[5]+psl[5])-0.4330127018922193*psr[2]+0.4330127018922193*psl[2]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = ((0.4330127018922193*(byr[3]+byl[3])-0.25*byr[1]+0.25*byl[1])*c-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[1]+psl[1]))*gamma; 
  incr[2] = ((0.9682458365518543*byr[5]-0.9682458365518543*byl[5]-0.75*(byr[2]+byl[2])+0.4330127018922193*byr[0]-0.4330127018922193*byl[0])*c-0.9682458365518543*(psr[5]+psl[5])+0.75*psr[2]-0.75*psl[2]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[3] = (((-0.75*(byr[3]+byl[3]))+0.4330127018922193*byr[1]-0.4330127018922193*byl[1])*c+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[1]+psl[1]))*gamma; 
  incr[4] = (0.25*(byl[4]*c+psr[4]+psl[4])-0.25*byr[4]*c)*gamma; 
  incr[5] = (((-1.25*byr[5])+1.25*byl[5]+0.9682458365518543*(byr[2]+byl[2])-0.5590169943749475*byr[0]+0.5590169943749475*byl[0])*c+1.25*(psr[5]+psl[5])-0.9682458365518543*psr[2]+0.9682458365518543*psl[2]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 
  outByr[3] += incr[3]*dxr1; 
  outByr[4] += incr[4]*dxr1; 
  outByr[5] += incr[5]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += -1.0*incr[1]*dxl1; 
  outByl[2] += incr[2]*dxl1; 
  outByl[3] += incr[3]*dxl1; 
  outByl[4] += -1.0*incr[4]*dxl1; 
  outByl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*bzr[5])+0.5590169943749475*bzl[5]+0.4330127018922193*(bzr[2]+bzl[2])-0.25*bzr[0]+0.25*bzl[0])*c2)/tau-0.5590169943749475*(exr[5]+exl[5])+0.4330127018922193*exr[2]-0.4330127018922193*exl[2]-0.25*(exr[0]+exl[0]); 
  incr[1] = ((0.4330127018922193*(bzr[3]+bzl[3])-0.25*bzr[1]+0.25*bzl[1])*c2)/tau+0.4330127018922193*exr[3]-0.4330127018922193*exl[3]-0.25*(exr[1]+exl[1]); 
  incr[2] = ((0.9682458365518543*bzr[5]-0.9682458365518543*bzl[5]-0.75*(bzr[2]+bzl[2])+0.4330127018922193*bzr[0]-0.4330127018922193*bzl[0])*c2)/tau+0.9682458365518543*(exr[5]+exl[5])-0.75*exr[2]+0.75*exl[2]+0.4330127018922193*(exr[0]+exl[0]); 
  incr[3] = (((-0.75*(bzr[3]+bzl[3]))+0.4330127018922193*bzr[1]-0.4330127018922193*bzl[1])*c2)/tau-0.75*exr[3]+0.75*exl[3]+0.4330127018922193*(exr[1]+exl[1]); 
  incr[4] = ((0.25*bzl[4]-0.25*bzr[4])*c2)/tau-0.25*(exr[4]+exl[4]); 
  incr[5] = (((-1.25*bzr[5])+1.25*bzl[5]+0.9682458365518543*(bzr[2]+bzl[2])-0.5590169943749475*bzr[0]+0.5590169943749475*bzl[0])*c2)/tau-1.25*(exr[5]+exl[5])+0.9682458365518543*exr[2]-0.9682458365518543*exl[2]-0.5590169943749475*(exr[0]+exl[0]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 
  outBzr[3] += incr[3]*dxr1; 
  outBzr[4] += incr[4]*dxr1; 
  outBzr[5] += incr[5]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += -1.0*incr[1]*dxl1; 
  outBzl[2] += incr[2]*dxl1; 
  outBzl[3] += incr[3]*dxl1; 
  outBzl[4] += -1.0*incr[4]*dxl1; 
  outBzl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = (((-0.5590169943749475*phr[5])+0.5590169943749475*phl[5]+0.4330127018922193*(phr[2]+phl[2])-0.25*phr[0]+0.25*phl[0])*c+0.5590169943749475*(eyr[5]+eyl[5])-0.4330127018922193*eyr[2]+0.4330127018922193*eyl[2]+0.25*(eyr[0]+eyl[0]))*chi; 
  incr[1] = ((0.4330127018922193*(phr[3]+phl[3])-0.25*phr[1]+0.25*phl[1])*c-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[1]+eyl[1]))*chi; 
  incr[2] = ((0.9682458365518543*phr[5]-0.9682458365518543*phl[5]-0.75*(phr[2]+phl[2])+0.4330127018922193*phr[0]-0.4330127018922193*phl[0])*c-0.9682458365518543*(eyr[5]+eyl[5])+0.75*eyr[2]-0.75*eyl[2]-0.4330127018922193*(eyr[0]+eyl[0]))*chi; 
  incr[3] = (((-0.75*(phr[3]+phl[3]))+0.4330127018922193*phr[1]-0.4330127018922193*phl[1])*c+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[1]+eyl[1]))*chi; 
  incr[4] = (0.25*(phl[4]*c+eyr[4]+eyl[4])-0.25*phr[4]*c)*chi; 
  incr[5] = (((-1.25*phr[5])+1.25*phl[5]+0.9682458365518543*(phr[2]+phl[2])-0.5590169943749475*phr[0]+0.5590169943749475*phl[0])*c+1.25*(eyr[5]+eyl[5])-0.9682458365518543*eyr[2]+0.9682458365518543*eyl[2]+0.5590169943749475*(eyr[0]+eyl[0]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 
  outPhr[3] += incr[3]*dxr1; 
  outPhr[4] += incr[4]*dxr1; 
  outPhr[5] += incr[5]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += -1.0*incr[1]*dxl1; 
  outPhl[2] += incr[2]*dxl1; 
  outPhl[3] += incr[3]*dxl1; 
  outPhl[4] += -1.0*incr[4]*dxl1; 
  outPhl[5] += -1.0*incr[5]*dxl1; 

  incr[0] = ((-0.5590169943749475*psr[5])+0.5590169943749475*psl[5]+0.4330127018922193*(psr[2]+psl[2])-0.25*psr[0]+0.25*psl[0])*c*gamma+(0.5590169943749475*(byr[5]+byl[5])-0.4330127018922193*byr[2]+0.4330127018922193*byl[2]+0.25*(byr[0]+byl[0]))*c2gamma; 
  incr[1] = (0.4330127018922193*(psr[3]+psl[3])-0.25*psr[1]+0.25*psl[1])*c*gamma+((-0.4330127018922193*byr[3])+0.4330127018922193*byl[3]+0.25*(byr[1]+byl[1]))*c2gamma; 
  incr[2] = (0.9682458365518543*psr[5]-0.9682458365518543*psl[5]-0.75*(psr[2]+psl[2])+0.4330127018922193*psr[0]-0.4330127018922193*psl[0])*c*gamma+((-0.9682458365518543*(byr[5]+byl[5]))+0.75*byr[2]-0.75*byl[2]-0.4330127018922193*(byr[0]+byl[0]))*c2gamma; 
  incr[3] = ((-0.75*(psr[3]+psl[3]))+0.4330127018922193*psr[1]-0.4330127018922193*psl[1])*c*gamma+(0.75*byr[3]-0.75*byl[3]-0.4330127018922193*(byr[1]+byl[1]))*c2gamma; 
  incr[4] = (0.25*psl[4]-0.25*psr[4])*c*gamma+0.25*(byr[4]+byl[4])*c2gamma; 
  incr[5] = ((-1.25*psr[5])+1.25*psl[5]+0.9682458365518543*(psr[2]+psl[2])-0.5590169943749475*psr[0]+0.5590169943749475*psl[0])*c*gamma+(1.25*(byr[5]+byl[5])-0.9682458365518543*byr[2]+0.9682458365518543*byl[2]+0.5590169943749475*(byr[0]+byl[0]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 
  outPsr[3] += incr[3]*dxr1; 
  outPsr[4] += incr[4]*dxr1; 
  outPsr[5] += incr[5]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += -1.0*incr[1]*dxl1; 
  outPsl[2] += incr[2]*dxl1; 
  outPsl[3] += incr[3]*dxl1; 
  outPsl[4] += -1.0*incr[4]*dxl1; 
  outPsl[5] += -1.0*incr[5]*dxl1; 

  return std::fmax(c, tau); 
} 
