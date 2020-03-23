#include <GyrokineticModDecl.h> 
double EmGyrokineticSurfPositivity1x1vSer_X_P1_Bvars_0(const double q_, const double m_, const double *w, const double *dxv, 
                        const double *Bmag, const double *BmagInv, const double *Gradpar, 
                        const double *BdriftX, const double *BdriftY, const double *Phi, 
                        const double *Apar, const double *dApardt, const double *dApardtProv, 
                        const double dtApprox, const double *positivityWeightByDirL, const double *positivityWeightByDirR, 
                        const double *fl, const double *fr, double *outl, double *outr, 
                        double *ohmModL, double *ohmModR) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. H/f: Input Hamiltonian/distribution function. out: Incremented output 
  double dfac_x = 2.0/dxv[0]; 
  double dfac_v = 2.0/dxv[1]; 
  double wx = w[0]; 
  double wv = w[1]; 
  double wv2 = wv*wv; 
  double dfac_v2 = dfac_v*dfac_v; 
  double q2 = q_*q_; 
  double incr[4]; 
  // surface-averaged phase velocity in this direction 
  double alpha0 = 0.3535533905932737*Gradpar[0]*wv; 

  double alpha[2]; 
  alpha[0] = Gradpar[0]*wv; 
  double rCtrlL[2], rCtrlR[2];  // rCtrl=f1/f0 at each control node in dimensions other than x 
  rCtrlL[0] = -(1.0*(1.732050807568877*fl[3]-3.0*fl[1]))/(3.464101615137754*EPSILON-1.0*fl[2]+1.732050807568877*fl[0]); 
  rCtrlL[1] = (1.732050807568877*fl[3]+3.0*fl[1])/(3.464101615137754*EPSILON+fl[2]+1.732050807568877*fl[0]); 
  rCtrlR[0] = -(1.0*(1.732050807568877*fr[3]-3.0*fr[1]))/(3.464101615137754*EPSILON-1.0*fr[2]+1.732050807568877*fr[0]); 
  rCtrlR[1] = (1.732050807568877*fr[3]+3.0*fr[1])/(3.464101615137754*EPSILON+fr[2]+1.732050807568877*fr[0]); 
  double fCtrlL[2], fCtrlR[2];  // fCtrl = anti-limited f evaluated at each control node on x surface 
  // control node [vx] = [-1/3] 
  fCtrlL[0] = -0.2886751345948129*(fl[2]-1.732050807568877*fl[0])*limTheta(rCtrlL[0],1.0); 
  fCtrlR[0] = -0.2886751345948129*(fr[2]-1.732050807568877*fr[0])*limTheta(rCtrlR[0],-1.0); 
  // control node [vx] = [1/3] 
  fCtrlL[1] = 0.2886751345948129*(fl[2]+1.732050807568877*fl[0])*limTheta(rCtrlL[1],1.0); 
  fCtrlR[1] = 0.2886751345948129*(fr[2]+1.732050807568877*fr[0])*limTheta(rCtrlR[1],-1.0); 
  double fL_AL[2], fR_AL[2];  // f_AL = mode coefficients of anti-limited f on surface 
  fL_AL[0] = 0.7071067811865475*(fCtrlL[1]+fCtrlL[0]); 
  fL_AL[1] = 1.224744871391589*(fCtrlL[1]-1.0*fCtrlL[0]); 
  fR_AL[0] = 0.7071067811865475*(fCtrlR[1]+fCtrlR[0]); 
  fR_AL[1] = 1.224744871391589*(fCtrlR[1]-1.0*fCtrlR[0]); 
  double alphaQuad; 
  // determine upwinding and enforce limiters at each surface quadrature node 
  double fhatALQuad[2], fhatAL[2]; 
  alphaQuad = 0.7071067811865475*alpha[0]; 
  if(alphaQuad > 0) {
  fhatALQuad[0] = -0.5*(1.414213562373095*fL_AL[1]-1.414213562373095*fL_AL[0]); 
  } else {
  fhatALQuad[0] = -0.5*(1.414213562373095*fR_AL[1]-1.414213562373095*fR_AL[0]); 
  } 
  alphaQuad = 0.7071067811865475*alpha[0]; 
  if(alphaQuad > 0) {
  fhatALQuad[1] = 0.7071067811865476*(fL_AL[1]+fL_AL[0]); 
  } else {
  fhatALQuad[1] = 0.7071067811865476*(fR_AL[1]+fR_AL[0]); 
  } 
  fhatAL[0] = 0.7071067811865475*(fhatALQuad[1]+fhatALQuad[0]); 
  fhatAL[1] = 0.7071067811865475*(fhatALQuad[1]-1.0*fhatALQuad[0]); 

  // begin surface update 
 
  double fluxFracL, fluxFracR, limfac, flim = 0.;
  double GhatCtrl[2], GhatLimCtrl[2], ohmModCtrl[2];
  fluxFracL = positivityWeightByDirL[0] == 0. ? 0.5 : positivityWeightByDirL[1]/positivityWeightByDirL[0]; 
  fluxFracR = positivityWeightByDirR[0] == 0. ? 0.5 : positivityWeightByDirR[1]/positivityWeightByDirR[0]; 
  // control node [vpar] = [-1/3] 
  GhatCtrl[0] = alpha[0]*(0.5*fhatAL[0]-0.2886751345948129*fhatAL[1]); 
  if(GhatCtrl[0] > EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fl[3]+1.732050807568877*fl[2]-1.732050807568877*fl[1]-3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatCtrl[0]/dtApprox/dfac_x)); 
  } else if(GhatCtrl[0] < -EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fr[3]-1.732050807568877*(fr[2]+fr[1])+3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatCtrl[0]/dtApprox/dfac_x)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[0] = limfac*GhatCtrl[0]; 
  //}
  // control node [vpar] = [1/3] 
  GhatCtrl[1] = alpha[0]*(0.2886751345948129*fhatAL[1]+0.5*fhatAL[0]); 
  if(GhatCtrl[1] > EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fl[3]+1.732050807568877*(fl[2]+fl[1])+3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatCtrl[1]/dtApprox/dfac_x)); 
  } else if(GhatCtrl[1] < -EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fr[3]-1.732050807568877*fr[2]+1.732050807568877*fr[1]-3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatCtrl[1]/dtApprox/dfac_x)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[1] = limfac*GhatCtrl[1]; 
  //}

  incr[0] = 0.5*(GhatCtrl[1]+GhatCtrl[0])*dfac_x; 
  incr[1] = -0.8660254037844386*(GhatCtrl[1]+GhatCtrl[0])*dfac_x; 
  incr[2] = 0.8660254037844386*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_x; 
  incr[3] = -1.5*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_x; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  return std::abs(alpha0); 
} 
double EmGyrokineticSurfPositivity1x1vSer_Vpar_P1_Bvars_0(const double q_, const double m_, const double *w, const double *dxv, 
                        const double *Bmag, const double *BmagInv, const double *Gradpar, 
                        const double *BdriftX, const double *BdriftY, const double *Phi, 
                        const double *Apar, const double *dApardt, const double *dApardtProv, 
                        const double dtApprox, const double *positivityWeightByDirL, const double *positivityWeightByDirR, 
                        const double *fl, const double *fr, double *outl, double *outr, 
                        double *ohmModL, double *ohmModR) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. H/f: Input Hamiltonian/distribution function. out: Incremented output 
  double dfac_x = 2.0/dxv[0]; 
  double dfac_v = 2.0/dxv[1]; 
  double wx = w[0]; 
  double wv = w[1]; 
  double wv2 = wv*wv; 
  double dfac_v2 = dfac_v*dfac_v; 
  double q2 = q_*q_; 
  double incr[4]; 
  double incrOhmMod[4]; 
  // surface-averaged phase velocity in this direction 
  double alpha0 = -(0.25*(1.732050807568877*Gradpar[0]*Phi[1]*dfac_x+1.414213562373095*dApardtProv[0])*q_)/m_; 

  double alpha[2]; 
  alpha[0] = -(1.224744871391589*Gradpar[0]*Phi[1]*dfac_x*q_)/m_; 
  double alphaUp[2]; 
  alphaUp[0] = -(0.7071067811865475*(1.732050807568877*Gradpar[0]*Phi[1]*dfac_x+1.414213562373095*dApardtProv[0])*q_)/m_; 
  alphaUp[1] = -(1.0*dApardtProv[1]*q_)/m_; 
  double rCtrlL[2], rCtrlR[2];  // rCtrl=f1/f0 at each control node in dimensions other than vx 
  rCtrlL[0] = -(1.0*(1.732050807568877*fl[3]-3.0*fl[2]))/(3.464101615137754*EPSILON-1.0*fl[1]+1.732050807568877*fl[0]); 
  rCtrlL[1] = (1.732050807568877*fl[3]+3.0*fl[2])/(3.464101615137754*EPSILON+fl[1]+1.732050807568877*fl[0]); 
  rCtrlR[0] = -(1.0*(1.732050807568877*fr[3]-3.0*fr[2]))/(3.464101615137754*EPSILON-1.0*fr[1]+1.732050807568877*fr[0]); 
  rCtrlR[1] = (1.732050807568877*fr[3]+3.0*fr[2])/(3.464101615137754*EPSILON+fr[1]+1.732050807568877*fr[0]); 
  double fCtrlL[2], fCtrlR[2];  // fCtrl = anti-limited f evaluated at each control node on vx surface 
  // control node [x] = [-1/3] 
  fCtrlL[0] = -0.2886751345948129*(fl[1]-1.732050807568877*fl[0])*limTheta(rCtrlL[0],1.0); 
  fCtrlR[0] = -0.2886751345948129*(fr[1]-1.732050807568877*fr[0])*limTheta(rCtrlR[0],-1.0); 
  // control node [x] = [1/3] 
  fCtrlL[1] = 0.2886751345948129*(fl[1]+1.732050807568877*fl[0])*limTheta(rCtrlL[1],1.0); 
  fCtrlR[1] = 0.2886751345948129*(fr[1]+1.732050807568877*fr[0])*limTheta(rCtrlR[1],-1.0); 
  double fL_AL[2], fR_AL[2];  // f_AL = mode coefficients of anti-limited f on surface 
  fL_AL[0] = 0.7071067811865475*(fCtrlL[1]+fCtrlL[0]); 
  fL_AL[1] = 1.224744871391589*(fCtrlL[1]-1.0*fCtrlL[0]); 
  fR_AL[0] = 0.7071067811865475*(fCtrlR[1]+fCtrlR[0]); 
  fR_AL[1] = 1.224744871391589*(fCtrlR[1]-1.0*fCtrlR[0]); 
  double alphaQuad; 
  // determine upwinding and enforce limiters at each surface quadrature node 
  double fhatALQuad[2], fhatAL[2]; 
  alphaQuad = 0.7071067811865475*alphaUp[0]-0.7071067811865475*alphaUp[1]; 
  if(alphaQuad > 0) {
  fhatALQuad[0] = -0.5*(1.414213562373095*fL_AL[1]-1.414213562373095*fL_AL[0]); 
  } else {
  fhatALQuad[0] = -0.5*(1.414213562373095*fR_AL[1]-1.414213562373095*fR_AL[0]); 
  } 
  alphaQuad = 0.7071067811865475*(alphaUp[1]+alphaUp[0]); 
  if(alphaQuad > 0) {
  fhatALQuad[1] = 0.7071067811865476*(fL_AL[1]+fL_AL[0]); 
  } else {
  fhatALQuad[1] = 0.7071067811865476*(fR_AL[1]+fR_AL[0]); 
  } 
  fhatAL[0] = 0.7071067811865475*(fhatALQuad[1]+fhatALQuad[0]); 
  fhatAL[1] = 0.7071067811865475*(fhatALQuad[1]-1.0*fhatALQuad[0]); 

  // begin surface update 
 
  double fluxFracL, fluxFracR, limfac, flim = 0.;
  double GhatCtrl[2], GhatLimCtrl[2], ohmModCtrl[2];
  fluxFracL = positivityWeightByDirL[0] == 0. ? 0.5 : positivityWeightByDirL[2]/positivityWeightByDirL[0]; 
  fluxFracR = positivityWeightByDirR[0] == 0. ? 0.5 : positivityWeightByDirR[2]/positivityWeightByDirR[0]; 
  // control node [x] = [-1/3] 
  GhatCtrl[0] = alpha[0]*(0.5*fhatAL[0]-0.2886751345948129*fhatAL[1]); 
  ohmModCtrl[0] = 0.7071067811865475*fhatAL[0]-0.408248290463863*fhatAL[1]; 
  GhatLimCtrl[0] = 0.5*(alphaUp[1]*fhatAL[1]+alphaUp[0]*fhatAL[0])-0.2886751345948129*(alphaUp[0]*fhatAL[1]+fhatAL[0]*alphaUp[1]); 
  if(GhatLimCtrl[0] > EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fl[3]-1.732050807568877*fl[2]+1.732050807568877*fl[1]-3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatLimCtrl[0]/dtApprox/dfac_v)); 
  } else if(GhatLimCtrl[0] < -EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fr[3]-1.732050807568877*(fr[2]+fr[1])+3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatLimCtrl[0]/dtApprox/dfac_v)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[0] = limfac*GhatLimCtrl[0]; 
    ohmModCtrl[0] = 0.; 
  //}
  // control node [x] = [1/3] 
  GhatCtrl[1] = alpha[0]*(0.2886751345948129*fhatAL[1]+0.5*fhatAL[0]); 
  ohmModCtrl[1] = 0.408248290463863*fhatAL[1]+0.7071067811865475*fhatAL[0]; 
  GhatLimCtrl[1] = 0.5*(alphaUp[1]*fhatAL[1]+alphaUp[0]*fhatAL[0])+0.2886751345948129*(alphaUp[0]*fhatAL[1]+fhatAL[0]*alphaUp[1]); 
  if(GhatLimCtrl[1] > EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fl[3]+1.732050807568877*(fl[2]+fl[1])+3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatLimCtrl[1]/dtApprox/dfac_v)); 
  } else if(GhatLimCtrl[1] < -EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fr[3]+1.732050807568877*fr[2]-1.732050807568877*fr[1]-3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatLimCtrl[1]/dtApprox/dfac_v)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[1] = limfac*GhatLimCtrl[1]; 
    ohmModCtrl[1] = 0.; 
  //}

  incr[0] = 0.5*(GhatCtrl[1]+GhatCtrl[0])*dfac_v; 
  incr[1] = 0.8660254037844386*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_v; 
  incr[2] = -0.8660254037844386*(GhatCtrl[1]+GhatCtrl[0])*dfac_v; 
  incr[3] = -1.5*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_v; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += -1.0*incr[1]; 
  outl[2] += incr[2]; 
  outl[3] += incr[3]; 
  incrOhmMod[0] = 0.5*(ohmModCtrl[1]+ohmModCtrl[0])*dfac_v; 
  incrOhmMod[1] = 0.8660254037844386*(ohmModCtrl[1]-1.0*ohmModCtrl[0])*dfac_v; 
  incrOhmMod[2] = -0.8660254037844386*(ohmModCtrl[1]+ohmModCtrl[0])*dfac_v; 
  incrOhmMod[3] = -1.5*(ohmModCtrl[1]-1.0*ohmModCtrl[0])*dfac_v; 
  ohmModR[0] += incrOhmMod[0]; 
  ohmModR[1] += incrOhmMod[1]; 
  ohmModR[2] += incrOhmMod[2]; 
  ohmModR[3] += incrOhmMod[3]; 
  ohmModL[0] += -1.0*incrOhmMod[0]; 
  ohmModL[1] += -1.0*incrOhmMod[1]; 
  ohmModL[2] += incrOhmMod[2]; 
  ohmModL[3] += incrOhmMod[3]; 
  return std::abs(alpha0); 
} 
double EmGyrokineticSurfPositivity1x1vSer_X_P1_Bvars_1(const double q_, const double m_, const double *w, const double *dxv, 
                        const double *Bmag, const double *BmagInv, const double *Gradpar, 
                        const double *BdriftX, const double *BdriftY, const double *Phi, 
                        const double *Apar, const double *dApardt, const double *dApardtProv, 
                        const double dtApprox, const double *positivityWeightByDirL, const double *positivityWeightByDirR, 
                        const double *fl, const double *fr, double *outl, double *outr, 
                        double *ohmModL, double *ohmModR) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. H/f: Input Hamiltonian/distribution function. out: Incremented output 
  double dfac_x = 2.0/dxv[0]; 
  double dfac_v = 2.0/dxv[1]; 
  double wx = w[0]; 
  double wv = w[1]; 
  double wv2 = wv*wv; 
  double dfac_v2 = dfac_v*dfac_v; 
  double q2 = q_*q_; 
  double incr[4]; 
  // surface-averaged phase velocity in this direction 
  double alpha0 = -0.3535533905932737*(1.732050807568877*Gradpar[1]-1.0*Gradpar[0])*wv; 

  double alpha[2]; 
  alpha[0] = (Gradpar[0]-1.732050807568877*Gradpar[1])*wv; 
  double rCtrlL[2], rCtrlR[2];  // rCtrl=f1/f0 at each control node in dimensions other than x 
  rCtrlL[0] = -(1.0*(1.732050807568877*fl[3]-3.0*fl[1]))/(3.464101615137754*EPSILON-1.0*fl[2]+1.732050807568877*fl[0]); 
  rCtrlL[1] = (1.732050807568877*fl[3]+3.0*fl[1])/(3.464101615137754*EPSILON+fl[2]+1.732050807568877*fl[0]); 
  rCtrlR[0] = -(1.0*(1.732050807568877*fr[3]-3.0*fr[1]))/(3.464101615137754*EPSILON-1.0*fr[2]+1.732050807568877*fr[0]); 
  rCtrlR[1] = (1.732050807568877*fr[3]+3.0*fr[1])/(3.464101615137754*EPSILON+fr[2]+1.732050807568877*fr[0]); 
  double fCtrlL[2], fCtrlR[2];  // fCtrl = anti-limited f evaluated at each control node on x surface 
  // control node [vx] = [-1/3] 
  fCtrlL[0] = -0.2886751345948129*(fl[2]-1.732050807568877*fl[0])*limTheta(rCtrlL[0],1.0); 
  fCtrlR[0] = -0.2886751345948129*(fr[2]-1.732050807568877*fr[0])*limTheta(rCtrlR[0],-1.0); 
  // control node [vx] = [1/3] 
  fCtrlL[1] = 0.2886751345948129*(fl[2]+1.732050807568877*fl[0])*limTheta(rCtrlL[1],1.0); 
  fCtrlR[1] = 0.2886751345948129*(fr[2]+1.732050807568877*fr[0])*limTheta(rCtrlR[1],-1.0); 
  double fL_AL[2], fR_AL[2];  // f_AL = mode coefficients of anti-limited f on surface 
  fL_AL[0] = 0.7071067811865475*(fCtrlL[1]+fCtrlL[0]); 
  fL_AL[1] = 1.224744871391589*(fCtrlL[1]-1.0*fCtrlL[0]); 
  fR_AL[0] = 0.7071067811865475*(fCtrlR[1]+fCtrlR[0]); 
  fR_AL[1] = 1.224744871391589*(fCtrlR[1]-1.0*fCtrlR[0]); 
  double alphaQuad; 
  // determine upwinding and enforce limiters at each surface quadrature node 
  double fhatALQuad[2], fhatAL[2]; 
  alphaQuad = 0.7071067811865475*alpha[0]; 
  if(alphaQuad > 0) {
  fhatALQuad[0] = -0.5*(1.414213562373095*fL_AL[1]-1.414213562373095*fL_AL[0]); 
  } else {
  fhatALQuad[0] = -0.5*(1.414213562373095*fR_AL[1]-1.414213562373095*fR_AL[0]); 
  } 
  alphaQuad = 0.7071067811865475*alpha[0]; 
  if(alphaQuad > 0) {
  fhatALQuad[1] = 0.7071067811865476*(fL_AL[1]+fL_AL[0]); 
  } else {
  fhatALQuad[1] = 0.7071067811865476*(fR_AL[1]+fR_AL[0]); 
  } 
  fhatAL[0] = 0.7071067811865475*(fhatALQuad[1]+fhatALQuad[0]); 
  fhatAL[1] = 0.7071067811865475*(fhatALQuad[1]-1.0*fhatALQuad[0]); 

  // begin surface update 
 
  double fluxFracL, fluxFracR, limfac, flim = 0.;
  double GhatCtrl[2], GhatLimCtrl[2], ohmModCtrl[2];
  fluxFracL = positivityWeightByDirL[0] == 0. ? 0.5 : positivityWeightByDirL[1]/positivityWeightByDirL[0]; 
  fluxFracR = positivityWeightByDirR[0] == 0. ? 0.5 : positivityWeightByDirR[1]/positivityWeightByDirR[0]; 
  // control node [vpar] = [-1/3] 
  GhatCtrl[0] = alpha[0]*(0.5*fhatAL[0]-0.2886751345948129*fhatAL[1]); 
  if(GhatCtrl[0] > EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fl[3]+1.732050807568877*fl[2]-1.732050807568877*fl[1]-3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatCtrl[0]/dtApprox/dfac_x)); 
  } else if(GhatCtrl[0] < -EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fr[3]-1.732050807568877*(fr[2]+fr[1])+3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatCtrl[0]/dtApprox/dfac_x)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[0] = limfac*GhatCtrl[0]; 
  //}
  // control node [vpar] = [1/3] 
  GhatCtrl[1] = alpha[0]*(0.2886751345948129*fhatAL[1]+0.5*fhatAL[0]); 
  if(GhatCtrl[1] > EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fl[3]+1.732050807568877*(fl[2]+fl[1])+3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatCtrl[1]/dtApprox/dfac_x)); 
  } else if(GhatCtrl[1] < -EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fr[3]-1.732050807568877*fr[2]+1.732050807568877*fr[1]-3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatCtrl[1]/dtApprox/dfac_x)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[1] = limfac*GhatCtrl[1]; 
  //}

  incr[0] = 0.5*(GhatCtrl[1]+GhatCtrl[0])*dfac_x; 
  incr[1] = -0.8660254037844386*(GhatCtrl[1]+GhatCtrl[0])*dfac_x; 
  incr[2] = 0.8660254037844386*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_x; 
  incr[3] = -1.5*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_x; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += incr[1]; 
  outl[2] += -1.0*incr[2]; 
  outl[3] += incr[3]; 
  return std::abs(alpha0); 
} 
double EmGyrokineticSurfPositivity1x1vSer_Vpar_P1_Bvars_1(const double q_, const double m_, const double *w, const double *dxv, 
                        const double *Bmag, const double *BmagInv, const double *Gradpar, 
                        const double *BdriftX, const double *BdriftY, const double *Phi, 
                        const double *Apar, const double *dApardt, const double *dApardtProv, 
                        const double dtApprox, const double *positivityWeightByDirL, const double *positivityWeightByDirR, 
                        const double *fl, const double *fr, double *outl, double *outr, 
                        double *ohmModL, double *ohmModR) 
{ 
// w[NDIM]: Cell-center coordinates. dxv[NDIM]: Cell spacing. H/f: Input Hamiltonian/distribution function. out: Incremented output 
  double dfac_x = 2.0/dxv[0]; 
  double dfac_v = 2.0/dxv[1]; 
  double wx = w[0]; 
  double wv = w[1]; 
  double wv2 = wv*wv; 
  double dfac_v2 = dfac_v*dfac_v; 
  double q2 = q_*q_; 
  double incr[4]; 
  double incrOhmMod[4]; 
  // surface-averaged phase velocity in this direction 
  double alpha0 = -(0.25*(1.732050807568877*Gradpar[0]*Phi[1]*dfac_x+1.414213562373095*dApardtProv[0])*q_)/m_; 

  double alpha[2]; 
  alpha[0] = -(1.224744871391589*Gradpar[0]*Phi[1]*dfac_x*q_)/m_; 
  alpha[1] = -(1.224744871391589*Gradpar[1]*Phi[1]*dfac_x*q_)/m_; 
  double alphaUp[2]; 
  alphaUp[0] = -(0.7071067811865475*(1.732050807568877*Gradpar[0]*Phi[1]*dfac_x+1.414213562373095*dApardtProv[0])*q_)/m_; 
  alphaUp[1] = -(0.7071067811865475*(1.732050807568877*Gradpar[1]*Phi[1]*dfac_x+1.414213562373095*dApardtProv[1])*q_)/m_; 
  double rCtrlL[2], rCtrlR[2];  // rCtrl=f1/f0 at each control node in dimensions other than vx 
  rCtrlL[0] = -(1.0*(1.732050807568877*fl[3]-3.0*fl[2]))/(3.464101615137754*EPSILON-1.0*fl[1]+1.732050807568877*fl[0]); 
  rCtrlL[1] = (1.732050807568877*fl[3]+3.0*fl[2])/(3.464101615137754*EPSILON+fl[1]+1.732050807568877*fl[0]); 
  rCtrlR[0] = -(1.0*(1.732050807568877*fr[3]-3.0*fr[2]))/(3.464101615137754*EPSILON-1.0*fr[1]+1.732050807568877*fr[0]); 
  rCtrlR[1] = (1.732050807568877*fr[3]+3.0*fr[2])/(3.464101615137754*EPSILON+fr[1]+1.732050807568877*fr[0]); 
  double fCtrlL[2], fCtrlR[2];  // fCtrl = anti-limited f evaluated at each control node on vx surface 
  // control node [x] = [-1/3] 
  fCtrlL[0] = -0.2886751345948129*(fl[1]-1.732050807568877*fl[0])*limTheta(rCtrlL[0],1.0); 
  fCtrlR[0] = -0.2886751345948129*(fr[1]-1.732050807568877*fr[0])*limTheta(rCtrlR[0],-1.0); 
  // control node [x] = [1/3] 
  fCtrlL[1] = 0.2886751345948129*(fl[1]+1.732050807568877*fl[0])*limTheta(rCtrlL[1],1.0); 
  fCtrlR[1] = 0.2886751345948129*(fr[1]+1.732050807568877*fr[0])*limTheta(rCtrlR[1],-1.0); 
  double fL_AL[2], fR_AL[2];  // f_AL = mode coefficients of anti-limited f on surface 
  fL_AL[0] = 0.7071067811865475*(fCtrlL[1]+fCtrlL[0]); 
  fL_AL[1] = 1.224744871391589*(fCtrlL[1]-1.0*fCtrlL[0]); 
  fR_AL[0] = 0.7071067811865475*(fCtrlR[1]+fCtrlR[0]); 
  fR_AL[1] = 1.224744871391589*(fCtrlR[1]-1.0*fCtrlR[0]); 
  double alphaQuad; 
  // determine upwinding and enforce limiters at each surface quadrature node 
  double fhatALQuad[2], fhatAL[2]; 
  alphaQuad = 0.7071067811865475*alphaUp[0]-0.7071067811865475*alphaUp[1]; 
  if(alphaQuad > 0) {
  fhatALQuad[0] = -0.5*(1.414213562373095*fL_AL[1]-1.414213562373095*fL_AL[0]); 
  } else {
  fhatALQuad[0] = -0.5*(1.414213562373095*fR_AL[1]-1.414213562373095*fR_AL[0]); 
  } 
  alphaQuad = 0.7071067811865475*(alphaUp[1]+alphaUp[0]); 
  if(alphaQuad > 0) {
  fhatALQuad[1] = 0.7071067811865476*(fL_AL[1]+fL_AL[0]); 
  } else {
  fhatALQuad[1] = 0.7071067811865476*(fR_AL[1]+fR_AL[0]); 
  } 
  fhatAL[0] = 0.7071067811865475*(fhatALQuad[1]+fhatALQuad[0]); 
  fhatAL[1] = 0.7071067811865475*(fhatALQuad[1]-1.0*fhatALQuad[0]); 

  // begin surface update 
 
  double fluxFracL, fluxFracR, limfac, flim = 0.;
  double GhatCtrl[2], GhatLimCtrl[2], ohmModCtrl[2];
  fluxFracL = positivityWeightByDirL[0] == 0. ? 0.5 : positivityWeightByDirL[2]/positivityWeightByDirL[0]; 
  fluxFracR = positivityWeightByDirR[0] == 0. ? 0.5 : positivityWeightByDirR[2]/positivityWeightByDirR[0]; 
  // control node [x] = [-1/3] 
  GhatCtrl[0] = 0.5*(alpha[1]*fhatAL[1]+alpha[0]*fhatAL[0])-0.2886751345948129*(alpha[0]*fhatAL[1]+fhatAL[0]*alpha[1]); 
  ohmModCtrl[0] = 0.7071067811865475*fhatAL[0]-0.408248290463863*fhatAL[1]; 
  GhatLimCtrl[0] = 0.5*(alphaUp[1]*fhatAL[1]+alphaUp[0]*fhatAL[0])-0.2886751345948129*(alphaUp[0]*fhatAL[1]+fhatAL[0]*alphaUp[1]); 
  if(GhatLimCtrl[0] > EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fl[3]-1.732050807568877*fl[2]+1.732050807568877*fl[1]-3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatLimCtrl[0]/dtApprox/dfac_v)); 
  } else if(GhatLimCtrl[0] < -EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fr[3]-1.732050807568877*(fr[2]+fr[1])+3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatLimCtrl[0]/dtApprox/dfac_v)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[0] = limfac*GhatLimCtrl[0]; 
    ohmModCtrl[0] = 0.; 
  //}
  // control node [x] = [1/3] 
  GhatCtrl[1] = 0.5*(alpha[1]*fhatAL[1]+alpha[0]*fhatAL[0])+0.2886751345948129*(alpha[0]*fhatAL[1]+fhatAL[0]*alpha[1]); 
  ohmModCtrl[1] = 0.408248290463863*fhatAL[1]+0.7071067811865475*fhatAL[0]; 
  GhatLimCtrl[1] = 0.5*(alphaUp[1]*fhatAL[1]+alphaUp[0]*fhatAL[0])+0.2886751345948129*(alphaUp[0]*fhatAL[1]+fhatAL[0]*alphaUp[1]); 
  if(GhatLimCtrl[1] > EPSILON) {
    flim = std::max(0., 0.1666666666666667*(fl[3]+1.732050807568877*(fl[2]+fl[1])+3.0*fl[0])); 
    limfac = std::min(1., std::abs(fluxFracL*flim/GhatLimCtrl[1]/dtApprox/dfac_v)); 
  } else if(GhatLimCtrl[1] < -EPSILON) {
    flim = std::max(0., -0.1666666666666667*(fr[3]+1.732050807568877*fr[2]-1.732050807568877*fr[1]-3.0*fr[0])); 
    limfac = std::min(1., std::abs(fluxFracR*flim/GhatLimCtrl[1]/dtApprox/dfac_v)); 
  } else limfac = 0.; 
  //if(limfac != 1.) { 
    GhatCtrl[1] = limfac*GhatLimCtrl[1]; 
    ohmModCtrl[1] = 0.; 
  //}

  incr[0] = 0.5*(GhatCtrl[1]+GhatCtrl[0])*dfac_v; 
  incr[1] = 0.8660254037844386*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_v; 
  incr[2] = -0.8660254037844386*(GhatCtrl[1]+GhatCtrl[0])*dfac_v; 
  incr[3] = -1.5*(GhatCtrl[1]-1.0*GhatCtrl[0])*dfac_v; 

  outr[0] += incr[0]; 
  outr[1] += incr[1]; 
  outr[2] += incr[2]; 
  outr[3] += incr[3]; 

  outl[0] += -1.0*incr[0]; 
  outl[1] += -1.0*incr[1]; 
  outl[2] += incr[2]; 
  outl[3] += incr[3]; 
  incrOhmMod[0] = 0.5*(ohmModCtrl[1]+ohmModCtrl[0])*dfac_v; 
  incrOhmMod[1] = 0.8660254037844386*(ohmModCtrl[1]-1.0*ohmModCtrl[0])*dfac_v; 
  incrOhmMod[2] = -0.8660254037844386*(ohmModCtrl[1]+ohmModCtrl[0])*dfac_v; 
  incrOhmMod[3] = -1.5*(ohmModCtrl[1]-1.0*ohmModCtrl[0])*dfac_v; 
  ohmModR[0] += incrOhmMod[0]; 
  ohmModR[1] += incrOhmMod[1]; 
  ohmModR[2] += incrOhmMod[2]; 
  ohmModR[3] += incrOhmMod[3]; 
  ohmModL[0] += -1.0*incrOhmMod[0]; 
  ohmModL[1] += -1.0*incrOhmMod[1]; 
  ohmModL[2] += incrOhmMod[2]; 
  ohmModL[3] += incrOhmMod[3]; 
  return std::abs(alpha0); 
} 
