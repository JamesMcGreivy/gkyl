#include <VlasovModDecl.h> 
void VlasovSurfStream1x1vMax_X_P1(const double *w, const double *dxv, const double *fl, const double *fr, double *outl, double *outr) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. fl/fr: Distribution function in left/right cells 
// outl/outr: Incremented distribution function in left/right cells 
  double dvx = dxv[1]/dxv[0]; 
  double wx = w[1]*2/dxv[0]; 

  double incr[3]; 

  if (wx>0) { 
  incr[0] = (0.8660254037844386*fl[1]+0.5*fl[0])*wx+0.2886751345948129*fl[2]*dvx; 
  incr[1] = ((-1.5*fl[1])-0.8660254037844386*fl[0])*wx-0.5*fl[2]*dvx; 
  incr[2] = 0.5*fl[2]*wx+(0.5*fl[1]+0.2886751345948129*fl[0])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  } else { 
  incr[0] = (0.5*fr[0]-0.8660254037844386*fr[1])*wx+0.2886751345948129*fr[2]*dvx; 
  incr[1] = (1.5*fr[1]-0.8660254037844386*fr[0])*wx-0.5*fr[2]*dvx; 
  incr[2] = 0.5*fr[2]*wx+(0.2886751345948129*fr[0]-0.5*fr[1])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  } 
} 
void VlasovSurfStream1x1vMax_X_P2(const double *w, const double *dxv, const double *fl, const double *fr, double *outl, double *outr) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. fl/fr: Distribution function in left/right cells 
// outl/outr: Incremented distribution function in left/right cells 
  double dvx = dxv[1]/dxv[0]; 
  double wx = w[1]*2/dxv[0]; 

  double incr[6]; 

  if (wx>0) { 
  incr[0] = (1.118033988749895*fl[4]+0.8660254037844386*fl[1]+0.5*fl[0])*wx+(0.5*fl[3]+0.2886751345948129*fl[2])*dvx; 
  incr[1] = ((-1.936491673103709*fl[4])-1.5*fl[1]-0.8660254037844386*fl[0])*wx+((-0.8660254037844386*fl[3])-0.5*fl[2])*dvx; 
  incr[2] = (0.8660254037844386*fl[3]+0.5*fl[2])*wx+(0.2581988897471612*fl[5]+0.6454972243679029*fl[4]+0.5*fl[1]+0.2886751345948129*fl[0])*dvx; 
  incr[3] = ((-1.5*fl[3])-0.8660254037844386*fl[2])*wx+((-0.4472135954999579*fl[5])-1.118033988749895*fl[4]-0.8660254037844386*fl[1]-0.5*fl[0])*dvx; 
  incr[4] = (2.5*fl[4]+1.936491673103709*fl[1]+1.118033988749895*fl[0])*wx+(1.118033988749895*fl[3]+0.6454972243679029*fl[2])*dvx; 
  incr[5] = 0.5*fl[5]*wx+(0.4472135954999579*fl[3]+0.2581988897471612*fl[2])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 
  outr[4] += incr[4]; 
  outr[5] += incr[5]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  outl[4] += -1.0*incr[4]; 
  outl[5] += -1.0*incr[5]; 
  } else { 
  incr[0] = (1.118033988749895*fr[4]-0.8660254037844386*fr[1]+0.5*fr[0])*wx+(0.2886751345948129*fr[2]-0.5*fr[3])*dvx; 
  incr[1] = ((-1.936491673103709*fr[4])+1.5*fr[1]-0.8660254037844386*fr[0])*wx+(0.8660254037844386*fr[3]-0.5*fr[2])*dvx; 
  incr[2] = (0.5*fr[2]-0.8660254037844386*fr[3])*wx+(0.2581988897471612*fr[5]+0.6454972243679029*fr[4]-0.5*fr[1]+0.2886751345948129*fr[0])*dvx; 
  incr[3] = (1.5*fr[3]-0.8660254037844386*fr[2])*wx+((-0.4472135954999579*fr[5])-1.118033988749895*fr[4]+0.8660254037844386*fr[1]-0.5*fr[0])*dvx; 
  incr[4] = (2.5*fr[4]-1.936491673103709*fr[1]+1.118033988749895*fr[0])*wx+(0.6454972243679029*fr[2]-1.118033988749895*fr[3])*dvx; 
  incr[5] = 0.5*fr[5]*wx+(0.2581988897471612*fr[2]-0.4472135954999579*fr[3])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 
  outr[4] += incr[4]; 
  outr[5] += incr[5]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  outl[4] += -1.0*incr[4]; 
  outl[5] += -1.0*incr[5]; 
  } 
} 
void VlasovSurfStream1x1vMax_X_P3(const double *w, const double *dxv, const double *fl, const double *fr, double *outl, double *outr) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. fl/fr: Distribution function in left/right cells 
// outl/outr: Incremented distribution function in left/right cells 
  double dvx = dxv[1]/dxv[0]; 
  double wx = w[1]*2/dxv[0]; 

  double incr[10]; 

  if (wx>0) { 
  incr[0] = (1.322875655532295*fl[8]+1.118033988749895*fl[4]+0.8660254037844386*fl[1]+0.5*fl[0])*wx+(0.6454972243679028*fl[6]+0.5*fl[3]+0.2886751345948129*fl[2])*dvx; 
  incr[1] = ((-2.29128784747792*fl[8])-1.936491673103709*fl[4]-1.5*fl[1]-0.8660254037844386*fl[0])*wx+((-1.118033988749895*fl[6])-0.8660254037844386*fl[3]-0.5*fl[2])*dvx; 
  incr[2] = (1.118033988749895*fl[6]+0.8660254037844386*fl[3]+0.5*fl[2])*wx+(0.7637626158259735*fl[8]+0.447213595499958*fl[7]+0.2581988897471612*fl[5]+0.6454972243679029*fl[4]+0.5*fl[1]+0.2886751345948129*fl[0])*dvx; 
  incr[3] = ((-1.936491673103709*fl[6])-1.5*fl[3]-0.8660254037844386*fl[2])*wx+((-1.322875655532295*fl[8])-0.7745966692414834*fl[7]-0.4472135954999579*fl[5]-1.118033988749895*fl[4]-0.8660254037844386*fl[1]-0.5*fl[0])*dvx; 
  incr[4] = (2.958039891549809*fl[8]+2.5*fl[4]+1.936491673103709*fl[1]+1.118033988749895*fl[0])*wx+(1.443375672974065*fl[6]+1.118033988749895*fl[3]+0.6454972243679029*fl[2])*dvx; 
  incr[5] = (0.8660254037844387*fl[7]+0.5*fl[5])*wx+(0.253546276418555*fl[9]+0.5773502691896257*fl[6]+0.4472135954999579*fl[3]+0.2581988897471612*fl[2])*dvx; 
  incr[6] = (2.5*fl[6]+1.936491673103709*fl[3]+1.118033988749895*fl[2])*wx+(1.707825127659933*fl[8]+fl[7]+0.5773502691896257*fl[5]+1.443375672974065*fl[4]+1.118033988749895*fl[1]+0.6454972243679028*fl[0])*dvx; 
  incr[7] = ((-1.5*fl[7])-0.8660254037844387*fl[5])*wx+((-0.4391550328268399*fl[9])-1.0*fl[6]-0.7745966692414834*fl[3]-0.447213595499958*fl[2])*dvx; 
  incr[8] = ((-3.5*fl[8])-2.958039891549809*fl[4]-2.29128784747792*fl[1]-1.322875655532295*fl[0])*wx+((-1.707825127659933*fl[6])-1.322875655532295*fl[3]-0.7637626158259735*fl[2])*dvx; 
  incr[9] = 0.5*fl[9]*wx+(0.4391550328268399*fl[7]+0.253546276418555*fl[5])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 
  outr[4] += incr[4]; 
  outr[5] += incr[5]; 
  outr[6] += incr[6]; 
  outr[7] += incr[7]; 
  outr[8] += incr[8]; 
  outr[9] += incr[9]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  outl[4] += -1.0*incr[4]; 
  outl[5] += -1.0*incr[5]; 
  outl[6] += -1.0*incr[6]; 
  outl[7] += incr[7]; 
  outl[8] += incr[8]; 
  outl[9] += -1.0*incr[9]; 
  } else { 
  incr[0] = ((-1.322875655532295*fr[8])+1.118033988749895*fr[4]-0.8660254037844386*fr[1]+0.5*fr[0])*wx+(0.6454972243679028*fr[6]-0.5*fr[3]+0.2886751345948129*fr[2])*dvx; 
  incr[1] = (2.29128784747792*fr[8]-1.936491673103709*fr[4]+1.5*fr[1]-0.8660254037844386*fr[0])*wx+((-1.118033988749895*fr[6])+0.8660254037844386*fr[3]-0.5*fr[2])*dvx; 
  incr[2] = (1.118033988749895*fr[6]-0.8660254037844386*fr[3]+0.5*fr[2])*wx+((-0.7637626158259735*fr[8])-0.447213595499958*fr[7]+0.2581988897471612*fr[5]+0.6454972243679029*fr[4]-0.5*fr[1]+0.2886751345948129*fr[0])*dvx; 
  incr[3] = ((-1.936491673103709*fr[6])+1.5*fr[3]-0.8660254037844386*fr[2])*wx+(1.322875655532295*fr[8]+0.7745966692414834*fr[7]-0.4472135954999579*fr[5]-1.118033988749895*fr[4]+0.8660254037844386*fr[1]-0.5*fr[0])*dvx; 
  incr[4] = ((-2.958039891549809*fr[8])+2.5*fr[4]-1.936491673103709*fr[1]+1.118033988749895*fr[0])*wx+(1.443375672974065*fr[6]-1.118033988749895*fr[3]+0.6454972243679029*fr[2])*dvx; 
  incr[5] = (0.5*fr[5]-0.8660254037844387*fr[7])*wx+(0.253546276418555*fr[9]+0.5773502691896257*fr[6]-0.4472135954999579*fr[3]+0.2581988897471612*fr[2])*dvx; 
  incr[6] = (2.5*fr[6]-1.936491673103709*fr[3]+1.118033988749895*fr[2])*wx+((-1.707825127659933*fr[8])-1.0*fr[7]+0.5773502691896257*fr[5]+1.443375672974065*fr[4]-1.118033988749895*fr[1]+0.6454972243679028*fr[0])*dvx; 
  incr[7] = (1.5*fr[7]-0.8660254037844387*fr[5])*wx+((-0.4391550328268399*fr[9])-1.0*fr[6]+0.7745966692414834*fr[3]-0.447213595499958*fr[2])*dvx; 
  incr[8] = (3.5*fr[8]-2.958039891549809*fr[4]+2.29128784747792*fr[1]-1.322875655532295*fr[0])*wx+((-1.707825127659933*fr[6])+1.322875655532295*fr[3]-0.7637626158259735*fr[2])*dvx; 
  incr[9] = 0.5*fr[9]*wx+(0.253546276418555*fr[5]-0.4391550328268399*fr[7])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 
  outr[4] += incr[4]; 
  outr[5] += incr[5]; 
  outr[6] += incr[6]; 
  outr[7] += incr[7]; 
  outr[8] += incr[8]; 
  outr[9] += incr[9]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  outl[4] += -1.0*incr[4]; 
  outl[5] += -1.0*incr[5]; 
  outl[6] += -1.0*incr[6]; 
  outl[7] += incr[7]; 
  outl[8] += incr[8]; 
  outl[9] += -1.0*incr[9]; 
  } 
} 
void VlasovSurfStream1x1vMax_X_P4(const double *w, const double *dxv, const double *fl, const double *fr, double *outl, double *outr) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. fl/fr: Distribution function in left/right cells 
// outl/outr: Incremented distribution function in left/right cells 
  double dvx = dxv[1]/dxv[0]; 
  double wx = w[1]*2/dxv[0]; 

  double incr[15]; 

  if (wx>0) { 
  incr[0] = (1.5*fl[13]+1.322875655532295*fl[8]+1.118033988749895*fl[4]+0.8660254037844386*fl[1]+0.5*fl[0])*wx+(0.7637626158259733*fl[11]+0.6454972243679028*fl[6]+0.5*fl[3]+0.2886751345948129*fl[2])*dvx; 
  incr[1] = ((-2.598076211353316*fl[13])-2.29128784747792*fl[8]-1.936491673103709*fl[4]-1.5*fl[1]-0.8660254037844386*fl[0])*wx+((-1.322875655532295*fl[11])-1.118033988749895*fl[6]-0.8660254037844386*fl[3]-0.5*fl[2])*dvx; 
  incr[2] = (1.322875655532295*fl[11]+1.118033988749895*fl[6]+0.8660254037844386*fl[3]+0.5*fl[2])*wx+(0.8660254037844386*fl[13]+0.5773502691896258*fl[10]+0.7637626158259735*fl[8]+0.447213595499958*fl[7]+0.2581988897471612*fl[5]+0.6454972243679029*fl[4]+0.5*fl[1]+0.2886751345948129*fl[0])*dvx; 
  incr[3] = ((-2.29128784747792*fl[11])-1.936491673103709*fl[6]-1.5*fl[3]-0.8660254037844386*fl[2])*wx+((-1.5*fl[13])-1.0*fl[10]-1.322875655532295*fl[8]-0.7745966692414834*fl[7]-0.4472135954999579*fl[5]-1.118033988749895*fl[4]-0.8660254037844386*fl[1]-0.5*fl[0])*dvx; 
  incr[4] = (3.354101966249685*fl[13]+2.958039891549809*fl[8]+2.5*fl[4]+1.936491673103709*fl[1]+1.118033988749895*fl[0])*wx+(1.707825127659933*fl[11]+1.443375672974065*fl[6]+1.118033988749895*fl[3]+0.6454972243679029*fl[2])*dvx; 
  incr[5] = (1.118033988749895*fl[10]+0.8660254037844387*fl[7]+0.5*fl[5])*wx+(0.4391550328268399*fl[12]+0.6831300510639731*fl[11]+0.253546276418555*fl[9]+0.5773502691896257*fl[6]+0.4472135954999579*fl[3]+0.2581988897471612*fl[2])*dvx; 
  incr[6] = (2.958039891549808*fl[11]+2.5*fl[6]+1.936491673103709*fl[3]+1.118033988749895*fl[2])*wx+(1.936491673103709*fl[13]+1.290994448735806*fl[10]+1.707825127659933*fl[8]+fl[7]+0.5773502691896257*fl[5]+1.443375672974065*fl[4]+1.118033988749895*fl[1]+0.6454972243679028*fl[0])*dvx; 
  incr[7] = ((-1.936491673103709*fl[10])-1.5*fl[7]-0.8660254037844387*fl[5])*wx+((-0.760638829255665*fl[12])-1.183215956619923*fl[11]-0.4391550328268399*fl[9]-1.0*fl[6]-0.7745966692414834*fl[3]-0.447213595499958*fl[2])*dvx; 
  incr[8] = ((-3.968626966596886*fl[13])-3.5*fl[8]-2.958039891549809*fl[4]-2.29128784747792*fl[1]-1.322875655532295*fl[0])*wx+((-2.02072594216369*fl[11])-1.707825127659933*fl[6]-1.322875655532295*fl[3]-0.7637626158259735*fl[2])*dvx; 
  incr[9] = (0.8660254037844386*fl[12]+0.5*fl[9])*wx+(0.2519763153394848*fl[14]+0.5669467095138407*fl[10]+0.4391550328268399*fl[7]+0.253546276418555*fl[5])*dvx; 
  incr[10] = (2.5*fl[10]+1.936491673103709*fl[7]+1.118033988749895*fl[5])*wx+(0.9819805060619656*fl[12]+1.527525231651947*fl[11]+0.5669467095138407*fl[9]+1.290994448735806*fl[6]+fl[3]+0.5773502691896258*fl[2])*dvx; 
  incr[11] = ((-3.5*fl[11])-2.958039891549808*fl[6]-2.29128784747792*fl[3]-1.322875655532295*fl[2])*wx+((-2.29128784747792*fl[13])-1.527525231651947*fl[10]-2.02072594216369*fl[8]-1.183215956619923*fl[7]-0.6831300510639731*fl[5]-1.707825127659933*fl[4]-1.322875655532295*fl[1]-0.7637626158259733*fl[0])*dvx; 
  incr[12] = ((-1.5*fl[12])-0.8660254037844386*fl[9])*wx+((-0.4364357804719848*fl[14])-0.9819805060619656*fl[10]-0.760638829255665*fl[7]-0.4391550328268399*fl[5])*dvx; 
  incr[13] = (4.5*fl[13]+3.968626966596886*fl[8]+3.354101966249685*fl[4]+2.598076211353316*fl[1]+1.5*fl[0])*wx+(2.29128784747792*fl[11]+1.936491673103709*fl[6]+1.5*fl[3]+0.8660254037844386*fl[2])*dvx; 
  incr[14] = 0.5*fl[14]*wx+(0.4364357804719848*fl[12]+0.2519763153394848*fl[9])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 
  outr[4] += incr[4]; 
  outr[5] += incr[5]; 
  outr[6] += incr[6]; 
  outr[7] += incr[7]; 
  outr[8] += incr[8]; 
  outr[9] += incr[9]; 
  outr[10] += incr[10]; 
  outr[11] += incr[11]; 
  outr[12] += incr[12]; 
  outr[13] += incr[13]; 
  outr[14] += incr[14]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  outl[4] += -1.0*incr[4]; 
  outl[5] += -1.0*incr[5]; 
  outl[6] += -1.0*incr[6]; 
  outl[7] += incr[7]; 
  outl[8] += incr[8]; 
  outl[9] += -1.0*incr[9]; 
  outl[10] += -1.0*incr[10]; 
  outl[11] += incr[11]; 
  outl[12] += incr[12]; 
  outl[13] += -1.0*incr[13]; 
  outl[14] += -1.0*incr[14]; 
  } else { 
  incr[0] = (1.5*fr[13]-1.322875655532295*fr[8]+1.118033988749895*fr[4]-0.8660254037844386*fr[1]+0.5*fr[0])*wx+((-0.7637626158259733*fr[11])+0.6454972243679028*fr[6]-0.5*fr[3]+0.2886751345948129*fr[2])*dvx; 
  incr[1] = ((-2.598076211353316*fr[13])+2.29128784747792*fr[8]-1.936491673103709*fr[4]+1.5*fr[1]-0.8660254037844386*fr[0])*wx+(1.322875655532295*fr[11]-1.118033988749895*fr[6]+0.8660254037844386*fr[3]-0.5*fr[2])*dvx; 
  incr[2] = ((-1.322875655532295*fr[11])+1.118033988749895*fr[6]-0.8660254037844386*fr[3]+0.5*fr[2])*wx+(0.8660254037844386*fr[13]+0.5773502691896258*fr[10]-0.7637626158259735*fr[8]-0.447213595499958*fr[7]+0.2581988897471612*fr[5]+0.6454972243679029*fr[4]-0.5*fr[1]+0.2886751345948129*fr[0])*dvx; 
  incr[3] = (2.29128784747792*fr[11]-1.936491673103709*fr[6]+1.5*fr[3]-0.8660254037844386*fr[2])*wx+((-1.5*fr[13])-1.0*fr[10]+1.322875655532295*fr[8]+0.7745966692414834*fr[7]-0.4472135954999579*fr[5]-1.118033988749895*fr[4]+0.8660254037844386*fr[1]-0.5*fr[0])*dvx; 
  incr[4] = (3.354101966249685*fr[13]-2.958039891549809*fr[8]+2.5*fr[4]-1.936491673103709*fr[1]+1.118033988749895*fr[0])*wx+((-1.707825127659933*fr[11])+1.443375672974065*fr[6]-1.118033988749895*fr[3]+0.6454972243679029*fr[2])*dvx; 
  incr[5] = (1.118033988749895*fr[10]-0.8660254037844387*fr[7]+0.5*fr[5])*wx+((-0.4391550328268399*fr[12])-0.6831300510639731*fr[11]+0.253546276418555*fr[9]+0.5773502691896257*fr[6]-0.4472135954999579*fr[3]+0.2581988897471612*fr[2])*dvx; 
  incr[6] = ((-2.958039891549808*fr[11])+2.5*fr[6]-1.936491673103709*fr[3]+1.118033988749895*fr[2])*wx+(1.936491673103709*fr[13]+1.290994448735806*fr[10]-1.707825127659933*fr[8]-1.0*fr[7]+0.5773502691896257*fr[5]+1.443375672974065*fr[4]-1.118033988749895*fr[1]+0.6454972243679028*fr[0])*dvx; 
  incr[7] = ((-1.936491673103709*fr[10])+1.5*fr[7]-0.8660254037844387*fr[5])*wx+(0.760638829255665*fr[12]+1.183215956619923*fr[11]-0.4391550328268399*fr[9]-1.0*fr[6]+0.7745966692414834*fr[3]-0.447213595499958*fr[2])*dvx; 
  incr[8] = ((-3.968626966596886*fr[13])+3.5*fr[8]-2.958039891549809*fr[4]+2.29128784747792*fr[1]-1.322875655532295*fr[0])*wx+(2.02072594216369*fr[11]-1.707825127659933*fr[6]+1.322875655532295*fr[3]-0.7637626158259735*fr[2])*dvx; 
  incr[9] = (0.5*fr[9]-0.8660254037844386*fr[12])*wx+(0.2519763153394848*fr[14]+0.5669467095138407*fr[10]-0.4391550328268399*fr[7]+0.253546276418555*fr[5])*dvx; 
  incr[10] = (2.5*fr[10]-1.936491673103709*fr[7]+1.118033988749895*fr[5])*wx+((-0.9819805060619656*fr[12])-1.527525231651947*fr[11]+0.5669467095138407*fr[9]+1.290994448735806*fr[6]-1.0*fr[3]+0.5773502691896258*fr[2])*dvx; 
  incr[11] = (3.5*fr[11]-2.958039891549808*fr[6]+2.29128784747792*fr[3]-1.322875655532295*fr[2])*wx+((-2.29128784747792*fr[13])-1.527525231651947*fr[10]+2.02072594216369*fr[8]+1.183215956619923*fr[7]-0.6831300510639731*fr[5]-1.707825127659933*fr[4]+1.322875655532295*fr[1]-0.7637626158259733*fr[0])*dvx; 
  incr[12] = (1.5*fr[12]-0.8660254037844386*fr[9])*wx+((-0.4364357804719848*fr[14])-0.9819805060619656*fr[10]+0.760638829255665*fr[7]-0.4391550328268399*fr[5])*dvx; 
  incr[13] = (4.5*fr[13]-3.968626966596886*fr[8]+3.354101966249685*fr[4]-2.598076211353316*fr[1]+1.5*fr[0])*wx+((-2.29128784747792*fr[11])+1.936491673103709*fr[6]-1.5*fr[3]+0.8660254037844386*fr[2])*dvx; 
  incr[14] = 0.5*fr[14]*wx+(0.2519763153394848*fr[9]-0.4364357804719848*fr[12])*dvx; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 
  outr[4] += incr[4]; 
  outr[5] += incr[5]; 
  outr[6] += incr[6]; 
  outr[7] += incr[7]; 
  outr[8] += incr[8]; 
  outr[9] += incr[9]; 
  outr[10] += incr[10]; 
  outr[11] += incr[11]; 
  outr[12] += incr[12]; 
  outr[13] += incr[13]; 
  outr[14] += incr[14]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  outl[4] += -1.0*incr[4]; 
  outl[5] += -1.0*incr[5]; 
  outl[6] += -1.0*incr[6]; 
  outl[7] += incr[7]; 
  outl[8] += incr[8]; 
  outl[9] += -1.0*incr[9]; 
  outl[10] += -1.0*incr[10]; 
  outl[11] += incr[11]; 
  outl[12] += incr[12]; 
  outl[13] += -1.0*incr[13]; 
  outl[14] += -1.0*incr[14]; 
  } 
} 