#include <math.h>
#include <fpoKernelsDecl.h>

void fpoDragKernelP1(const double dt, const double *dv, const double *f, const double *fL, const double *fR, const double *fT, const double *fB, const double *h, const double *hL, const double *hR, const double *hT, const double *hB, const int isTopEdge, const int isBotEdge, const int isLeftEdge, const int isRightEdge, double *fOut) {
  if (isLeftEdge) {
    fOut[0] = f[0] + -0.0625*((10.0*fR[3]-10.0*f[3]-8.660254037844386*fR[2]-8.660254037844386*f[2])*hR[3]+(10.0*fR[3]-10.0*f[3]-8.660254037844386*fR[2]-8.660254037844386*f[2])*h[3]+(10.39230484541326*h[2]-10.39230484541326*hR[2])*fR[3]+(10.39230484541326*hR[2]-10.39230484541326*h[2])*f[3]+(9.0*fR[2]+9.0*f[2])*hR[2]+((-9.0*fR[2])-9.0*f[2])*h[2]+(10.0*fR[1]-10.0*f[1]-8.660254037844386*fR[0]-8.660254037844386*f[0])*hR[1]+(10.0*fR[1]-10.0*f[1]-8.660254037844386*fR[0]-8.660254037844386*f[0])*h[1]+(10.39230484541326*h[0]-10.39230484541326*hR[0])*fR[1]+(10.39230484541326*hR[0]-10.39230484541326*h[0])*f[1]+(9.0*fR[0]+9.0*f[0])*hR[0]+((-9.0*fR[0])-9.0*f[0])*h[0])*gkyl_ipow(dv[0],-2)*dt;
    fOut[1] = f[1] + -0.03608439182435162*((30.0*fR[3]-30.0*f[3]-25.98076211353316*fR[2]-25.98076211353316*f[2])*hR[3]+(30.0*fR[3]-30.0*f[3]-25.98076211353316*fR[2]-25.98076211353316*f[2])*h[3]+(31.17691453623978*h[2]-31.17691453623978*hR[2])*fR[3]+(31.17691453623978*hR[2]-31.17691453623978*h[2])*f[3]+(27.0*fR[2]+27.0*f[2])*hR[2]+((-27.0*fR[2])-27.0*f[2])*h[2]+(30.0*fR[1]-30.0*f[1]-25.98076211353316*fR[0]-25.98076211353316*f[0])*hR[1]+(30.0*fR[1]-30.0*f[1]-25.98076211353316*fR[0]-25.98076211353316*f[0])*h[1]+(31.17691453623978*h[0]-31.17691453623978*hR[0])*fR[1]+(31.17691453623978*hR[0]-31.17691453623978*h[0])*f[1]+(27.0*fR[0]+27.0*f[0])*hR[0]+((-27.0*fR[0])-27.0*f[0])*h[0])*gkyl_ipow(dv[0],-2)*dt;
    fOut[2] = f[2] + -0.03608439182435162*((17.32050807568877*fR[1]-17.32050807568877*f[1]-15.0*fR[0]-15.0*f[0])*hR[3]+(17.32050807568877*fR[1]-17.32050807568877*f[1]-15.0*fR[0]-15.0*f[0])*h[3]+(17.32050807568877*hR[1]+17.32050807568877*h[1]-18.0*hR[0]+18.0*h[0])*fR[3]+((-17.32050807568877*hR[1])-17.32050807568877*h[1]+18.0*hR[0]-18.0*h[0])*f[3]+((-18.0*fR[1])+18.0*f[1]+15.58845726811989*fR[0]+15.58845726811989*f[0])*hR[2]+(18.0*fR[1]-18.0*f[1]-15.58845726811989*fR[0]-15.58845726811989*f[0])*h[2]+((-15.0*hR[1])-15.0*h[1]+15.58845726811989*hR[0]-15.58845726811989*h[0])*fR[2]+((-15.0*hR[1])-15.0*h[1]+15.58845726811989*hR[0]-15.58845726811989*h[0])*f[2])*gkyl_ipow(dv[0],-2)*dt;
    fOut[3] = f[3] + -0.0625*((17.32050807568877*fR[1]-17.32050807568877*f[1]-15.0*fR[0]-15.0*f[0])*hR[3]+(17.32050807568877*fR[1]-17.32050807568877*f[1]-15.0*fR[0]-15.0*f[0])*h[3]+(17.32050807568877*hR[1]+17.32050807568877*h[1]-18.0*hR[0]+18.0*h[0])*fR[3]+((-17.32050807568877*hR[1])-17.32050807568877*h[1]+18.0*hR[0]-18.0*h[0])*f[3]+((-18.0*fR[1])+18.0*f[1]+15.58845726811989*fR[0]+15.58845726811989*f[0])*hR[2]+(18.0*fR[1]-18.0*f[1]-15.58845726811989*fR[0]-15.58845726811989*f[0])*h[2]+((-15.0*hR[1])-15.0*h[1]+15.58845726811989*hR[0]-15.58845726811989*h[0])*fR[2]+((-15.0*hR[1])-15.0*h[1]+15.58845726811989*hR[0]-15.58845726811989*h[0])*f[2])*gkyl_ipow(dv[0],-2)*dt;
  } else if (isRightEdge) {
    fOut[0] = f[0] + -0.0625*((10.0*fL[3]-10.0*f[3]+8.660254037844386*fL[2]+8.660254037844386*f[2])*hL[3]+(10.0*fL[3]-10.0*f[3]+8.660254037844386*fL[2]+8.660254037844386*f[2])*h[3]+(10.39230484541326*hL[2]-10.39230484541326*h[2])*fL[3]+(10.39230484541326*h[2]-10.39230484541326*hL[2])*f[3]+(9.0*fL[2]+9.0*f[2])*hL[2]+((-9.0*fL[2])-9.0*f[2])*h[2]+(10.0*fL[1]-10.0*f[1]+8.660254037844386*fL[0]+8.660254037844386*f[0])*hL[1]+(10.0*fL[1]-10.0*f[1]+8.660254037844386*fL[0]+8.660254037844386*f[0])*h[1]+(10.39230484541326*hL[0]-10.39230484541326*h[0])*fL[1]+(10.39230484541326*h[0]-10.39230484541326*hL[0])*f[1]+(9.0*fL[0]+9.0*f[0])*hL[0]+((-9.0*fL[0])-9.0*f[0])*h[0])*gkyl_ipow(dv[0],-2)*dt;
    fOut[1] = f[1] + 0.03608439182435162*((30.0*fL[3]-30.0*f[3]+25.98076211353316*fL[2]+25.98076211353316*f[2])*hL[3]+(30.0*fL[3]-30.0*f[3]+25.98076211353316*fL[2]+25.98076211353316*f[2])*h[3]+(31.17691453623978*hL[2]-31.17691453623978*h[2])*fL[3]+(31.17691453623978*h[2]-31.17691453623978*hL[2])*f[3]+(27.0*fL[2]+27.0*f[2])*hL[2]+((-27.0*fL[2])-27.0*f[2])*h[2]+(30.0*fL[1]-30.0*f[1]+25.98076211353316*fL[0]+25.98076211353316*f[0])*hL[1]+(30.0*fL[1]-30.0*f[1]+25.98076211353316*fL[0]+25.98076211353316*f[0])*h[1]+(31.17691453623978*hL[0]-31.17691453623978*h[0])*fL[1]+(31.17691453623978*h[0]-31.17691453623978*hL[0])*f[1]+(27.0*fL[0]+27.0*f[0])*hL[0]+((-27.0*fL[0])-27.0*f[0])*h[0])*gkyl_ipow(dv[0],-2)*dt;
    fOut[2] = f[2] + -0.03608439182435162*((17.32050807568877*fL[1]-17.32050807568877*f[1]+15.0*fL[0]+15.0*f[0])*hL[3]+(17.32050807568877*fL[1]-17.32050807568877*f[1]+15.0*fL[0]+15.0*f[0])*h[3]+(17.32050807568877*hL[1]+17.32050807568877*h[1]+18.0*hL[0]-18.0*h[0])*fL[3]+((-17.32050807568877*hL[1])-17.32050807568877*h[1]-18.0*hL[0]+18.0*h[0])*f[3]+(18.0*fL[1]-18.0*f[1]+15.58845726811989*fL[0]+15.58845726811989*f[0])*hL[2]+((-18.0*fL[1])+18.0*f[1]-15.58845726811989*fL[0]-15.58845726811989*f[0])*h[2]+(15.0*hL[1]+15.0*h[1]+15.58845726811989*hL[0]-15.58845726811989*h[0])*fL[2]+(15.0*hL[1]+15.0*h[1]+15.58845726811989*hL[0]-15.58845726811989*h[0])*f[2])*gkyl_ipow(dv[0],-2)*dt;
    fOut[3] = f[3] + 0.0625*((17.32050807568877*fL[1]-17.32050807568877*f[1]+15.0*fL[0]+15.0*f[0])*hL[3]+(17.32050807568877*fL[1]-17.32050807568877*f[1]+15.0*fL[0]+15.0*f[0])*h[3]+(17.32050807568877*hL[1]+17.32050807568877*h[1]+18.0*hL[0]-18.0*h[0])*fL[3]+((-17.32050807568877*hL[1])-17.32050807568877*h[1]-18.0*hL[0]+18.0*h[0])*f[3]+(18.0*fL[1]-18.0*f[1]+15.58845726811989*fL[0]+15.58845726811989*f[0])*hL[2]+((-18.0*fL[1])+18.0*f[1]-15.58845726811989*fL[0]-15.58845726811989*f[0])*h[2]+(15.0*hL[1]+15.0*h[1]+15.58845726811989*hL[0]-15.58845726811989*h[0])*fL[2]+(15.0*hL[1]+15.0*h[1]+15.58845726811989*hL[0]-15.58845726811989*h[0])*f[2])*gkyl_ipow(dv[0],-2)*dt;
  } else {
    fOut[0] = f[0] + -0.0625*((10.0*fR[3]-10.0*f[3]-8.660254037844386*fR[2]-8.660254037844386*f[2])*hR[3]+(10.0*fL[3]-10.0*f[3]+8.660254037844386*fL[2]+8.660254037844386*f[2])*hL[3]+(10.0*fR[3]+10.0*fL[3]-20.0*f[3]-8.660254037844386*fR[2]+8.660254037844386*fL[2])*h[3]+(10.39230484541326*h[2]-10.39230484541326*hR[2])*fR[3]+(10.39230484541326*hL[2]-10.39230484541326*h[2])*fL[3]+(10.39230484541326*hR[2]-10.39230484541326*hL[2])*f[3]+(9.0*fR[2]+9.0*f[2])*hR[2]+(9.0*fL[2]+9.0*f[2])*hL[2]+((-9.0*fR[2])-9.0*fL[2]-18.0*f[2])*h[2]+(10.0*fR[1]-10.0*f[1]-8.660254037844386*fR[0]-8.660254037844386*f[0])*hR[1]+(10.0*fL[1]-10.0*f[1]+8.660254037844386*fL[0]+8.660254037844386*f[0])*hL[1]+(10.0*fR[1]+10.0*fL[1]-20.0*f[1]-8.660254037844386*fR[0]+8.660254037844386*fL[0])*h[1]+(10.39230484541326*h[0]-10.39230484541326*hR[0])*fR[1]+(10.39230484541326*hL[0]-10.39230484541326*h[0])*fL[1]+(10.39230484541326*hR[0]-10.39230484541326*hL[0])*f[1]+(9.0*fR[0]+9.0*f[0])*hR[0]+(9.0*fL[0]+9.0*f[0])*hL[0]+((-9.0*fR[0])-9.0*fL[0]-18.0*f[0])*h[0])*gkyl_ipow(dv[0],-2)*dt;
    fOut[1] = f[1] + -0.0625*((17.32050807568877*fR[3]-17.32050807568877*f[3]-15.0*fR[2]-15.0*f[2])*hR[3]+((-17.32050807568877*fL[3])+17.32050807568877*f[3]-15.0*fL[2]-15.0*f[2])*hL[3]+(17.32050807568877*fR[3]-17.32050807568877*fL[3]-15.0*fR[2]-15.0*fL[2]-30.0*f[2])*h[3]+(18.0*h[2]-18.0*hR[2])*fR[3]+(18.0*h[2]-18.0*hL[2])*fL[3]+(18.0*hR[2]+18.0*hL[2]-36.0*h[2])*f[3]+(15.58845726811989*fR[2]+15.58845726811989*f[2])*hR[2]+((-15.58845726811989*fL[2])-15.58845726811989*f[2])*hL[2]+(15.58845726811989*fL[2]-15.58845726811989*fR[2])*h[2]+(17.32050807568877*fR[1]-17.32050807568877*f[1]-15.0*fR[0]-15.0*f[0])*hR[1]+((-17.32050807568877*fL[1])+17.32050807568877*f[1]-15.0*fL[0]-15.0*f[0])*hL[1]+(17.32050807568877*fR[1]-17.32050807568877*fL[1]-15.0*fR[0]-15.0*fL[0]-30.0*f[0])*h[1]+(18.0*h[0]-18.0*hR[0])*fR[1]+(18.0*h[0]-18.0*hL[0])*fL[1]+(18.0*hR[0]+18.0*hL[0]-36.0*h[0])*f[1]+(15.58845726811989*fR[0]+15.58845726811989*f[0])*hR[0]+((-15.58845726811989*fL[0])-15.58845726811989*f[0])*hL[0]+(15.58845726811989*fL[0]-15.58845726811989*fR[0])*h[0])*gkyl_ipow(dv[0],-2)*dt;
    fOut[2] = f[2] + -0.0625*((10.0*fR[1]-10.0*f[1]-8.660254037844386*fR[0]-8.660254037844386*f[0])*hR[3]+(10.0*fL[1]-10.0*f[1]+8.660254037844386*fL[0]+8.660254037844386*f[0])*hL[3]+(10.0*fR[1]+10.0*fL[1]-20.0*f[1]-8.660254037844386*fR[0]+8.660254037844386*fL[0])*h[3]+(10.0*hR[1]+10.0*h[1]-10.39230484541326*hR[0]+10.39230484541326*h[0])*fR[3]+(10.0*hL[1]+10.0*h[1]+10.39230484541326*hL[0]-10.39230484541326*h[0])*fL[3]+((-10.0*hR[1])-10.0*hL[1]-20.0*h[1]+10.39230484541326*hR[0]-10.39230484541326*hL[0])*f[3]+((-10.39230484541326*fR[1])+10.39230484541326*f[1]+9.0*fR[0]+9.0*f[0])*hR[2]+(10.39230484541326*fL[1]-10.39230484541326*f[1]+9.0*fL[0]+9.0*f[0])*hL[2]+(10.39230484541326*fR[1]-10.39230484541326*fL[1]-9.0*fR[0]-9.0*fL[0]-18.0*f[0])*h[2]+((-8.660254037844386*hR[1])-8.660254037844386*h[1]+9.0*hR[0]-9.0*h[0])*fR[2]+(8.660254037844386*hL[1]+8.660254037844386*h[1]+9.0*hL[0]-9.0*h[0])*fL[2]+((-8.660254037844386*hR[1])+8.660254037844386*hL[1]+9.0*hR[0]+9.0*hL[0]-18.0*h[0])*f[2])*gkyl_ipow(dv[0],-2)*dt;
    fOut[3] = f[3] + -0.0625*((17.32050807568877*fR[1]-17.32050807568877*f[1]-15.0*fR[0]-15.0*f[0])*hR[3]+((-17.32050807568877*fL[1])+17.32050807568877*f[1]-15.0*fL[0]-15.0*f[0])*hL[3]+(17.32050807568877*fR[1]-17.32050807568877*fL[1]-15.0*fR[0]-15.0*fL[0]-30.0*f[0])*h[3]+(17.32050807568877*hR[1]+17.32050807568877*h[1]-18.0*hR[0]+18.0*h[0])*fR[3]+((-17.32050807568877*hL[1])-17.32050807568877*h[1]-18.0*hL[0]+18.0*h[0])*fL[3]+((-17.32050807568877*hR[1])+17.32050807568877*hL[1]+18.0*hR[0]+18.0*hL[0]-36.0*h[0])*f[3]+((-18.0*fR[1])+18.0*f[1]+15.58845726811989*fR[0]+15.58845726811989*f[0])*hR[2]+((-18.0*fL[1])+18.0*f[1]-15.58845726811989*fL[0]-15.58845726811989*f[0])*hL[2]+(18.0*fR[1]+18.0*fL[1]-36.0*f[1]-15.58845726811989*fR[0]+15.58845726811989*fL[0])*h[2]+((-15.0*hR[1])-15.0*h[1]+15.58845726811989*hR[0]-15.58845726811989*h[0])*fR[2]+((-15.0*hL[1])-15.0*h[1]-15.58845726811989*hL[0]+15.58845726811989*h[0])*fL[2]+((-15.0*hR[1])-15.0*hL[1]-30.0*h[1]+15.58845726811989*hR[0]-15.58845726811989*hL[0])*f[2])*gkyl_ipow(dv[0],-2)*dt;
  }

  fOut[0] += 0.0;
  fOut[1] += -0.2886751345948129*((6.0*f[3]+3.464101615137754*f[2])*hR[3]+(3.464101615137754*f[2]-6.0*f[3])*hL[3]-6.928203230275509*f[2]*h[3]+((-5.196152422706631*hR[2])-5.196152422706631*hL[2]+10.39230484541326*h[2])*f[3]-3.0*f[2]*hR[2]+3.0*f[2]*hL[2]+(6.0*f[1]+3.464101615137754*f[0])*hR[1]+(3.464101615137754*f[0]-6.0*f[1])*hL[1]-6.928203230275509*f[0]*h[1]+((-5.196152422706631*hR[0])-5.196152422706631*hL[0]+10.39230484541326*h[0])*f[1]-3.0*f[0]*hR[0]+3.0*f[0]*hL[0])*gkyl_ipow(dv[0],-2)*dt;
  fOut[2] += 0.0;
  fOut[3] += -0.5*((3.464101615137754*f[1]+2.0*f[0])*hR[3]+(2.0*f[0]-3.464101615137754*f[1])*hL[3]-4.0*f[0]*h[3]+(3.464101615137754*hR[1]-3.464101615137754*hL[1]-3.0*hR[0]-3.0*hL[0]+6.0*h[0])*f[3]+((-3.0*f[1])-1.732050807568877*f[0])*hR[2]+(1.732050807568877*f[0]-3.0*f[1])*hL[2]+6.0*f[1]*h[2]+(2.0*hR[1]+2.0*hL[1]-4.0*h[1]-1.732050807568877*hR[0]+1.732050807568877*hL[0])*f[2])*gkyl_ipow(dv[0],-2)*dt;

  if (isBotEdge) {
    fOut[0] += -0.0625*((10.0*fT[3]-10.0*f[3]-8.660254037844386*fT[1]-8.660254037844386*f[1])*hT[3]+(10.0*fT[3]-10.0*f[3]-8.660254037844386*fT[1]-8.660254037844386*f[1])*h[3]+(10.39230484541326*h[1]-10.39230484541326*hT[1])*fT[3]+(10.39230484541326*hT[1]-10.39230484541326*h[1])*f[3]+(10.0*fT[2]-10.0*f[2]-8.660254037844386*fT[0]-8.660254037844386*f[0])*hT[2]+(10.0*fT[2]-10.0*f[2]-8.660254037844386*fT[0]-8.660254037844386*f[0])*h[2]+(10.39230484541326*h[0]-10.39230484541326*hT[0])*fT[2]+(10.39230484541326*hT[0]-10.39230484541326*h[0])*f[2]+(9.0*fT[1]+9.0*f[1])*hT[1]+((-9.0*fT[1])-9.0*f[1])*h[1]+(9.0*fT[0]+9.0*f[0])*hT[0]+((-9.0*fT[0])-9.0*f[0])*h[0])*gkyl_ipow(dv[1],-2)*dt;
    fOut[1] += -0.03608439182435162*((17.32050807568877*fT[2]-17.32050807568877*f[2]-15.0*fT[0]-15.0*f[0])*hT[3]+(17.32050807568877*fT[2]-17.32050807568877*f[2]-15.0*fT[0]-15.0*f[0])*h[3]+(17.32050807568877*hT[2]+17.32050807568877*h[2]-18.0*hT[0]+18.0*h[0])*fT[3]+((-17.32050807568877*hT[2])-17.32050807568877*h[2]+18.0*hT[0]-18.0*h[0])*f[3]+((-15.0*fT[1])-15.0*f[1])*hT[2]+((-15.0*fT[1])-15.0*f[1])*h[2]+(18.0*h[1]-18.0*hT[1])*fT[2]+(18.0*hT[1]-18.0*h[1])*f[2]+(15.58845726811989*fT[0]+15.58845726811989*f[0])*hT[1]+((-15.58845726811989*fT[0])-15.58845726811989*f[0])*h[1]+(15.58845726811989*hT[0]-15.58845726811989*h[0])*fT[1]+(15.58845726811989*hT[0]-15.58845726811989*h[0])*f[1])*gkyl_ipow(dv[1],-2)*dt;
    fOut[2] += -0.03608439182435162*((30.0*fT[3]-30.0*f[3]-25.98076211353316*fT[1]-25.98076211353316*f[1])*hT[3]+(30.0*fT[3]-30.0*f[3]-25.98076211353316*fT[1]-25.98076211353316*f[1])*h[3]+(31.17691453623978*h[1]-31.17691453623978*hT[1])*fT[3]+(31.17691453623978*hT[1]-31.17691453623978*h[1])*f[3]+(30.0*fT[2]-30.0*f[2]-25.98076211353316*fT[0]-25.98076211353316*f[0])*hT[2]+(30.0*fT[2]-30.0*f[2]-25.98076211353316*fT[0]-25.98076211353316*f[0])*h[2]+(31.17691453623978*h[0]-31.17691453623978*hT[0])*fT[2]+(31.17691453623978*hT[0]-31.17691453623978*h[0])*f[2]+(27.0*fT[1]+27.0*f[1])*hT[1]+((-27.0*fT[1])-27.0*f[1])*h[1]+(27.0*fT[0]+27.0*f[0])*hT[0]+((-27.0*fT[0])-27.0*f[0])*h[0])*gkyl_ipow(dv[1],-2)*dt;
    fOut[3] += -0.0625*((17.32050807568877*fT[2]-17.32050807568877*f[2]-15.0*fT[0]-15.0*f[0])*hT[3]+(17.32050807568877*fT[2]-17.32050807568877*f[2]-15.0*fT[0]-15.0*f[0])*h[3]+(17.32050807568877*hT[2]+17.32050807568877*h[2]-18.0*hT[0]+18.0*h[0])*fT[3]+((-17.32050807568877*hT[2])-17.32050807568877*h[2]+18.0*hT[0]-18.0*h[0])*f[3]+((-15.0*fT[1])-15.0*f[1])*hT[2]+((-15.0*fT[1])-15.0*f[1])*h[2]+(18.0*h[1]-18.0*hT[1])*fT[2]+(18.0*hT[1]-18.0*h[1])*f[2]+(15.58845726811989*fT[0]+15.58845726811989*f[0])*hT[1]+((-15.58845726811989*fT[0])-15.58845726811989*f[0])*h[1]+(15.58845726811989*hT[0]-15.58845726811989*h[0])*fT[1]+(15.58845726811989*hT[0]-15.58845726811989*h[0])*f[1])*gkyl_ipow(dv[1],-2)*dt;
  } else if (isTopEdge) {
    fOut[0] += -0.0625*((10.0*fB[3]-10.0*f[3]+8.660254037844386*fB[1]+8.660254037844386*f[1])*hB[3]+(10.0*fB[3]-10.0*f[3]+8.660254037844386*fB[1]+8.660254037844386*f[1])*h[3]+(10.39230484541326*hB[1]-10.39230484541326*h[1])*fB[3]+(10.39230484541326*h[1]-10.39230484541326*hB[1])*f[3]+(10.0*fB[2]-10.0*f[2]+8.660254037844386*fB[0]+8.660254037844386*f[0])*hB[2]+(10.0*fB[2]-10.0*f[2]+8.660254037844386*fB[0]+8.660254037844386*f[0])*h[2]+(10.39230484541326*hB[0]-10.39230484541326*h[0])*fB[2]+(10.39230484541326*h[0]-10.39230484541326*hB[0])*f[2]+(9.0*fB[1]+9.0*f[1])*hB[1]+((-9.0*fB[1])-9.0*f[1])*h[1]+(9.0*fB[0]+9.0*f[0])*hB[0]+((-9.0*fB[0])-9.0*f[0])*h[0])*gkyl_ipow(dv[1],-2)*dt;
    fOut[1] += -0.03608439182435162*((17.32050807568877*fB[2]-17.32050807568877*f[2]+15.0*fB[0]+15.0*f[0])*hB[3]+(17.32050807568877*fB[2]-17.32050807568877*f[2]+15.0*fB[0]+15.0*f[0])*h[3]+(17.32050807568877*hB[2]+17.32050807568877*h[2]+18.0*hB[0]-18.0*h[0])*fB[3]+((-17.32050807568877*hB[2])-17.32050807568877*h[2]-18.0*hB[0]+18.0*h[0])*f[3]+(15.0*fB[1]+15.0*f[1])*hB[2]+(15.0*fB[1]+15.0*f[1])*h[2]+(18.0*hB[1]-18.0*h[1])*fB[2]+(18.0*h[1]-18.0*hB[1])*f[2]+(15.58845726811989*fB[0]+15.58845726811989*f[0])*hB[1]+((-15.58845726811989*fB[0])-15.58845726811989*f[0])*h[1]+(15.58845726811989*hB[0]-15.58845726811989*h[0])*fB[1]+(15.58845726811989*hB[0]-15.58845726811989*h[0])*f[1])*gkyl_ipow(dv[1],-2)*dt;
    fOut[2] += 0.03608439182435162*((30.0*fB[3]-30.0*f[3]+25.98076211353316*fB[1]+25.98076211353316*f[1])*hB[3]+(30.0*fB[3]-30.0*f[3]+25.98076211353316*fB[1]+25.98076211353316*f[1])*h[3]+(31.17691453623978*hB[1]-31.17691453623978*h[1])*fB[3]+(31.17691453623978*h[1]-31.17691453623978*hB[1])*f[3]+(30.0*fB[2]-30.0*f[2]+25.98076211353316*fB[0]+25.98076211353316*f[0])*hB[2]+(30.0*fB[2]-30.0*f[2]+25.98076211353316*fB[0]+25.98076211353316*f[0])*h[2]+(31.17691453623978*hB[0]-31.17691453623978*h[0])*fB[2]+(31.17691453623978*h[0]-31.17691453623978*hB[0])*f[2]+(27.0*fB[1]+27.0*f[1])*hB[1]+((-27.0*fB[1])-27.0*f[1])*h[1]+(27.0*fB[0]+27.0*f[0])*hB[0]+((-27.0*fB[0])-27.0*f[0])*h[0])*gkyl_ipow(dv[1],-2)*dt;
    fOut[3] += 0.0625*((17.32050807568877*fB[2]-17.32050807568877*f[2]+15.0*fB[0]+15.0*f[0])*hB[3]+(17.32050807568877*fB[2]-17.32050807568877*f[2]+15.0*fB[0]+15.0*f[0])*h[3]+(17.32050807568877*hB[2]+17.32050807568877*h[2]+18.0*hB[0]-18.0*h[0])*fB[3]+((-17.32050807568877*hB[2])-17.32050807568877*h[2]-18.0*hB[0]+18.0*h[0])*f[3]+(15.0*fB[1]+15.0*f[1])*hB[2]+(15.0*fB[1]+15.0*f[1])*h[2]+(18.0*hB[1]-18.0*h[1])*fB[2]+(18.0*h[1]-18.0*hB[1])*f[2]+(15.58845726811989*fB[0]+15.58845726811989*f[0])*hB[1]+((-15.58845726811989*fB[0])-15.58845726811989*f[0])*h[1]+(15.58845726811989*hB[0]-15.58845726811989*h[0])*fB[1]+(15.58845726811989*hB[0]-15.58845726811989*h[0])*f[1])*gkyl_ipow(dv[1],-2)*dt;
  } else {
    fOut[0] += -0.0625*((10.0*fT[3]-10.0*f[3]-8.660254037844386*fT[1]-8.660254037844386*f[1])*hT[3]+(10.0*fB[3]-10.0*f[3]+8.660254037844386*fB[1]+8.660254037844386*f[1])*hB[3]+(10.0*fT[3]+10.0*fB[3]-20.0*f[3]-8.660254037844386*fT[1]+8.660254037844386*fB[1])*h[3]+(10.39230484541326*h[1]-10.39230484541326*hT[1])*fT[3]+(10.39230484541326*hB[1]-10.39230484541326*h[1])*fB[3]+(10.39230484541326*hT[1]-10.39230484541326*hB[1])*f[3]+(10.0*fT[2]-10.0*f[2]-8.660254037844386*fT[0]-8.660254037844386*f[0])*hT[2]+(10.0*fB[2]-10.0*f[2]+8.660254037844386*fB[0]+8.660254037844386*f[0])*hB[2]+(10.0*fT[2]+10.0*fB[2]-20.0*f[2]-8.660254037844386*fT[0]+8.660254037844386*fB[0])*h[2]+(10.39230484541326*h[0]-10.39230484541326*hT[0])*fT[2]+(10.39230484541326*hB[0]-10.39230484541326*h[0])*fB[2]+(10.39230484541326*hT[0]-10.39230484541326*hB[0])*f[2]+(9.0*fT[1]+9.0*f[1])*hT[1]+(9.0*fB[1]+9.0*f[1])*hB[1]+((-9.0*fT[1])-9.0*fB[1]-18.0*f[1])*h[1]+(9.0*fT[0]+9.0*f[0])*hT[0]+(9.0*fB[0]+9.0*f[0])*hB[0]+((-9.0*fT[0])-9.0*fB[0]-18.0*f[0])*h[0])*gkyl_ipow(dv[1],-2)*dt;
    fOut[1] += -0.0625*((10.0*fT[2]-10.0*f[2]-8.660254037844386*fT[0]-8.660254037844386*f[0])*hT[3]+(10.0*fB[2]-10.0*f[2]+8.660254037844386*fB[0]+8.660254037844386*f[0])*hB[3]+(10.0*fT[2]+10.0*fB[2]-20.0*f[2]-8.660254037844386*fT[0]+8.660254037844386*fB[0])*h[3]+(10.0*hT[2]+10.0*h[2]-10.39230484541326*hT[0]+10.39230484541326*h[0])*fT[3]+(10.0*hB[2]+10.0*h[2]+10.39230484541326*hB[0]-10.39230484541326*h[0])*fB[3]+((-10.0*hT[2])-10.0*hB[2]-20.0*h[2]+10.39230484541326*hT[0]-10.39230484541326*hB[0])*f[3]+((-8.660254037844386*fT[1])-8.660254037844386*f[1])*hT[2]+(8.660254037844386*fB[1]+8.660254037844386*f[1])*hB[2]+(8.660254037844386*fB[1]-8.660254037844386*fT[1])*h[2]+(10.39230484541326*h[1]-10.39230484541326*hT[1])*fT[2]+(10.39230484541326*hB[1]-10.39230484541326*h[1])*fB[2]+(10.39230484541326*hT[1]-10.39230484541326*hB[1])*f[2]+(9.0*fT[0]+9.0*f[0])*hT[1]+(9.0*fB[0]+9.0*f[0])*hB[1]+((-9.0*fT[0])-9.0*fB[0]-18.0*f[0])*h[1]+(9.0*hT[0]-9.0*h[0])*fT[1]+(9.0*hB[0]-9.0*h[0])*fB[1]+(9.0*hT[0]+9.0*hB[0]-18.0*h[0])*f[1])*gkyl_ipow(dv[1],-2)*dt;
    fOut[2] += -0.0625*((17.32050807568877*fT[3]-17.32050807568877*f[3]-15.0*fT[1]-15.0*f[1])*hT[3]+((-17.32050807568877*fB[3])+17.32050807568877*f[3]-15.0*fB[1]-15.0*f[1])*hB[3]+(17.32050807568877*fT[3]-17.32050807568877*fB[3]-15.0*fT[1]-15.0*fB[1]-30.0*f[1])*h[3]+(18.0*h[1]-18.0*hT[1])*fT[3]+(18.0*h[1]-18.0*hB[1])*fB[3]+(18.0*hT[1]+18.0*hB[1]-36.0*h[1])*f[3]+(17.32050807568877*fT[2]-17.32050807568877*f[2]-15.0*fT[0]-15.0*f[0])*hT[2]+((-17.32050807568877*fB[2])+17.32050807568877*f[2]-15.0*fB[0]-15.0*f[0])*hB[2]+(17.32050807568877*fT[2]-17.32050807568877*fB[2]-15.0*fT[0]-15.0*fB[0]-30.0*f[0])*h[2]+(18.0*h[0]-18.0*hT[0])*fT[2]+(18.0*h[0]-18.0*hB[0])*fB[2]+(18.0*hT[0]+18.0*hB[0]-36.0*h[0])*f[2]+(15.58845726811989*fT[1]+15.58845726811989*f[1])*hT[1]+((-15.58845726811989*fB[1])-15.58845726811989*f[1])*hB[1]+(15.58845726811989*fB[1]-15.58845726811989*fT[1])*h[1]+(15.58845726811989*fT[0]+15.58845726811989*f[0])*hT[0]+((-15.58845726811989*fB[0])-15.58845726811989*f[0])*hB[0]+(15.58845726811989*fB[0]-15.58845726811989*fT[0])*h[0])*gkyl_ipow(dv[1],-2)*dt;
    fOut[3] += -0.0625*((17.32050807568877*fT[2]-17.32050807568877*f[2]-15.0*fT[0]-15.0*f[0])*hT[3]+((-17.32050807568877*fB[2])+17.32050807568877*f[2]-15.0*fB[0]-15.0*f[0])*hB[3]+(17.32050807568877*fT[2]-17.32050807568877*fB[2]-15.0*fT[0]-15.0*fB[0]-30.0*f[0])*h[3]+(17.32050807568877*hT[2]+17.32050807568877*h[2]-18.0*hT[0]+18.0*h[0])*fT[3]+((-17.32050807568877*hB[2])-17.32050807568877*h[2]-18.0*hB[0]+18.0*h[0])*fB[3]+((-17.32050807568877*hT[2])+17.32050807568877*hB[2]+18.0*hT[0]+18.0*hB[0]-36.0*h[0])*f[3]+((-15.0*fT[1])-15.0*f[1])*hT[2]+((-15.0*fB[1])-15.0*f[1])*hB[2]+((-15.0*fT[1])-15.0*fB[1]-30.0*f[1])*h[2]+(18.0*h[1]-18.0*hT[1])*fT[2]+(18.0*h[1]-18.0*hB[1])*fB[2]+(18.0*hT[1]+18.0*hB[1]-36.0*h[1])*f[2]+(15.58845726811989*fT[0]+15.58845726811989*f[0])*hT[1]+((-15.58845726811989*fB[0])-15.58845726811989*f[0])*hB[1]+(15.58845726811989*fB[0]-15.58845726811989*fT[0])*h[1]+(15.58845726811989*hT[0]-15.58845726811989*h[0])*fT[1]+(15.58845726811989*h[0]-15.58845726811989*hB[0])*fB[1]+(15.58845726811989*hT[0]-15.58845726811989*hB[0])*f[1])*gkyl_ipow(dv[1],-2)*dt;
  }

  fOut[0] += 0.0;
  fOut[1] += 0.0;
  fOut[2] += -0.2886751345948129*((6.0*f[3]+3.464101615137754*f[1])*hT[3]+(3.464101615137754*f[1]-6.0*f[3])*hB[3]-6.928203230275509*f[1]*h[3]+((-5.196152422706631*hT[1])-5.196152422706631*hB[1]+10.39230484541326*h[1])*f[3]+(6.0*f[2]+3.464101615137754*f[0])*hT[2]+(3.464101615137754*f[0]-6.0*f[2])*hB[2]-6.928203230275509*f[0]*h[2]+((-5.196152422706631*hT[0])-5.196152422706631*hB[0]+10.39230484541326*h[0])*f[2]-3.0*f[1]*hT[1]+3.0*f[1]*hB[1]-3.0*f[0]*hT[0]+3.0*f[0]*hB[0])*gkyl_ipow(dv[1],-2)*dt;
  fOut[3] += -0.5*((3.464101615137754*f[2]+2.0*f[0])*hT[3]+(2.0*f[0]-3.464101615137754*f[2])*hB[3]-4.0*f[0]*h[3]+(3.464101615137754*hT[2]-3.464101615137754*hB[2]-3.0*hT[0]-3.0*hB[0]+6.0*h[0])*f[3]+2.0*f[1]*hT[2]+2.0*f[1]*hB[2]-4.0*f[1]*h[2]+((-3.0*hT[1])-3.0*hB[1]+6.0*h[1])*f[2]-1.732050807568877*f[0]*hT[1]+1.732050807568877*f[0]*hB[1]+(1.732050807568877*hB[0]-1.732050807568877*hT[0])*f[1])*gkyl_ipow(dv[1],-2)*dt;
}