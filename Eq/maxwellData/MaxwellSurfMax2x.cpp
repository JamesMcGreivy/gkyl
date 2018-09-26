#include <MaxwellModDecl.h> 
double MaxwellSurf2xMax_X_P1(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[0]; 
  const double dxr1 = 2.0/dxr[0]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[3]; 
  const double *ezl = &ql[6]; 
  const double *bxl = &ql[9]; 
  const double *byl = &ql[12]; 
  const double *bzl = &ql[15]; 
  const double *phl = &ql[18]; 
  const double *psl = &ql[21]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[3]; 
  double *outEzl = &outl[6]; 
  double *outBxl = &outl[9]; 
  double *outByl = &outl[12]; 
  double *outBzl = &outl[15]; 
  double *outPhl = &outl[18]; 
  double *outPsl = &outl[21]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[3]; 
  const double *ezr = &qr[6]; 
  const double *bxr = &qr[9]; 
  const double *byr = &qr[12]; 
  const double *bzr = &qr[15]; 
  const double *phr = &qr[18]; 
  const double *psr = &qr[21]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[3]; 
  double *outEzr = &outr[6]; 
  double *outBxr = &outr[9]; 
  double *outByr = &outr[12]; 
  double *outBzr = &outr[15]; 
  double *outPhr = &outr[18]; 
  double *outPsr = &outr[21]; 
 
  double incr[3]; 
 
  incr[0] = (0.4330127018922193*(exr[1]+exl[1])-0.25*exr[0]+0.25*exl[0])*c*chi+((-0.4330127018922193*phr[1])+0.4330127018922193*phl[1]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = ((-0.75*(exr[1]+exl[1]))+0.4330127018922193*exr[0]-0.4330127018922193*exl[0])*c*chi+(0.75*phr[1]-0.75*phl[1]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[2] = (0.25*exl[2]-0.25*exr[2])*c*chi+0.25*(phr[2]+phl[2])*c2chi; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += incr[1]*dxl1; 
  outExl[2] += -1.0*incr[2]*dxl1; 

 
  incr[0] = (0.4330127018922193*(eyr[1]+eyl[1])-0.25*eyr[0]+0.25*eyl[0])*tau+((-0.4330127018922193*bzr[1])+0.4330127018922193*bzl[1]+0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = ((-0.75*(eyr[1]+eyl[1]))+0.4330127018922193*eyr[0]-0.4330127018922193*eyl[0])*tau+(0.75*bzr[1]-0.75*bzl[1]-0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[2] = 0.25*(eyl[2]*tau+(bzr[2]+bzl[2])*c2)-0.25*eyr[2]*tau; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += incr[1]*dxl1; 
  outEyl[2] += -1.0*incr[2]*dxl1; 

 
  incr[0] = (0.4330127018922193*(ezr[1]+ezl[1])-0.25*ezr[0]+0.25*ezl[0])*tau+(0.4330127018922193*byr[1]-0.4330127018922193*byl[1]-0.25*(byr[0]+byl[0]))*c2; 
  incr[1] = ((-0.75*(ezr[1]+ezl[1]))+0.4330127018922193*ezr[0]-0.4330127018922193*ezl[0])*tau+((-0.75*byr[1])+0.75*byl[1]+0.4330127018922193*(byr[0]+byl[0]))*c2; 
  incr[2] = (0.25*ezl[2]-0.25*ezr[2])*tau-0.25*(byr[2]+byl[2])*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += incr[1]*dxl1; 
  outEzl[2] += -1.0*incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(bxr[1]+bxl[1])-0.25*bxr[0]+0.25*bxl[0])*c-0.4330127018922193*psr[1]+0.4330127018922193*psl[1]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = (((-0.75*(bxr[1]+bxl[1]))+0.4330127018922193*bxr[0]-0.4330127018922193*bxl[0])*c+0.75*psr[1]-0.75*psl[1]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[2] = (0.25*(bxl[2]*c+psr[2]+psl[2])-0.25*bxr[2]*c)*gamma; 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += incr[1]*dxl1; 
  outBxl[2] += -1.0*incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(byr[1]+byl[1])-0.25*byr[0]+0.25*byl[0])*c2)/tau+0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1]-0.25*(ezr[0]+ezl[0]); 
  incr[1] = (((-0.75*(byr[1]+byl[1]))+0.4330127018922193*byr[0]-0.4330127018922193*byl[0])*c2)/tau-0.75*ezr[1]+0.75*ezl[1]+0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[2] = ((0.25*byl[2]-0.25*byr[2])*c2)/tau-0.25*(ezr[2]+ezl[2]); 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += incr[1]*dxl1; 
  outByl[2] += -1.0*incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(bzr[1]+bzl[1])-0.25*bzr[0]+0.25*bzl[0])*c2)/tau-0.4330127018922193*eyr[1]+0.4330127018922193*eyl[1]+0.25*(eyr[0]+eyl[0]); 
  incr[1] = (((-0.75*(bzr[1]+bzl[1]))+0.4330127018922193*bzr[0]-0.4330127018922193*bzl[0])*c2)/tau+0.75*eyr[1]-0.75*eyl[1]-0.4330127018922193*(eyr[0]+eyl[0]); 
  incr[2] = ((0.25*bzl[2]-0.25*bzr[2])*c2)/tau+0.25*(eyr[2]+eyl[2]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += incr[1]*dxl1; 
  outBzl[2] += -1.0*incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(phr[1]+phl[1])-0.25*phr[0]+0.25*phl[0])*c-0.4330127018922193*exr[1]+0.4330127018922193*exl[1]+0.25*(exr[0]+exl[0]))*chi; 
  incr[1] = (((-0.75*(phr[1]+phl[1]))+0.4330127018922193*phr[0]-0.4330127018922193*phl[0])*c+0.75*exr[1]-0.75*exl[1]-0.4330127018922193*(exr[0]+exl[0]))*chi; 
  incr[2] = (0.25*(phl[2]*c+exr[2]+exl[2])-0.25*phr[2]*c)*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += incr[1]*dxl1; 
  outPhl[2] += -1.0*incr[2]*dxl1; 

 
  incr[0] = (0.4330127018922193*(psr[1]+psl[1])-0.25*psr[0]+0.25*psl[0])*c*gamma+((-0.4330127018922193*bxr[1])+0.4330127018922193*bxl[1]+0.25*(bxr[0]+bxl[0]))*c2gamma; 
  incr[1] = ((-0.75*(psr[1]+psl[1]))+0.4330127018922193*psr[0]-0.4330127018922193*psl[0])*c*gamma+(0.75*bxr[1]-0.75*bxl[1]-0.4330127018922193*(bxr[0]+bxl[0]))*c2gamma; 
  incr[2] = (0.25*psl[2]-0.25*psr[2])*c*gamma+0.25*(bxr[2]+bxl[2])*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += incr[1]*dxl1; 
  outPsl[2] += -1.0*incr[2]*dxl1; 

 
  return std::fmax(c, tau); 
} 
double MaxwellSurf2xMax_X_P2(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
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
double MaxwellSurf2xMax_X_P3(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[0]; 
  const double dxr1 = 2.0/dxr[0]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[10]; 
  const double *ezl = &ql[20]; 
  const double *bxl = &ql[30]; 
  const double *byl = &ql[40]; 
  const double *bzl = &ql[50]; 
  const double *phl = &ql[60]; 
  const double *psl = &ql[70]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[10]; 
  double *outEzl = &outl[20]; 
  double *outBxl = &outl[30]; 
  double *outByl = &outl[40]; 
  double *outBzl = &outl[50]; 
  double *outPhl = &outl[60]; 
  double *outPsl = &outl[70]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[10]; 
  const double *ezr = &qr[20]; 
  const double *bxr = &qr[30]; 
  const double *byr = &qr[40]; 
  const double *bzr = &qr[50]; 
  const double *phr = &qr[60]; 
  const double *psr = &qr[70]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[10]; 
  double *outEzr = &outr[20]; 
  double *outBxr = &outr[30]; 
  double *outByr = &outr[40]; 
  double *outBzr = &outr[50]; 
  double *outPhr = &outr[60]; 
  double *outPsr = &outr[70]; 
 
  double incr[10]; 
 
  incr[0] = (0.6614378277661477*(exr[8]+exl[8])-0.5590169943749475*exr[4]+0.5590169943749475*exl[4]+0.4330127018922193*(exr[1]+exl[1])-0.25*exr[0]+0.25*exl[0])*c*chi+((-0.6614378277661477*phr[8])+0.6614378277661477*phl[8]+0.5590169943749475*(phr[4]+phl[4])-0.4330127018922193*phr[1]+0.4330127018922193*phl[1]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = ((-1.14564392373896*(exr[8]+exl[8]))+0.9682458365518543*exr[4]-0.9682458365518543*exl[4]-0.75*(exr[1]+exl[1])+0.4330127018922193*exr[0]-0.4330127018922193*exl[0])*c*chi+(1.14564392373896*phr[8]-1.14564392373896*phl[8]-0.9682458365518543*(phr[4]+phl[4])+0.75*phr[1]-0.75*phl[1]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[2] = ((-0.5590169943749476*exr[6])+0.5590169943749476*exl[6]+0.4330127018922193*(exr[3]+exl[3])-0.25*exr[2]+0.25*exl[2])*c*chi+(0.5590169943749476*(phr[6]+phl[6])-0.4330127018922193*phr[3]+0.4330127018922193*phl[3]+0.25*(phr[2]+phl[2]))*c2chi; 
  incr[3] = (0.9682458365518543*exr[6]-0.9682458365518543*exl[6]-0.75*(exr[3]+exl[3])+0.4330127018922193*exr[2]-0.4330127018922193*exl[2])*c*chi+((-0.9682458365518543*(phr[6]+phl[6]))+0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[2]+phl[2]))*c2chi; 
  incr[4] = (1.479019945774904*(exr[8]+exl[8])-1.25*exr[4]+1.25*exl[4]+0.9682458365518543*(exr[1]+exl[1])-0.5590169943749475*exr[0]+0.5590169943749475*exl[0])*c*chi+((-1.479019945774904*phr[8])+1.479019945774904*phl[8]+1.25*(phr[4]+phl[4])-0.9682458365518543*phr[1]+0.9682458365518543*phl[1]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 
  incr[5] = (0.4330127018922194*(exr[7]+exl[7])-0.25*exr[5]+0.25*exl[5])*c*chi+((-0.4330127018922194*phr[7])+0.4330127018922194*phl[7]+0.25*(phr[5]+phl[5]))*c2chi; 
  incr[6] = ((-1.25*exr[6])+1.25*exl[6]+0.9682458365518543*(exr[3]+exl[3])-0.5590169943749476*exr[2]+0.5590169943749476*exl[2])*c*chi+(1.25*(phr[6]+phl[6])-0.9682458365518543*phr[3]+0.9682458365518543*phl[3]+0.5590169943749476*(phr[2]+phl[2]))*c2chi; 
  incr[7] = ((-0.75*(exr[7]+exl[7]))+0.4330127018922194*exr[5]-0.4330127018922194*exl[5])*c*chi+(0.75*phr[7]-0.75*phl[7]-0.4330127018922194*(phr[5]+phl[5]))*c2chi; 
  incr[8] = ((-1.75*(exr[8]+exl[8]))+1.479019945774904*exr[4]-1.479019945774904*exl[4]-1.14564392373896*(exr[1]+exl[1])+0.6614378277661477*exr[0]-0.6614378277661477*exl[0])*c*chi+(1.75*phr[8]-1.75*phl[8]-1.479019945774904*(phr[4]+phl[4])+1.14564392373896*phr[1]-1.14564392373896*phl[1]-0.6614378277661477*(phr[0]+phl[0]))*c2chi; 
  incr[9] = (0.25*exl[9]-0.25*exr[9])*c*chi+0.25*(phr[9]+phl[9])*c2chi; 

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

 
  incr[0] = (0.6614378277661477*(eyr[8]+eyl[8])-0.5590169943749475*eyr[4]+0.5590169943749475*eyl[4]+0.4330127018922193*(eyr[1]+eyl[1])-0.25*eyr[0]+0.25*eyl[0])*tau+((-0.6614378277661477*bzr[8])+0.6614378277661477*bzl[8]+0.5590169943749475*(bzr[4]+bzl[4])-0.4330127018922193*bzr[1]+0.4330127018922193*bzl[1]+0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = ((-1.14564392373896*(eyr[8]+eyl[8]))+0.9682458365518543*eyr[4]-0.9682458365518543*eyl[4]-0.75*(eyr[1]+eyl[1])+0.4330127018922193*eyr[0]-0.4330127018922193*eyl[0])*tau+(1.14564392373896*bzr[8]-1.14564392373896*bzl[8]-0.9682458365518543*(bzr[4]+bzl[4])+0.75*bzr[1]-0.75*bzl[1]-0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[2] = ((-0.5590169943749476*eyr[6])+0.5590169943749476*eyl[6]+0.4330127018922193*(eyr[3]+eyl[3])-0.25*eyr[2]+0.25*eyl[2])*tau+(0.5590169943749476*(bzr[6]+bzl[6])-0.4330127018922193*bzr[3]+0.4330127018922193*bzl[3]+0.25*(bzr[2]+bzl[2]))*c2; 
  incr[3] = (0.9682458365518543*eyr[6]-0.9682458365518543*eyl[6]-0.75*(eyr[3]+eyl[3])+0.4330127018922193*eyr[2]-0.4330127018922193*eyl[2])*tau+((-0.9682458365518543*(bzr[6]+bzl[6]))+0.75*bzr[3]-0.75*bzl[3]-0.4330127018922193*(bzr[2]+bzl[2]))*c2; 
  incr[4] = (1.479019945774904*(eyr[8]+eyl[8])-1.25*eyr[4]+1.25*eyl[4]+0.9682458365518543*(eyr[1]+eyl[1])-0.5590169943749475*eyr[0]+0.5590169943749475*eyl[0])*tau+((-1.479019945774904*bzr[8])+1.479019945774904*bzl[8]+1.25*(bzr[4]+bzl[4])-0.9682458365518543*bzr[1]+0.9682458365518543*bzl[1]+0.5590169943749475*(bzr[0]+bzl[0]))*c2; 
  incr[5] = (0.4330127018922194*(eyr[7]+eyl[7])-0.25*eyr[5]+0.25*eyl[5])*tau+((-0.4330127018922194*bzr[7])+0.4330127018922194*bzl[7]+0.25*(bzr[5]+bzl[5]))*c2; 
  incr[6] = ((-1.25*eyr[6])+1.25*eyl[6]+0.9682458365518543*(eyr[3]+eyl[3])-0.5590169943749476*eyr[2]+0.5590169943749476*eyl[2])*tau+(1.25*(bzr[6]+bzl[6])-0.9682458365518543*bzr[3]+0.9682458365518543*bzl[3]+0.5590169943749476*(bzr[2]+bzl[2]))*c2; 
  incr[7] = ((-0.75*(eyr[7]+eyl[7]))+0.4330127018922194*eyr[5]-0.4330127018922194*eyl[5])*tau+(0.75*bzr[7]-0.75*bzl[7]-0.4330127018922194*(bzr[5]+bzl[5]))*c2; 
  incr[8] = ((-1.75*(eyr[8]+eyl[8]))+1.479019945774904*eyr[4]-1.479019945774904*eyl[4]-1.14564392373896*(eyr[1]+eyl[1])+0.6614378277661477*eyr[0]-0.6614378277661477*eyl[0])*tau+(1.75*bzr[8]-1.75*bzl[8]-1.479019945774904*(bzr[4]+bzl[4])+1.14564392373896*bzr[1]-1.14564392373896*bzl[1]-0.6614378277661477*(bzr[0]+bzl[0]))*c2; 
  incr[9] = 0.25*(eyl[9]*tau+(bzr[9]+bzl[9])*c2)-0.25*eyr[9]*tau; 

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

 
  incr[0] = (0.6614378277661477*(ezr[8]+ezl[8])-0.5590169943749475*ezr[4]+0.5590169943749475*ezl[4]+0.4330127018922193*(ezr[1]+ezl[1])-0.25*ezr[0]+0.25*ezl[0])*tau+(0.6614378277661477*byr[8]-0.6614378277661477*byl[8]-0.5590169943749475*(byr[4]+byl[4])+0.4330127018922193*byr[1]-0.4330127018922193*byl[1]-0.25*(byr[0]+byl[0]))*c2; 
  incr[1] = ((-1.14564392373896*(ezr[8]+ezl[8]))+0.9682458365518543*ezr[4]-0.9682458365518543*ezl[4]-0.75*(ezr[1]+ezl[1])+0.4330127018922193*ezr[0]-0.4330127018922193*ezl[0])*tau+((-1.14564392373896*byr[8])+1.14564392373896*byl[8]+0.9682458365518543*(byr[4]+byl[4])-0.75*byr[1]+0.75*byl[1]+0.4330127018922193*(byr[0]+byl[0]))*c2; 
  incr[2] = ((-0.5590169943749476*ezr[6])+0.5590169943749476*ezl[6]+0.4330127018922193*(ezr[3]+ezl[3])-0.25*ezr[2]+0.25*ezl[2])*tau+((-0.5590169943749476*(byr[6]+byl[6]))+0.4330127018922193*byr[3]-0.4330127018922193*byl[3]-0.25*(byr[2]+byl[2]))*c2; 
  incr[3] = (0.9682458365518543*ezr[6]-0.9682458365518543*ezl[6]-0.75*(ezr[3]+ezl[3])+0.4330127018922193*ezr[2]-0.4330127018922193*ezl[2])*tau+(0.9682458365518543*(byr[6]+byl[6])-0.75*byr[3]+0.75*byl[3]+0.4330127018922193*(byr[2]+byl[2]))*c2; 
  incr[4] = (1.479019945774904*(ezr[8]+ezl[8])-1.25*ezr[4]+1.25*ezl[4]+0.9682458365518543*(ezr[1]+ezl[1])-0.5590169943749475*ezr[0]+0.5590169943749475*ezl[0])*tau+(1.479019945774904*byr[8]-1.479019945774904*byl[8]-1.25*(byr[4]+byl[4])+0.9682458365518543*byr[1]-0.9682458365518543*byl[1]-0.5590169943749475*(byr[0]+byl[0]))*c2; 
  incr[5] = (0.4330127018922194*(ezr[7]+ezl[7])-0.25*ezr[5]+0.25*ezl[5])*tau+(0.4330127018922194*byr[7]-0.4330127018922194*byl[7]-0.25*(byr[5]+byl[5]))*c2; 
  incr[6] = ((-1.25*ezr[6])+1.25*ezl[6]+0.9682458365518543*(ezr[3]+ezl[3])-0.5590169943749476*ezr[2]+0.5590169943749476*ezl[2])*tau+((-1.25*(byr[6]+byl[6]))+0.9682458365518543*byr[3]-0.9682458365518543*byl[3]-0.5590169943749476*(byr[2]+byl[2]))*c2; 
  incr[7] = ((-0.75*(ezr[7]+ezl[7]))+0.4330127018922194*ezr[5]-0.4330127018922194*ezl[5])*tau+((-0.75*byr[7])+0.75*byl[7]+0.4330127018922194*(byr[5]+byl[5]))*c2; 
  incr[8] = ((-1.75*(ezr[8]+ezl[8]))+1.479019945774904*ezr[4]-1.479019945774904*ezl[4]-1.14564392373896*(ezr[1]+ezl[1])+0.6614378277661477*ezr[0]-0.6614378277661477*ezl[0])*tau+((-1.75*byr[8])+1.75*byl[8]+1.479019945774904*(byr[4]+byl[4])-1.14564392373896*byr[1]+1.14564392373896*byl[1]+0.6614378277661477*(byr[0]+byl[0]))*c2; 
  incr[9] = (0.25*ezl[9]-0.25*ezr[9])*tau-0.25*(byr[9]+byl[9])*c2; 

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

 
  incr[0] = ((0.6614378277661477*(bxr[8]+bxl[8])-0.5590169943749475*bxr[4]+0.5590169943749475*bxl[4]+0.4330127018922193*(bxr[1]+bxl[1])-0.25*bxr[0]+0.25*bxl[0])*c-0.6614378277661477*psr[8]+0.6614378277661477*psl[8]+0.5590169943749475*(psr[4]+psl[4])-0.4330127018922193*psr[1]+0.4330127018922193*psl[1]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = (((-1.14564392373896*(bxr[8]+bxl[8]))+0.9682458365518543*bxr[4]-0.9682458365518543*bxl[4]-0.75*(bxr[1]+bxl[1])+0.4330127018922193*bxr[0]-0.4330127018922193*bxl[0])*c+1.14564392373896*psr[8]-1.14564392373896*psl[8]-0.9682458365518543*(psr[4]+psl[4])+0.75*psr[1]-0.75*psl[1]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[2] = (((-0.5590169943749476*bxr[6])+0.5590169943749476*bxl[6]+0.4330127018922193*(bxr[3]+bxl[3])-0.25*bxr[2]+0.25*bxl[2])*c+0.5590169943749476*(psr[6]+psl[6])-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[2]+psl[2]))*gamma; 
  incr[3] = ((0.9682458365518543*bxr[6]-0.9682458365518543*bxl[6]-0.75*(bxr[3]+bxl[3])+0.4330127018922193*bxr[2]-0.4330127018922193*bxl[2])*c-0.9682458365518543*(psr[6]+psl[6])+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[2]+psl[2]))*gamma; 
  incr[4] = ((1.479019945774904*(bxr[8]+bxl[8])-1.25*bxr[4]+1.25*bxl[4]+0.9682458365518543*(bxr[1]+bxl[1])-0.5590169943749475*bxr[0]+0.5590169943749475*bxl[0])*c-1.479019945774904*psr[8]+1.479019945774904*psl[8]+1.25*(psr[4]+psl[4])-0.9682458365518543*psr[1]+0.9682458365518543*psl[1]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 
  incr[5] = ((0.4330127018922194*(bxr[7]+bxl[7])-0.25*bxr[5]+0.25*bxl[5])*c-0.4330127018922194*psr[7]+0.4330127018922194*psl[7]+0.25*(psr[5]+psl[5]))*gamma; 
  incr[6] = (((-1.25*bxr[6])+1.25*bxl[6]+0.9682458365518543*(bxr[3]+bxl[3])-0.5590169943749476*bxr[2]+0.5590169943749476*bxl[2])*c+1.25*(psr[6]+psl[6])-0.9682458365518543*psr[3]+0.9682458365518543*psl[3]+0.5590169943749476*(psr[2]+psl[2]))*gamma; 
  incr[7] = (((-0.75*(bxr[7]+bxl[7]))+0.4330127018922194*bxr[5]-0.4330127018922194*bxl[5])*c+0.75*psr[7]-0.75*psl[7]-0.4330127018922194*(psr[5]+psl[5]))*gamma; 
  incr[8] = (((-1.75*(bxr[8]+bxl[8]))+1.479019945774904*bxr[4]-1.479019945774904*bxl[4]-1.14564392373896*(bxr[1]+bxl[1])+0.6614378277661477*bxr[0]-0.6614378277661477*bxl[0])*c+1.75*psr[8]-1.75*psl[8]-1.479019945774904*(psr[4]+psl[4])+1.14564392373896*psr[1]-1.14564392373896*psl[1]-0.6614378277661477*(psr[0]+psl[0]))*gamma; 
  incr[9] = (0.25*(bxl[9]*c+psr[9]+psl[9])-0.25*bxr[9]*c)*gamma; 

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

 
  incr[0] = ((0.6614378277661477*(byr[8]+byl[8])-0.5590169943749475*byr[4]+0.5590169943749475*byl[4]+0.4330127018922193*(byr[1]+byl[1])-0.25*byr[0]+0.25*byl[0])*c2)/tau+0.6614378277661477*ezr[8]-0.6614378277661477*ezl[8]-0.5590169943749475*(ezr[4]+ezl[4])+0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1]-0.25*(ezr[0]+ezl[0]); 
  incr[1] = (((-1.14564392373896*(byr[8]+byl[8]))+0.9682458365518543*byr[4]-0.9682458365518543*byl[4]-0.75*(byr[1]+byl[1])+0.4330127018922193*byr[0]-0.4330127018922193*byl[0])*c2)/tau-1.14564392373896*ezr[8]+1.14564392373896*ezl[8]+0.9682458365518543*(ezr[4]+ezl[4])-0.75*ezr[1]+0.75*ezl[1]+0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[2] = (((-0.5590169943749476*byr[6])+0.5590169943749476*byl[6]+0.4330127018922193*(byr[3]+byl[3])-0.25*byr[2]+0.25*byl[2])*c2)/tau-0.5590169943749476*(ezr[6]+ezl[6])+0.4330127018922193*ezr[3]-0.4330127018922193*ezl[3]-0.25*(ezr[2]+ezl[2]); 
  incr[3] = ((0.9682458365518543*byr[6]-0.9682458365518543*byl[6]-0.75*(byr[3]+byl[3])+0.4330127018922193*byr[2]-0.4330127018922193*byl[2])*c2)/tau+0.9682458365518543*(ezr[6]+ezl[6])-0.75*ezr[3]+0.75*ezl[3]+0.4330127018922193*(ezr[2]+ezl[2]); 
  incr[4] = ((1.479019945774904*(byr[8]+byl[8])-1.25*byr[4]+1.25*byl[4]+0.9682458365518543*(byr[1]+byl[1])-0.5590169943749475*byr[0]+0.5590169943749475*byl[0])*c2)/tau+1.479019945774904*ezr[8]-1.479019945774904*ezl[8]-1.25*(ezr[4]+ezl[4])+0.9682458365518543*ezr[1]-0.9682458365518543*ezl[1]-0.5590169943749475*(ezr[0]+ezl[0]); 
  incr[5] = ((0.4330127018922194*(byr[7]+byl[7])-0.25*byr[5]+0.25*byl[5])*c2)/tau+0.4330127018922194*ezr[7]-0.4330127018922194*ezl[7]-0.25*(ezr[5]+ezl[5]); 
  incr[6] = (((-1.25*byr[6])+1.25*byl[6]+0.9682458365518543*(byr[3]+byl[3])-0.5590169943749476*byr[2]+0.5590169943749476*byl[2])*c2)/tau-1.25*(ezr[6]+ezl[6])+0.9682458365518543*ezr[3]-0.9682458365518543*ezl[3]-0.5590169943749476*(ezr[2]+ezl[2]); 
  incr[7] = (((-0.75*(byr[7]+byl[7]))+0.4330127018922194*byr[5]-0.4330127018922194*byl[5])*c2)/tau-0.75*ezr[7]+0.75*ezl[7]+0.4330127018922194*(ezr[5]+ezl[5]); 
  incr[8] = (((-1.75*(byr[8]+byl[8]))+1.479019945774904*byr[4]-1.479019945774904*byl[4]-1.14564392373896*(byr[1]+byl[1])+0.6614378277661477*byr[0]-0.6614378277661477*byl[0])*c2)/tau-1.75*ezr[8]+1.75*ezl[8]+1.479019945774904*(ezr[4]+ezl[4])-1.14564392373896*ezr[1]+1.14564392373896*ezl[1]+0.6614378277661477*(ezr[0]+ezl[0]); 
  incr[9] = ((0.25*byl[9]-0.25*byr[9])*c2)/tau-0.25*(ezr[9]+ezl[9]); 

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

 
  incr[0] = ((0.6614378277661477*(bzr[8]+bzl[8])-0.5590169943749475*bzr[4]+0.5590169943749475*bzl[4]+0.4330127018922193*(bzr[1]+bzl[1])-0.25*bzr[0]+0.25*bzl[0])*c2)/tau-0.6614378277661477*eyr[8]+0.6614378277661477*eyl[8]+0.5590169943749475*(eyr[4]+eyl[4])-0.4330127018922193*eyr[1]+0.4330127018922193*eyl[1]+0.25*(eyr[0]+eyl[0]); 
  incr[1] = (((-1.14564392373896*(bzr[8]+bzl[8]))+0.9682458365518543*bzr[4]-0.9682458365518543*bzl[4]-0.75*(bzr[1]+bzl[1])+0.4330127018922193*bzr[0]-0.4330127018922193*bzl[0])*c2)/tau+1.14564392373896*eyr[8]-1.14564392373896*eyl[8]-0.9682458365518543*(eyr[4]+eyl[4])+0.75*eyr[1]-0.75*eyl[1]-0.4330127018922193*(eyr[0]+eyl[0]); 
  incr[2] = (((-0.5590169943749476*bzr[6])+0.5590169943749476*bzl[6]+0.4330127018922193*(bzr[3]+bzl[3])-0.25*bzr[2]+0.25*bzl[2])*c2)/tau+0.5590169943749476*(eyr[6]+eyl[6])-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[2]+eyl[2]); 
  incr[3] = ((0.9682458365518543*bzr[6]-0.9682458365518543*bzl[6]-0.75*(bzr[3]+bzl[3])+0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2])*c2)/tau-0.9682458365518543*(eyr[6]+eyl[6])+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[2]+eyl[2]); 
  incr[4] = ((1.479019945774904*(bzr[8]+bzl[8])-1.25*bzr[4]+1.25*bzl[4]+0.9682458365518543*(bzr[1]+bzl[1])-0.5590169943749475*bzr[0]+0.5590169943749475*bzl[0])*c2)/tau-1.479019945774904*eyr[8]+1.479019945774904*eyl[8]+1.25*(eyr[4]+eyl[4])-0.9682458365518543*eyr[1]+0.9682458365518543*eyl[1]+0.5590169943749475*(eyr[0]+eyl[0]); 
  incr[5] = ((0.4330127018922194*(bzr[7]+bzl[7])-0.25*bzr[5]+0.25*bzl[5])*c2)/tau-0.4330127018922194*eyr[7]+0.4330127018922194*eyl[7]+0.25*(eyr[5]+eyl[5]); 
  incr[6] = (((-1.25*bzr[6])+1.25*bzl[6]+0.9682458365518543*(bzr[3]+bzl[3])-0.5590169943749476*bzr[2]+0.5590169943749476*bzl[2])*c2)/tau+1.25*(eyr[6]+eyl[6])-0.9682458365518543*eyr[3]+0.9682458365518543*eyl[3]+0.5590169943749476*(eyr[2]+eyl[2]); 
  incr[7] = (((-0.75*(bzr[7]+bzl[7]))+0.4330127018922194*bzr[5]-0.4330127018922194*bzl[5])*c2)/tau+0.75*eyr[7]-0.75*eyl[7]-0.4330127018922194*(eyr[5]+eyl[5]); 
  incr[8] = (((-1.75*(bzr[8]+bzl[8]))+1.479019945774904*bzr[4]-1.479019945774904*bzl[4]-1.14564392373896*(bzr[1]+bzl[1])+0.6614378277661477*bzr[0]-0.6614378277661477*bzl[0])*c2)/tau+1.75*eyr[8]-1.75*eyl[8]-1.479019945774904*(eyr[4]+eyl[4])+1.14564392373896*eyr[1]-1.14564392373896*eyl[1]-0.6614378277661477*(eyr[0]+eyl[0]); 
  incr[9] = ((0.25*bzl[9]-0.25*bzr[9])*c2)/tau+0.25*(eyr[9]+eyl[9]); 

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

 
  incr[0] = ((0.6614378277661477*(phr[8]+phl[8])-0.5590169943749475*phr[4]+0.5590169943749475*phl[4]+0.4330127018922193*(phr[1]+phl[1])-0.25*phr[0]+0.25*phl[0])*c-0.6614378277661477*exr[8]+0.6614378277661477*exl[8]+0.5590169943749475*(exr[4]+exl[4])-0.4330127018922193*exr[1]+0.4330127018922193*exl[1]+0.25*(exr[0]+exl[0]))*chi; 
  incr[1] = (((-1.14564392373896*(phr[8]+phl[8]))+0.9682458365518543*phr[4]-0.9682458365518543*phl[4]-0.75*(phr[1]+phl[1])+0.4330127018922193*phr[0]-0.4330127018922193*phl[0])*c+1.14564392373896*exr[8]-1.14564392373896*exl[8]-0.9682458365518543*(exr[4]+exl[4])+0.75*exr[1]-0.75*exl[1]-0.4330127018922193*(exr[0]+exl[0]))*chi; 
  incr[2] = (((-0.5590169943749476*phr[6])+0.5590169943749476*phl[6]+0.4330127018922193*(phr[3]+phl[3])-0.25*phr[2]+0.25*phl[2])*c+0.5590169943749476*(exr[6]+exl[6])-0.4330127018922193*exr[3]+0.4330127018922193*exl[3]+0.25*(exr[2]+exl[2]))*chi; 
  incr[3] = ((0.9682458365518543*phr[6]-0.9682458365518543*phl[6]-0.75*(phr[3]+phl[3])+0.4330127018922193*phr[2]-0.4330127018922193*phl[2])*c-0.9682458365518543*(exr[6]+exl[6])+0.75*exr[3]-0.75*exl[3]-0.4330127018922193*(exr[2]+exl[2]))*chi; 
  incr[4] = ((1.479019945774904*(phr[8]+phl[8])-1.25*phr[4]+1.25*phl[4]+0.9682458365518543*(phr[1]+phl[1])-0.5590169943749475*phr[0]+0.5590169943749475*phl[0])*c-1.479019945774904*exr[8]+1.479019945774904*exl[8]+1.25*(exr[4]+exl[4])-0.9682458365518543*exr[1]+0.9682458365518543*exl[1]+0.5590169943749475*(exr[0]+exl[0]))*chi; 
  incr[5] = ((0.4330127018922194*(phr[7]+phl[7])-0.25*phr[5]+0.25*phl[5])*c-0.4330127018922194*exr[7]+0.4330127018922194*exl[7]+0.25*(exr[5]+exl[5]))*chi; 
  incr[6] = (((-1.25*phr[6])+1.25*phl[6]+0.9682458365518543*(phr[3]+phl[3])-0.5590169943749476*phr[2]+0.5590169943749476*phl[2])*c+1.25*(exr[6]+exl[6])-0.9682458365518543*exr[3]+0.9682458365518543*exl[3]+0.5590169943749476*(exr[2]+exl[2]))*chi; 
  incr[7] = (((-0.75*(phr[7]+phl[7]))+0.4330127018922194*phr[5]-0.4330127018922194*phl[5])*c+0.75*exr[7]-0.75*exl[7]-0.4330127018922194*(exr[5]+exl[5]))*chi; 
  incr[8] = (((-1.75*(phr[8]+phl[8]))+1.479019945774904*phr[4]-1.479019945774904*phl[4]-1.14564392373896*(phr[1]+phl[1])+0.6614378277661477*phr[0]-0.6614378277661477*phl[0])*c+1.75*exr[8]-1.75*exl[8]-1.479019945774904*(exr[4]+exl[4])+1.14564392373896*exr[1]-1.14564392373896*exl[1]-0.6614378277661477*(exr[0]+exl[0]))*chi; 
  incr[9] = (0.25*(phl[9]*c+exr[9]+exl[9])-0.25*phr[9]*c)*chi; 

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

 
  incr[0] = (0.6614378277661477*(psr[8]+psl[8])-0.5590169943749475*psr[4]+0.5590169943749475*psl[4]+0.4330127018922193*(psr[1]+psl[1])-0.25*psr[0]+0.25*psl[0])*c*gamma+((-0.6614378277661477*bxr[8])+0.6614378277661477*bxl[8]+0.5590169943749475*(bxr[4]+bxl[4])-0.4330127018922193*bxr[1]+0.4330127018922193*bxl[1]+0.25*(bxr[0]+bxl[0]))*c2gamma; 
  incr[1] = ((-1.14564392373896*(psr[8]+psl[8]))+0.9682458365518543*psr[4]-0.9682458365518543*psl[4]-0.75*(psr[1]+psl[1])+0.4330127018922193*psr[0]-0.4330127018922193*psl[0])*c*gamma+(1.14564392373896*bxr[8]-1.14564392373896*bxl[8]-0.9682458365518543*(bxr[4]+bxl[4])+0.75*bxr[1]-0.75*bxl[1]-0.4330127018922193*(bxr[0]+bxl[0]))*c2gamma; 
  incr[2] = ((-0.5590169943749476*psr[6])+0.5590169943749476*psl[6]+0.4330127018922193*(psr[3]+psl[3])-0.25*psr[2]+0.25*psl[2])*c*gamma+(0.5590169943749476*(bxr[6]+bxl[6])-0.4330127018922193*bxr[3]+0.4330127018922193*bxl[3]+0.25*(bxr[2]+bxl[2]))*c2gamma; 
  incr[3] = (0.9682458365518543*psr[6]-0.9682458365518543*psl[6]-0.75*(psr[3]+psl[3])+0.4330127018922193*psr[2]-0.4330127018922193*psl[2])*c*gamma+((-0.9682458365518543*(bxr[6]+bxl[6]))+0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[2]+bxl[2]))*c2gamma; 
  incr[4] = (1.479019945774904*(psr[8]+psl[8])-1.25*psr[4]+1.25*psl[4]+0.9682458365518543*(psr[1]+psl[1])-0.5590169943749475*psr[0]+0.5590169943749475*psl[0])*c*gamma+((-1.479019945774904*bxr[8])+1.479019945774904*bxl[8]+1.25*(bxr[4]+bxl[4])-0.9682458365518543*bxr[1]+0.9682458365518543*bxl[1]+0.5590169943749475*(bxr[0]+bxl[0]))*c2gamma; 
  incr[5] = (0.4330127018922194*(psr[7]+psl[7])-0.25*psr[5]+0.25*psl[5])*c*gamma+((-0.4330127018922194*bxr[7])+0.4330127018922194*bxl[7]+0.25*(bxr[5]+bxl[5]))*c2gamma; 
  incr[6] = ((-1.25*psr[6])+1.25*psl[6]+0.9682458365518543*(psr[3]+psl[3])-0.5590169943749476*psr[2]+0.5590169943749476*psl[2])*c*gamma+(1.25*(bxr[6]+bxl[6])-0.9682458365518543*bxr[3]+0.9682458365518543*bxl[3]+0.5590169943749476*(bxr[2]+bxl[2]))*c2gamma; 
  incr[7] = ((-0.75*(psr[7]+psl[7]))+0.4330127018922194*psr[5]-0.4330127018922194*psl[5])*c*gamma+(0.75*bxr[7]-0.75*bxl[7]-0.4330127018922194*(bxr[5]+bxl[5]))*c2gamma; 
  incr[8] = ((-1.75*(psr[8]+psl[8]))+1.479019945774904*psr[4]-1.479019945774904*psl[4]-1.14564392373896*(psr[1]+psl[1])+0.6614378277661477*psr[0]-0.6614378277661477*psl[0])*c*gamma+(1.75*bxr[8]-1.75*bxl[8]-1.479019945774904*(bxr[4]+bxl[4])+1.14564392373896*bxr[1]-1.14564392373896*bxl[1]-0.6614378277661477*(bxr[0]+bxl[0]))*c2gamma; 
  incr[9] = (0.25*psl[9]-0.25*psr[9])*c*gamma+0.25*(bxr[9]+bxl[9])*c2gamma; 

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

 
  return std::fmax(c, tau); 
} 
double MaxwellSurf2xMax_Y_P1(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[1]; 
  const double dxr1 = 2.0/dxr[1]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[3]; 
  const double *ezl = &ql[6]; 
  const double *bxl = &ql[9]; 
  const double *byl = &ql[12]; 
  const double *bzl = &ql[15]; 
  const double *phl = &ql[18]; 
  const double *psl = &ql[21]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[3]; 
  double *outEzl = &outl[6]; 
  double *outBxl = &outl[9]; 
  double *outByl = &outl[12]; 
  double *outBzl = &outl[15]; 
  double *outPhl = &outl[18]; 
  double *outPsl = &outl[21]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[3]; 
  const double *ezr = &qr[6]; 
  const double *bxr = &qr[9]; 
  const double *byr = &qr[12]; 
  const double *bzr = &qr[15]; 
  const double *phr = &qr[18]; 
  const double *psr = &qr[21]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[3]; 
  double *outEzr = &outr[6]; 
  double *outBxr = &outr[9]; 
  double *outByr = &outr[12]; 
  double *outBzr = &outr[15]; 
  double *outPhr = &outr[18]; 
  double *outPsr = &outr[21]; 
 
  double incr[3]; 
 
  incr[0] = (0.4330127018922193*(exr[2]+exl[2])-0.25*exr[0]+0.25*exl[0])*tau+(0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2]-0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = (0.25*exl[1]-0.25*exr[1])*tau-0.25*(bzr[1]+bzl[1])*c2; 
  incr[2] = ((-0.75*(exr[2]+exl[2]))+0.4330127018922193*exr[0]-0.4330127018922193*exl[0])*tau+((-0.75*bzr[2])+0.75*bzl[2]+0.4330127018922193*(bzr[0]+bzl[0]))*c2; 

  outExr[0] += incr[0]*dxr1; 
  outExr[1] += incr[1]*dxr1; 
  outExr[2] += incr[2]*dxr1; 

  outExl[0] += -1.0*incr[0]*dxl1; 
  outExl[1] += -1.0*incr[1]*dxl1; 
  outExl[2] += incr[2]*dxl1; 

 
  incr[0] = (0.4330127018922193*(eyr[2]+eyl[2])-0.25*eyr[0]+0.25*eyl[0])*c*chi+((-0.4330127018922193*phr[2])+0.4330127018922193*phl[2]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = (0.25*eyl[1]-0.25*eyr[1])*c*chi+0.25*(phr[1]+phl[1])*c2chi; 
  incr[2] = ((-0.75*(eyr[2]+eyl[2]))+0.4330127018922193*eyr[0]-0.4330127018922193*eyl[0])*c*chi+(0.75*phr[2]-0.75*phl[2]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 

  outEyr[0] += incr[0]*dxr1; 
  outEyr[1] += incr[1]*dxr1; 
  outEyr[2] += incr[2]*dxr1; 

  outEyl[0] += -1.0*incr[0]*dxl1; 
  outEyl[1] += -1.0*incr[1]*dxl1; 
  outEyl[2] += incr[2]*dxl1; 

 
  incr[0] = (0.4330127018922193*(ezr[2]+ezl[2])-0.25*ezr[0]+0.25*ezl[0])*tau+((-0.4330127018922193*bxr[2])+0.4330127018922193*bxl[2]+0.25*(bxr[0]+bxl[0]))*c2; 
  incr[1] = 0.25*(ezl[1]*tau+(bxr[1]+bxl[1])*c2)-0.25*ezr[1]*tau; 
  incr[2] = ((-0.75*(ezr[2]+ezl[2]))+0.4330127018922193*ezr[0]-0.4330127018922193*ezl[0])*tau+(0.75*bxr[2]-0.75*bxl[2]-0.4330127018922193*(bxr[0]+bxl[0]))*c2; 

  outEzr[0] += incr[0]*dxr1; 
  outEzr[1] += incr[1]*dxr1; 
  outEzr[2] += incr[2]*dxr1; 

  outEzl[0] += -1.0*incr[0]*dxl1; 
  outEzl[1] += -1.0*incr[1]*dxl1; 
  outEzl[2] += incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(bxr[2]+bxl[2])-0.25*bxr[0]+0.25*bxl[0])*c2)/tau-0.4330127018922193*ezr[2]+0.4330127018922193*ezl[2]+0.25*(ezr[0]+ezl[0]); 
  incr[1] = ((0.25*bxl[1]-0.25*bxr[1])*c2)/tau+0.25*(ezr[1]+ezl[1]); 
  incr[2] = (((-0.75*(bxr[2]+bxl[2]))+0.4330127018922193*bxr[0]-0.4330127018922193*bxl[0])*c2)/tau+0.75*ezr[2]-0.75*ezl[2]-0.4330127018922193*(ezr[0]+ezl[0]); 

  outBxr[0] += incr[0]*dxr1; 
  outBxr[1] += incr[1]*dxr1; 
  outBxr[2] += incr[2]*dxr1; 

  outBxl[0] += -1.0*incr[0]*dxl1; 
  outBxl[1] += -1.0*incr[1]*dxl1; 
  outBxl[2] += incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(byr[2]+byl[2])-0.25*byr[0]+0.25*byl[0])*c-0.4330127018922193*psr[2]+0.4330127018922193*psl[2]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = (0.25*(byl[1]*c+psr[1]+psl[1])-0.25*byr[1]*c)*gamma; 
  incr[2] = (((-0.75*(byr[2]+byl[2]))+0.4330127018922193*byr[0]-0.4330127018922193*byl[0])*c+0.75*psr[2]-0.75*psl[2]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 

  outByr[0] += incr[0]*dxr1; 
  outByr[1] += incr[1]*dxr1; 
  outByr[2] += incr[2]*dxr1; 

  outByl[0] += -1.0*incr[0]*dxl1; 
  outByl[1] += -1.0*incr[1]*dxl1; 
  outByl[2] += incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(bzr[2]+bzl[2])-0.25*bzr[0]+0.25*bzl[0])*c2)/tau+0.4330127018922193*exr[2]-0.4330127018922193*exl[2]-0.25*(exr[0]+exl[0]); 
  incr[1] = ((0.25*bzl[1]-0.25*bzr[1])*c2)/tau-0.25*(exr[1]+exl[1]); 
  incr[2] = (((-0.75*(bzr[2]+bzl[2]))+0.4330127018922193*bzr[0]-0.4330127018922193*bzl[0])*c2)/tau-0.75*exr[2]+0.75*exl[2]+0.4330127018922193*(exr[0]+exl[0]); 

  outBzr[0] += incr[0]*dxr1; 
  outBzr[1] += incr[1]*dxr1; 
  outBzr[2] += incr[2]*dxr1; 

  outBzl[0] += -1.0*incr[0]*dxl1; 
  outBzl[1] += -1.0*incr[1]*dxl1; 
  outBzl[2] += incr[2]*dxl1; 

 
  incr[0] = ((0.4330127018922193*(phr[2]+phl[2])-0.25*phr[0]+0.25*phl[0])*c-0.4330127018922193*eyr[2]+0.4330127018922193*eyl[2]+0.25*(eyr[0]+eyl[0]))*chi; 
  incr[1] = (0.25*(phl[1]*c+eyr[1]+eyl[1])-0.25*phr[1]*c)*chi; 
  incr[2] = (((-0.75*(phr[2]+phl[2]))+0.4330127018922193*phr[0]-0.4330127018922193*phl[0])*c+0.75*eyr[2]-0.75*eyl[2]-0.4330127018922193*(eyr[0]+eyl[0]))*chi; 

  outPhr[0] += incr[0]*dxr1; 
  outPhr[1] += incr[1]*dxr1; 
  outPhr[2] += incr[2]*dxr1; 

  outPhl[0] += -1.0*incr[0]*dxl1; 
  outPhl[1] += -1.0*incr[1]*dxl1; 
  outPhl[2] += incr[2]*dxl1; 

 
  incr[0] = (0.4330127018922193*(psr[2]+psl[2])-0.25*psr[0]+0.25*psl[0])*c*gamma+((-0.4330127018922193*byr[2])+0.4330127018922193*byl[2]+0.25*(byr[0]+byl[0]))*c2gamma; 
  incr[1] = (0.25*psl[1]-0.25*psr[1])*c*gamma+0.25*(byr[1]+byl[1])*c2gamma; 
  incr[2] = ((-0.75*(psr[2]+psl[2]))+0.4330127018922193*psr[0]-0.4330127018922193*psl[0])*c*gamma+(0.75*byr[2]-0.75*byl[2]-0.4330127018922193*(byr[0]+byl[0]))*c2gamma; 

  outPsr[0] += incr[0]*dxr1; 
  outPsr[1] += incr[1]*dxr1; 
  outPsr[2] += incr[2]*dxr1; 

  outPsl[0] += -1.0*incr[0]*dxl1; 
  outPsl[1] += -1.0*incr[1]*dxl1; 
  outPsl[2] += incr[2]*dxl1; 

 
  return std::fmax(c, tau); 
} 
double MaxwellSurf2xMax_Y_P2(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
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
double MaxwellSurf2xMax_Y_P3(const MaxwellEq_t *meq, const double *wl, const double *wr, const double *dxl, const double *dxr, const double tau, const double *ql, const double *qr, double *outl, double *outr) 
{ 
  const double c = meq->c, chi = meq->chi, gamma = meq->gamma; 
  const double c2 = c*c; 
  const double c2chi = c2*chi, c2gamma = c2*gamma; 
 
  const double dxl1 = 2.0/dxl[1]; 
  const double dxr1 = 2.0/dxr[1]; 
  const double *exl = &ql[0]; 
  const double *eyl = &ql[10]; 
  const double *ezl = &ql[20]; 
  const double *bxl = &ql[30]; 
  const double *byl = &ql[40]; 
  const double *bzl = &ql[50]; 
  const double *phl = &ql[60]; 
  const double *psl = &ql[70]; 
 
  double *outExl = &outl[0]; 
  double *outEyl = &outl[10]; 
  double *outEzl = &outl[20]; 
  double *outBxl = &outl[30]; 
  double *outByl = &outl[40]; 
  double *outBzl = &outl[50]; 
  double *outPhl = &outl[60]; 
  double *outPsl = &outl[70]; 
 
  const double *exr = &qr[0]; 
  const double *eyr = &qr[10]; 
  const double *ezr = &qr[20]; 
  const double *bxr = &qr[30]; 
  const double *byr = &qr[40]; 
  const double *bzr = &qr[50]; 
  const double *phr = &qr[60]; 
  const double *psr = &qr[70]; 
 
  double *outExr = &outr[0]; 
  double *outEyr = &outr[10]; 
  double *outEzr = &outr[20]; 
  double *outBxr = &outr[30]; 
  double *outByr = &outr[40]; 
  double *outBzr = &outr[50]; 
  double *outPhr = &outr[60]; 
  double *outPsr = &outr[70]; 
 
  double incr[10]; 
 
  incr[0] = (0.6614378277661477*(exr[9]+exl[9])-0.5590169943749475*exr[5]+0.5590169943749475*exl[5]+0.4330127018922193*(exr[2]+exl[2])-0.25*exr[0]+0.25*exl[0])*tau+(0.6614378277661477*bzr[9]-0.6614378277661477*bzl[9]-0.5590169943749475*(bzr[5]+bzl[5])+0.4330127018922193*bzr[2]-0.4330127018922193*bzl[2]-0.25*(bzr[0]+bzl[0]))*c2; 
  incr[1] = ((-0.5590169943749476*exr[7])+0.5590169943749476*exl[7]+0.4330127018922193*(exr[3]+exl[3])-0.25*exr[1]+0.25*exl[1])*tau+((-0.5590169943749476*(bzr[7]+bzl[7]))+0.4330127018922193*bzr[3]-0.4330127018922193*bzl[3]-0.25*(bzr[1]+bzl[1]))*c2; 
  incr[2] = ((-1.14564392373896*(exr[9]+exl[9]))+0.9682458365518543*exr[5]-0.9682458365518543*exl[5]-0.75*(exr[2]+exl[2])+0.4330127018922193*exr[0]-0.4330127018922193*exl[0])*tau+((-1.14564392373896*bzr[9])+1.14564392373896*bzl[9]+0.9682458365518543*(bzr[5]+bzl[5])-0.75*bzr[2]+0.75*bzl[2]+0.4330127018922193*(bzr[0]+bzl[0]))*c2; 
  incr[3] = (0.9682458365518543*exr[7]-0.9682458365518543*exl[7]-0.75*(exr[3]+exl[3])+0.4330127018922193*exr[1]-0.4330127018922193*exl[1])*tau+(0.9682458365518543*(bzr[7]+bzl[7])-0.75*bzr[3]+0.75*bzl[3]+0.4330127018922193*(bzr[1]+bzl[1]))*c2; 
  incr[4] = (0.4330127018922194*(exr[6]+exl[6])-0.25*exr[4]+0.25*exl[4])*tau+(0.4330127018922194*bzr[6]-0.4330127018922194*bzl[6]-0.25*(bzr[4]+bzl[4]))*c2; 
  incr[5] = (1.479019945774904*(exr[9]+exl[9])-1.25*exr[5]+1.25*exl[5]+0.9682458365518543*(exr[2]+exl[2])-0.5590169943749475*exr[0]+0.5590169943749475*exl[0])*tau+(1.479019945774904*bzr[9]-1.479019945774904*bzl[9]-1.25*(bzr[5]+bzl[5])+0.9682458365518543*bzr[2]-0.9682458365518543*bzl[2]-0.5590169943749475*(bzr[0]+bzl[0]))*c2; 
  incr[6] = ((-0.75*(exr[6]+exl[6]))+0.4330127018922194*exr[4]-0.4330127018922194*exl[4])*tau+((-0.75*bzr[6])+0.75*bzl[6]+0.4330127018922194*(bzr[4]+bzl[4]))*c2; 
  incr[7] = ((-1.25*exr[7])+1.25*exl[7]+0.9682458365518543*(exr[3]+exl[3])-0.5590169943749476*exr[1]+0.5590169943749476*exl[1])*tau+((-1.25*(bzr[7]+bzl[7]))+0.9682458365518543*bzr[3]-0.9682458365518543*bzl[3]-0.5590169943749476*(bzr[1]+bzl[1]))*c2; 
  incr[8] = (0.25*exl[8]-0.25*exr[8])*tau-0.25*(bzr[8]+bzl[8])*c2; 
  incr[9] = ((-1.75*(exr[9]+exl[9]))+1.479019945774904*exr[5]-1.479019945774904*exl[5]-1.14564392373896*(exr[2]+exl[2])+0.6614378277661477*exr[0]-0.6614378277661477*exl[0])*tau+((-1.75*bzr[9])+1.75*bzl[9]+1.479019945774904*(bzr[5]+bzl[5])-1.14564392373896*bzr[2]+1.14564392373896*bzl[2]+0.6614378277661477*(bzr[0]+bzl[0]))*c2; 

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

 
  incr[0] = (0.6614378277661477*(eyr[9]+eyl[9])-0.5590169943749475*eyr[5]+0.5590169943749475*eyl[5]+0.4330127018922193*(eyr[2]+eyl[2])-0.25*eyr[0]+0.25*eyl[0])*c*chi+((-0.6614378277661477*phr[9])+0.6614378277661477*phl[9]+0.5590169943749475*(phr[5]+phl[5])-0.4330127018922193*phr[2]+0.4330127018922193*phl[2]+0.25*(phr[0]+phl[0]))*c2chi; 
  incr[1] = ((-0.5590169943749476*eyr[7])+0.5590169943749476*eyl[7]+0.4330127018922193*(eyr[3]+eyl[3])-0.25*eyr[1]+0.25*eyl[1])*c*chi+(0.5590169943749476*(phr[7]+phl[7])-0.4330127018922193*phr[3]+0.4330127018922193*phl[3]+0.25*(phr[1]+phl[1]))*c2chi; 
  incr[2] = ((-1.14564392373896*(eyr[9]+eyl[9]))+0.9682458365518543*eyr[5]-0.9682458365518543*eyl[5]-0.75*(eyr[2]+eyl[2])+0.4330127018922193*eyr[0]-0.4330127018922193*eyl[0])*c*chi+(1.14564392373896*phr[9]-1.14564392373896*phl[9]-0.9682458365518543*(phr[5]+phl[5])+0.75*phr[2]-0.75*phl[2]-0.4330127018922193*(phr[0]+phl[0]))*c2chi; 
  incr[3] = (0.9682458365518543*eyr[7]-0.9682458365518543*eyl[7]-0.75*(eyr[3]+eyl[3])+0.4330127018922193*eyr[1]-0.4330127018922193*eyl[1])*c*chi+((-0.9682458365518543*(phr[7]+phl[7]))+0.75*phr[3]-0.75*phl[3]-0.4330127018922193*(phr[1]+phl[1]))*c2chi; 
  incr[4] = (0.4330127018922194*(eyr[6]+eyl[6])-0.25*eyr[4]+0.25*eyl[4])*c*chi+((-0.4330127018922194*phr[6])+0.4330127018922194*phl[6]+0.25*(phr[4]+phl[4]))*c2chi; 
  incr[5] = (1.479019945774904*(eyr[9]+eyl[9])-1.25*eyr[5]+1.25*eyl[5]+0.9682458365518543*(eyr[2]+eyl[2])-0.5590169943749475*eyr[0]+0.5590169943749475*eyl[0])*c*chi+((-1.479019945774904*phr[9])+1.479019945774904*phl[9]+1.25*(phr[5]+phl[5])-0.9682458365518543*phr[2]+0.9682458365518543*phl[2]+0.5590169943749475*(phr[0]+phl[0]))*c2chi; 
  incr[6] = ((-0.75*(eyr[6]+eyl[6]))+0.4330127018922194*eyr[4]-0.4330127018922194*eyl[4])*c*chi+(0.75*phr[6]-0.75*phl[6]-0.4330127018922194*(phr[4]+phl[4]))*c2chi; 
  incr[7] = ((-1.25*eyr[7])+1.25*eyl[7]+0.9682458365518543*(eyr[3]+eyl[3])-0.5590169943749476*eyr[1]+0.5590169943749476*eyl[1])*c*chi+(1.25*(phr[7]+phl[7])-0.9682458365518543*phr[3]+0.9682458365518543*phl[3]+0.5590169943749476*(phr[1]+phl[1]))*c2chi; 
  incr[8] = (0.25*eyl[8]-0.25*eyr[8])*c*chi+0.25*(phr[8]+phl[8])*c2chi; 
  incr[9] = ((-1.75*(eyr[9]+eyl[9]))+1.479019945774904*eyr[5]-1.479019945774904*eyl[5]-1.14564392373896*(eyr[2]+eyl[2])+0.6614378277661477*eyr[0]-0.6614378277661477*eyl[0])*c*chi+(1.75*phr[9]-1.75*phl[9]-1.479019945774904*(phr[5]+phl[5])+1.14564392373896*phr[2]-1.14564392373896*phl[2]-0.6614378277661477*(phr[0]+phl[0]))*c2chi; 

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

 
  incr[0] = (0.6614378277661477*(ezr[9]+ezl[9])-0.5590169943749475*ezr[5]+0.5590169943749475*ezl[5]+0.4330127018922193*(ezr[2]+ezl[2])-0.25*ezr[0]+0.25*ezl[0])*tau+((-0.6614378277661477*bxr[9])+0.6614378277661477*bxl[9]+0.5590169943749475*(bxr[5]+bxl[5])-0.4330127018922193*bxr[2]+0.4330127018922193*bxl[2]+0.25*(bxr[0]+bxl[0]))*c2; 
  incr[1] = ((-0.5590169943749476*ezr[7])+0.5590169943749476*ezl[7]+0.4330127018922193*(ezr[3]+ezl[3])-0.25*ezr[1]+0.25*ezl[1])*tau+(0.5590169943749476*(bxr[7]+bxl[7])-0.4330127018922193*bxr[3]+0.4330127018922193*bxl[3]+0.25*(bxr[1]+bxl[1]))*c2; 
  incr[2] = ((-1.14564392373896*(ezr[9]+ezl[9]))+0.9682458365518543*ezr[5]-0.9682458365518543*ezl[5]-0.75*(ezr[2]+ezl[2])+0.4330127018922193*ezr[0]-0.4330127018922193*ezl[0])*tau+(1.14564392373896*bxr[9]-1.14564392373896*bxl[9]-0.9682458365518543*(bxr[5]+bxl[5])+0.75*bxr[2]-0.75*bxl[2]-0.4330127018922193*(bxr[0]+bxl[0]))*c2; 
  incr[3] = (0.9682458365518543*ezr[7]-0.9682458365518543*ezl[7]-0.75*(ezr[3]+ezl[3])+0.4330127018922193*ezr[1]-0.4330127018922193*ezl[1])*tau+((-0.9682458365518543*(bxr[7]+bxl[7]))+0.75*bxr[3]-0.75*bxl[3]-0.4330127018922193*(bxr[1]+bxl[1]))*c2; 
  incr[4] = (0.4330127018922194*(ezr[6]+ezl[6])-0.25*ezr[4]+0.25*ezl[4])*tau+((-0.4330127018922194*bxr[6])+0.4330127018922194*bxl[6]+0.25*(bxr[4]+bxl[4]))*c2; 
  incr[5] = (1.479019945774904*(ezr[9]+ezl[9])-1.25*ezr[5]+1.25*ezl[5]+0.9682458365518543*(ezr[2]+ezl[2])-0.5590169943749475*ezr[0]+0.5590169943749475*ezl[0])*tau+((-1.479019945774904*bxr[9])+1.479019945774904*bxl[9]+1.25*(bxr[5]+bxl[5])-0.9682458365518543*bxr[2]+0.9682458365518543*bxl[2]+0.5590169943749475*(bxr[0]+bxl[0]))*c2; 
  incr[6] = ((-0.75*(ezr[6]+ezl[6]))+0.4330127018922194*ezr[4]-0.4330127018922194*ezl[4])*tau+(0.75*bxr[6]-0.75*bxl[6]-0.4330127018922194*(bxr[4]+bxl[4]))*c2; 
  incr[7] = ((-1.25*ezr[7])+1.25*ezl[7]+0.9682458365518543*(ezr[3]+ezl[3])-0.5590169943749476*ezr[1]+0.5590169943749476*ezl[1])*tau+(1.25*(bxr[7]+bxl[7])-0.9682458365518543*bxr[3]+0.9682458365518543*bxl[3]+0.5590169943749476*(bxr[1]+bxl[1]))*c2; 
  incr[8] = 0.25*(ezl[8]*tau+(bxr[8]+bxl[8])*c2)-0.25*ezr[8]*tau; 
  incr[9] = ((-1.75*(ezr[9]+ezl[9]))+1.479019945774904*ezr[5]-1.479019945774904*ezl[5]-1.14564392373896*(ezr[2]+ezl[2])+0.6614378277661477*ezr[0]-0.6614378277661477*ezl[0])*tau+(1.75*bxr[9]-1.75*bxl[9]-1.479019945774904*(bxr[5]+bxl[5])+1.14564392373896*bxr[2]-1.14564392373896*bxl[2]-0.6614378277661477*(bxr[0]+bxl[0]))*c2; 

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

 
  incr[0] = ((0.6614378277661477*(bxr[9]+bxl[9])-0.5590169943749475*bxr[5]+0.5590169943749475*bxl[5]+0.4330127018922193*(bxr[2]+bxl[2])-0.25*bxr[0]+0.25*bxl[0])*c2)/tau-0.6614378277661477*ezr[9]+0.6614378277661477*ezl[9]+0.5590169943749475*(ezr[5]+ezl[5])-0.4330127018922193*ezr[2]+0.4330127018922193*ezl[2]+0.25*(ezr[0]+ezl[0]); 
  incr[1] = (((-0.5590169943749476*bxr[7])+0.5590169943749476*bxl[7]+0.4330127018922193*(bxr[3]+bxl[3])-0.25*bxr[1]+0.25*bxl[1])*c2)/tau+0.5590169943749476*(ezr[7]+ezl[7])-0.4330127018922193*ezr[3]+0.4330127018922193*ezl[3]+0.25*(ezr[1]+ezl[1]); 
  incr[2] = (((-1.14564392373896*(bxr[9]+bxl[9]))+0.9682458365518543*bxr[5]-0.9682458365518543*bxl[5]-0.75*(bxr[2]+bxl[2])+0.4330127018922193*bxr[0]-0.4330127018922193*bxl[0])*c2)/tau+1.14564392373896*ezr[9]-1.14564392373896*ezl[9]-0.9682458365518543*(ezr[5]+ezl[5])+0.75*ezr[2]-0.75*ezl[2]-0.4330127018922193*(ezr[0]+ezl[0]); 
  incr[3] = ((0.9682458365518543*bxr[7]-0.9682458365518543*bxl[7]-0.75*(bxr[3]+bxl[3])+0.4330127018922193*bxr[1]-0.4330127018922193*bxl[1])*c2)/tau-0.9682458365518543*(ezr[7]+ezl[7])+0.75*ezr[3]-0.75*ezl[3]-0.4330127018922193*(ezr[1]+ezl[1]); 
  incr[4] = ((0.4330127018922194*(bxr[6]+bxl[6])-0.25*bxr[4]+0.25*bxl[4])*c2)/tau-0.4330127018922194*ezr[6]+0.4330127018922194*ezl[6]+0.25*(ezr[4]+ezl[4]); 
  incr[5] = ((1.479019945774904*(bxr[9]+bxl[9])-1.25*bxr[5]+1.25*bxl[5]+0.9682458365518543*(bxr[2]+bxl[2])-0.5590169943749475*bxr[0]+0.5590169943749475*bxl[0])*c2)/tau-1.479019945774904*ezr[9]+1.479019945774904*ezl[9]+1.25*(ezr[5]+ezl[5])-0.9682458365518543*ezr[2]+0.9682458365518543*ezl[2]+0.5590169943749475*(ezr[0]+ezl[0]); 
  incr[6] = (((-0.75*(bxr[6]+bxl[6]))+0.4330127018922194*bxr[4]-0.4330127018922194*bxl[4])*c2)/tau+0.75*ezr[6]-0.75*ezl[6]-0.4330127018922194*(ezr[4]+ezl[4]); 
  incr[7] = (((-1.25*bxr[7])+1.25*bxl[7]+0.9682458365518543*(bxr[3]+bxl[3])-0.5590169943749476*bxr[1]+0.5590169943749476*bxl[1])*c2)/tau+1.25*(ezr[7]+ezl[7])-0.9682458365518543*ezr[3]+0.9682458365518543*ezl[3]+0.5590169943749476*(ezr[1]+ezl[1]); 
  incr[8] = ((0.25*bxl[8]-0.25*bxr[8])*c2)/tau+0.25*(ezr[8]+ezl[8]); 
  incr[9] = (((-1.75*(bxr[9]+bxl[9]))+1.479019945774904*bxr[5]-1.479019945774904*bxl[5]-1.14564392373896*(bxr[2]+bxl[2])+0.6614378277661477*bxr[0]-0.6614378277661477*bxl[0])*c2)/tau+1.75*ezr[9]-1.75*ezl[9]-1.479019945774904*(ezr[5]+ezl[5])+1.14564392373896*ezr[2]-1.14564392373896*ezl[2]-0.6614378277661477*(ezr[0]+ezl[0]); 

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

 
  incr[0] = ((0.6614378277661477*(byr[9]+byl[9])-0.5590169943749475*byr[5]+0.5590169943749475*byl[5]+0.4330127018922193*(byr[2]+byl[2])-0.25*byr[0]+0.25*byl[0])*c-0.6614378277661477*psr[9]+0.6614378277661477*psl[9]+0.5590169943749475*(psr[5]+psl[5])-0.4330127018922193*psr[2]+0.4330127018922193*psl[2]+0.25*(psr[0]+psl[0]))*gamma; 
  incr[1] = (((-0.5590169943749476*byr[7])+0.5590169943749476*byl[7]+0.4330127018922193*(byr[3]+byl[3])-0.25*byr[1]+0.25*byl[1])*c+0.5590169943749476*(psr[7]+psl[7])-0.4330127018922193*psr[3]+0.4330127018922193*psl[3]+0.25*(psr[1]+psl[1]))*gamma; 
  incr[2] = (((-1.14564392373896*(byr[9]+byl[9]))+0.9682458365518543*byr[5]-0.9682458365518543*byl[5]-0.75*(byr[2]+byl[2])+0.4330127018922193*byr[0]-0.4330127018922193*byl[0])*c+1.14564392373896*psr[9]-1.14564392373896*psl[9]-0.9682458365518543*(psr[5]+psl[5])+0.75*psr[2]-0.75*psl[2]-0.4330127018922193*(psr[0]+psl[0]))*gamma; 
  incr[3] = ((0.9682458365518543*byr[7]-0.9682458365518543*byl[7]-0.75*(byr[3]+byl[3])+0.4330127018922193*byr[1]-0.4330127018922193*byl[1])*c-0.9682458365518543*(psr[7]+psl[7])+0.75*psr[3]-0.75*psl[3]-0.4330127018922193*(psr[1]+psl[1]))*gamma; 
  incr[4] = ((0.4330127018922194*(byr[6]+byl[6])-0.25*byr[4]+0.25*byl[4])*c-0.4330127018922194*psr[6]+0.4330127018922194*psl[6]+0.25*(psr[4]+psl[4]))*gamma; 
  incr[5] = ((1.479019945774904*(byr[9]+byl[9])-1.25*byr[5]+1.25*byl[5]+0.9682458365518543*(byr[2]+byl[2])-0.5590169943749475*byr[0]+0.5590169943749475*byl[0])*c-1.479019945774904*psr[9]+1.479019945774904*psl[9]+1.25*(psr[5]+psl[5])-0.9682458365518543*psr[2]+0.9682458365518543*psl[2]+0.5590169943749475*(psr[0]+psl[0]))*gamma; 
  incr[6] = (((-0.75*(byr[6]+byl[6]))+0.4330127018922194*byr[4]-0.4330127018922194*byl[4])*c+0.75*psr[6]-0.75*psl[6]-0.4330127018922194*(psr[4]+psl[4]))*gamma; 
  incr[7] = (((-1.25*byr[7])+1.25*byl[7]+0.9682458365518543*(byr[3]+byl[3])-0.5590169943749476*byr[1]+0.5590169943749476*byl[1])*c+1.25*(psr[7]+psl[7])-0.9682458365518543*psr[3]+0.9682458365518543*psl[3]+0.5590169943749476*(psr[1]+psl[1]))*gamma; 
  incr[8] = (0.25*(byl[8]*c+psr[8]+psl[8])-0.25*byr[8]*c)*gamma; 
  incr[9] = (((-1.75*(byr[9]+byl[9]))+1.479019945774904*byr[5]-1.479019945774904*byl[5]-1.14564392373896*(byr[2]+byl[2])+0.6614378277661477*byr[0]-0.6614378277661477*byl[0])*c+1.75*psr[9]-1.75*psl[9]-1.479019945774904*(psr[5]+psl[5])+1.14564392373896*psr[2]-1.14564392373896*psl[2]-0.6614378277661477*(psr[0]+psl[0]))*gamma; 

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

 
  incr[0] = ((0.6614378277661477*(bzr[9]+bzl[9])-0.5590169943749475*bzr[5]+0.5590169943749475*bzl[5]+0.4330127018922193*(bzr[2]+bzl[2])-0.25*bzr[0]+0.25*bzl[0])*c2)/tau+0.6614378277661477*exr[9]-0.6614378277661477*exl[9]-0.5590169943749475*(exr[5]+exl[5])+0.4330127018922193*exr[2]-0.4330127018922193*exl[2]-0.25*(exr[0]+exl[0]); 
  incr[1] = (((-0.5590169943749476*bzr[7])+0.5590169943749476*bzl[7]+0.4330127018922193*(bzr[3]+bzl[3])-0.25*bzr[1]+0.25*bzl[1])*c2)/tau-0.5590169943749476*(exr[7]+exl[7])+0.4330127018922193*exr[3]-0.4330127018922193*exl[3]-0.25*(exr[1]+exl[1]); 
  incr[2] = (((-1.14564392373896*(bzr[9]+bzl[9]))+0.9682458365518543*bzr[5]-0.9682458365518543*bzl[5]-0.75*(bzr[2]+bzl[2])+0.4330127018922193*bzr[0]-0.4330127018922193*bzl[0])*c2)/tau-1.14564392373896*exr[9]+1.14564392373896*exl[9]+0.9682458365518543*(exr[5]+exl[5])-0.75*exr[2]+0.75*exl[2]+0.4330127018922193*(exr[0]+exl[0]); 
  incr[3] = ((0.9682458365518543*bzr[7]-0.9682458365518543*bzl[7]-0.75*(bzr[3]+bzl[3])+0.4330127018922193*bzr[1]-0.4330127018922193*bzl[1])*c2)/tau+0.9682458365518543*(exr[7]+exl[7])-0.75*exr[3]+0.75*exl[3]+0.4330127018922193*(exr[1]+exl[1]); 
  incr[4] = ((0.4330127018922194*(bzr[6]+bzl[6])-0.25*bzr[4]+0.25*bzl[4])*c2)/tau+0.4330127018922194*exr[6]-0.4330127018922194*exl[6]-0.25*(exr[4]+exl[4]); 
  incr[5] = ((1.479019945774904*(bzr[9]+bzl[9])-1.25*bzr[5]+1.25*bzl[5]+0.9682458365518543*(bzr[2]+bzl[2])-0.5590169943749475*bzr[0]+0.5590169943749475*bzl[0])*c2)/tau+1.479019945774904*exr[9]-1.479019945774904*exl[9]-1.25*(exr[5]+exl[5])+0.9682458365518543*exr[2]-0.9682458365518543*exl[2]-0.5590169943749475*(exr[0]+exl[0]); 
  incr[6] = (((-0.75*(bzr[6]+bzl[6]))+0.4330127018922194*bzr[4]-0.4330127018922194*bzl[4])*c2)/tau-0.75*exr[6]+0.75*exl[6]+0.4330127018922194*(exr[4]+exl[4]); 
  incr[7] = (((-1.25*bzr[7])+1.25*bzl[7]+0.9682458365518543*(bzr[3]+bzl[3])-0.5590169943749476*bzr[1]+0.5590169943749476*bzl[1])*c2)/tau-1.25*(exr[7]+exl[7])+0.9682458365518543*exr[3]-0.9682458365518543*exl[3]-0.5590169943749476*(exr[1]+exl[1]); 
  incr[8] = ((0.25*bzl[8]-0.25*bzr[8])*c2)/tau-0.25*(exr[8]+exl[8]); 
  incr[9] = (((-1.75*(bzr[9]+bzl[9]))+1.479019945774904*bzr[5]-1.479019945774904*bzl[5]-1.14564392373896*(bzr[2]+bzl[2])+0.6614378277661477*bzr[0]-0.6614378277661477*bzl[0])*c2)/tau-1.75*exr[9]+1.75*exl[9]+1.479019945774904*(exr[5]+exl[5])-1.14564392373896*exr[2]+1.14564392373896*exl[2]+0.6614378277661477*(exr[0]+exl[0]); 

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

 
  incr[0] = ((0.6614378277661477*(phr[9]+phl[9])-0.5590169943749475*phr[5]+0.5590169943749475*phl[5]+0.4330127018922193*(phr[2]+phl[2])-0.25*phr[0]+0.25*phl[0])*c-0.6614378277661477*eyr[9]+0.6614378277661477*eyl[9]+0.5590169943749475*(eyr[5]+eyl[5])-0.4330127018922193*eyr[2]+0.4330127018922193*eyl[2]+0.25*(eyr[0]+eyl[0]))*chi; 
  incr[1] = (((-0.5590169943749476*phr[7])+0.5590169943749476*phl[7]+0.4330127018922193*(phr[3]+phl[3])-0.25*phr[1]+0.25*phl[1])*c+0.5590169943749476*(eyr[7]+eyl[7])-0.4330127018922193*eyr[3]+0.4330127018922193*eyl[3]+0.25*(eyr[1]+eyl[1]))*chi; 
  incr[2] = (((-1.14564392373896*(phr[9]+phl[9]))+0.9682458365518543*phr[5]-0.9682458365518543*phl[5]-0.75*(phr[2]+phl[2])+0.4330127018922193*phr[0]-0.4330127018922193*phl[0])*c+1.14564392373896*eyr[9]-1.14564392373896*eyl[9]-0.9682458365518543*(eyr[5]+eyl[5])+0.75*eyr[2]-0.75*eyl[2]-0.4330127018922193*(eyr[0]+eyl[0]))*chi; 
  incr[3] = ((0.9682458365518543*phr[7]-0.9682458365518543*phl[7]-0.75*(phr[3]+phl[3])+0.4330127018922193*phr[1]-0.4330127018922193*phl[1])*c-0.9682458365518543*(eyr[7]+eyl[7])+0.75*eyr[3]-0.75*eyl[3]-0.4330127018922193*(eyr[1]+eyl[1]))*chi; 
  incr[4] = ((0.4330127018922194*(phr[6]+phl[6])-0.25*phr[4]+0.25*phl[4])*c-0.4330127018922194*eyr[6]+0.4330127018922194*eyl[6]+0.25*(eyr[4]+eyl[4]))*chi; 
  incr[5] = ((1.479019945774904*(phr[9]+phl[9])-1.25*phr[5]+1.25*phl[5]+0.9682458365518543*(phr[2]+phl[2])-0.5590169943749475*phr[0]+0.5590169943749475*phl[0])*c-1.479019945774904*eyr[9]+1.479019945774904*eyl[9]+1.25*(eyr[5]+eyl[5])-0.9682458365518543*eyr[2]+0.9682458365518543*eyl[2]+0.5590169943749475*(eyr[0]+eyl[0]))*chi; 
  incr[6] = (((-0.75*(phr[6]+phl[6]))+0.4330127018922194*phr[4]-0.4330127018922194*phl[4])*c+0.75*eyr[6]-0.75*eyl[6]-0.4330127018922194*(eyr[4]+eyl[4]))*chi; 
  incr[7] = (((-1.25*phr[7])+1.25*phl[7]+0.9682458365518543*(phr[3]+phl[3])-0.5590169943749476*phr[1]+0.5590169943749476*phl[1])*c+1.25*(eyr[7]+eyl[7])-0.9682458365518543*eyr[3]+0.9682458365518543*eyl[3]+0.5590169943749476*(eyr[1]+eyl[1]))*chi; 
  incr[8] = (0.25*(phl[8]*c+eyr[8]+eyl[8])-0.25*phr[8]*c)*chi; 
  incr[9] = (((-1.75*(phr[9]+phl[9]))+1.479019945774904*phr[5]-1.479019945774904*phl[5]-1.14564392373896*(phr[2]+phl[2])+0.6614378277661477*phr[0]-0.6614378277661477*phl[0])*c+1.75*eyr[9]-1.75*eyl[9]-1.479019945774904*(eyr[5]+eyl[5])+1.14564392373896*eyr[2]-1.14564392373896*eyl[2]-0.6614378277661477*(eyr[0]+eyl[0]))*chi; 

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

 
  incr[0] = (0.6614378277661477*(psr[9]+psl[9])-0.5590169943749475*psr[5]+0.5590169943749475*psl[5]+0.4330127018922193*(psr[2]+psl[2])-0.25*psr[0]+0.25*psl[0])*c*gamma+((-0.6614378277661477*byr[9])+0.6614378277661477*byl[9]+0.5590169943749475*(byr[5]+byl[5])-0.4330127018922193*byr[2]+0.4330127018922193*byl[2]+0.25*(byr[0]+byl[0]))*c2gamma; 
  incr[1] = ((-0.5590169943749476*psr[7])+0.5590169943749476*psl[7]+0.4330127018922193*(psr[3]+psl[3])-0.25*psr[1]+0.25*psl[1])*c*gamma+(0.5590169943749476*(byr[7]+byl[7])-0.4330127018922193*byr[3]+0.4330127018922193*byl[3]+0.25*(byr[1]+byl[1]))*c2gamma; 
  incr[2] = ((-1.14564392373896*(psr[9]+psl[9]))+0.9682458365518543*psr[5]-0.9682458365518543*psl[5]-0.75*(psr[2]+psl[2])+0.4330127018922193*psr[0]-0.4330127018922193*psl[0])*c*gamma+(1.14564392373896*byr[9]-1.14564392373896*byl[9]-0.9682458365518543*(byr[5]+byl[5])+0.75*byr[2]-0.75*byl[2]-0.4330127018922193*(byr[0]+byl[0]))*c2gamma; 
  incr[3] = (0.9682458365518543*psr[7]-0.9682458365518543*psl[7]-0.75*(psr[3]+psl[3])+0.4330127018922193*psr[1]-0.4330127018922193*psl[1])*c*gamma+((-0.9682458365518543*(byr[7]+byl[7]))+0.75*byr[3]-0.75*byl[3]-0.4330127018922193*(byr[1]+byl[1]))*c2gamma; 
  incr[4] = (0.4330127018922194*(psr[6]+psl[6])-0.25*psr[4]+0.25*psl[4])*c*gamma+((-0.4330127018922194*byr[6])+0.4330127018922194*byl[6]+0.25*(byr[4]+byl[4]))*c2gamma; 
  incr[5] = (1.479019945774904*(psr[9]+psl[9])-1.25*psr[5]+1.25*psl[5]+0.9682458365518543*(psr[2]+psl[2])-0.5590169943749475*psr[0]+0.5590169943749475*psl[0])*c*gamma+((-1.479019945774904*byr[9])+1.479019945774904*byl[9]+1.25*(byr[5]+byl[5])-0.9682458365518543*byr[2]+0.9682458365518543*byl[2]+0.5590169943749475*(byr[0]+byl[0]))*c2gamma; 
  incr[6] = ((-0.75*(psr[6]+psl[6]))+0.4330127018922194*psr[4]-0.4330127018922194*psl[4])*c*gamma+(0.75*byr[6]-0.75*byl[6]-0.4330127018922194*(byr[4]+byl[4]))*c2gamma; 
  incr[7] = ((-1.25*psr[7])+1.25*psl[7]+0.9682458365518543*(psr[3]+psl[3])-0.5590169943749476*psr[1]+0.5590169943749476*psl[1])*c*gamma+(1.25*(byr[7]+byl[7])-0.9682458365518543*byr[3]+0.9682458365518543*byl[3]+0.5590169943749476*(byr[1]+byl[1]))*c2gamma; 
  incr[8] = (0.25*psl[8]-0.25*psr[8])*c*gamma+0.25*(byr[8]+byl[8])*c2gamma; 
  incr[9] = ((-1.75*(psr[9]+psl[9]))+1.479019945774904*psr[5]-1.479019945774904*psl[5]-1.14564392373896*(psr[2]+psl[2])+0.6614378277661477*psr[0]-0.6614378277661477*psl[0])*c*gamma+(1.75*byr[9]-1.75*byl[9]-1.479019945774904*(byr[5]+byl[5])+1.14564392373896*byr[2]-1.14564392373896*byl[2]-0.6614378277661477*(byr[0]+byl[0]))*c2gamma; 

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

 
  return std::fmax(c, tau); 
} 
