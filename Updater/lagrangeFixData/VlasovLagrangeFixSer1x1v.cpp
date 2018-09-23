#include <math.h> 
#include <VlasovLagrangeFixDecl.h> 

void VlasovLagrangeFixSer1x1v1p(double *dm0, double *dm1, double *dm2, double *L, double *Nv, double *vc, double *f) {
  f[0] = f[0] +  -1.0*((84.85281374238573*dm0[0]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[0])*gkyl_ipow(Nv[0],4)*gkyl_ipow(vc[0],2)+vc[0]*(67.8822509939086*dm1[0]*gkyl_ipow(L[0],2)-67.8822509939086*dm1[0]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4))+(84.85281374238573*dm2[0]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[0]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],4)+(7.071067811865476*dm0[0]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[0]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],2)+5.656854249492382*dm0[0]*gkyl_ipow(L[0],4))*gkyl_ipow(4.0*gkyl_ipow(L[0],5)*gkyl_ipow(Nv[0],4)-4.0*gkyl_ipow(L[0],5),-1);
  f[1] = f[1] +  -1.0*((84.85281374238573*dm0[1]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[1])*gkyl_ipow(Nv[0],4)*gkyl_ipow(vc[0],2)+vc[0]*(67.8822509939086*dm1[1]*gkyl_ipow(L[0],2)-67.8822509939086*dm1[1]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4))+(84.85281374238573*dm2[1]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[1]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],4)+(7.071067811865476*dm0[1]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[1]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],2)+5.656854249492382*dm0[1]*gkyl_ipow(L[0],4))*gkyl_ipow(4.0*gkyl_ipow(L[0],5)*gkyl_ipow(Nv[0],4)-4.0*gkyl_ipow(L[0],5),-1);
  f[2] = f[2] +  -1.0*(vc[0]*(30.0*dm0[0]*gkyl_ipow(L[0],2)-360.0*dm2[0])*gkyl_ipow(Nv[0],4)-12.0*dm1[0]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4)+12.0*dm1[0]*gkyl_ipow(L[0],2))*gkyl_ipow(2.449489742783178*gkyl_ipow(L[0],4)*gkyl_ipow(Nv[0],5)-2.449489742783178*Nv[0]*gkyl_ipow(L[0],4),-1);
  f[3] = f[3] +  -1.0*(vc[0]*(30.0*dm0[1]*gkyl_ipow(L[0],2)-360.0*dm2[1])*gkyl_ipow(Nv[0],4)-12.0*dm1[1]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4)+12.0*dm1[1]*gkyl_ipow(L[0],2))*gkyl_ipow(2.449489742783178*gkyl_ipow(L[0],4)*gkyl_ipow(Nv[0],5)-2.449489742783178*Nv[0]*gkyl_ipow(L[0],4),-1);
}

void VlasovLagrangeFixSer1x1v2p(double *dm0, double *dm1, double *dm2, double *L, double *Nv, double *vc, double *f) {
  f[0] = f[0] +  -0.25*gkyl_ipow(L[0],-5)*gkyl_ipow(Nv[0],-2)*((84.85281374238573*dm0[0]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[0])*gkyl_ipow(Nv[0],2)*gkyl_ipow(vc[0],2)+(84.85281374238573*dm2[0]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[0]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],2)-67.8822509939086*dm1[0]*vc[0]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],2)+7.071067811865476*dm0[0]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[0]*gkyl_ipow(L[0],2));
  f[1] = f[1] +  -0.25*gkyl_ipow(L[0],-5)*gkyl_ipow(Nv[0],-2)*((84.85281374238573*dm0[1]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[1])*gkyl_ipow(Nv[0],2)*gkyl_ipow(vc[0],2)+(84.85281374238573*dm2[1]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[1]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],2)-67.8822509939086*vc[0]*dm1[1]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],2)+7.071067811865476*dm0[1]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[1]*gkyl_ipow(L[0],2));
  f[2] = f[2] +  -0.408248290463863*gkyl_ipow(L[0],-4)*(vc[0]*(30.0*dm0[0]*gkyl_ipow(L[0],2)-360.0*dm2[0])-12.0*dm1[0]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],-1);
  f[3] = f[3] +  -0.408248290463863*gkyl_ipow(L[0],-4)*(vc[0]*(30.0*dm0[1]*gkyl_ipow(L[0],2)-360.0*dm2[1])-12.0*dm1[1]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],-1);
  f[4] = f[4] +  -1.0*((84.85281374238573*dm0[2]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[2])*gkyl_ipow(Nv[0],4)*gkyl_ipow(vc[0],2)+vc[0]*(67.8822509939086*dm1[2]*gkyl_ipow(L[0],2)-67.8822509939086*dm1[2]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4))+(84.85281374238573*dm2[2]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[2]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],4)+(7.071067811865476*dm0[2]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[2]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],2)+5.656854249492382*dm0[2]*gkyl_ipow(L[0],4))*gkyl_ipow(4.0*gkyl_ipow(L[0],5)*gkyl_ipow(Nv[0],4)-4.0*gkyl_ipow(L[0],5),-1);
  f[5] = f[5] +  -0.3162277660168379*gkyl_ipow(L[0],-3)*(5.0*dm0[0]*gkyl_ipow(L[0],2)-60.0*dm2[0])*gkyl_ipow(Nv[0],-2);
  f[6] = f[6] +  -1.0*(vc[0]*(86.60254037844389*dm0[2]*gkyl_ipow(L[0],2)-1039.230484541327*dm2[2])*gkyl_ipow(Nv[0],4)-34.64101615137755*dm1[2]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4)+34.64101615137755*dm1[2]*gkyl_ipow(L[0],2))*gkyl_ipow(7.071067811865476*gkyl_ipow(L[0],4)*gkyl_ipow(Nv[0],5)-7.071067811865476*Nv[0]*gkyl_ipow(L[0],4),-1);
  f[7] = f[7] +  -0.408248290463863*gkyl_ipow(L[0],-3)*(3.872983346207417*dm0[1]*gkyl_ipow(L[0],2)-46.47580015448901*dm2[1])*gkyl_ipow(Nv[0],-2);
}

void VlasovLagrangeFixSer1x1v3p(double *dm0, double *dm1, double *dm2, double *L, double *Nv, double *vc, double *f) {
  f[0] = f[0] +  -0.25*gkyl_ipow(L[0],-5)*gkyl_ipow(Nv[0],-2)*((84.85281374238573*dm0[0]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[0])*gkyl_ipow(Nv[0],2)*gkyl_ipow(vc[0],2)+(84.85281374238573*dm2[0]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[0]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],2)-67.8822509939086*dm1[0]*vc[0]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],2)+7.071067811865476*dm0[0]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[0]*gkyl_ipow(L[0],2));
  f[1] = f[1] +  -0.25*gkyl_ipow(L[0],-5)*gkyl_ipow(Nv[0],-2)*((84.85281374238573*dm0[1]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[1])*gkyl_ipow(Nv[0],2)*gkyl_ipow(vc[0],2)+(84.85281374238573*dm2[1]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[1]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],2)-67.8822509939086*vc[0]*dm1[1]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],2)+7.071067811865476*dm0[1]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[1]*gkyl_ipow(L[0],2));
  f[2] = f[2] +  -0.408248290463863*gkyl_ipow(L[0],-4)*(vc[0]*(30.0*dm0[0]*gkyl_ipow(L[0],2)-360.0*dm2[0])-12.0*dm1[0]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],-1);
  f[3] = f[3] +  -0.408248290463863*gkyl_ipow(L[0],-4)*(vc[0]*(30.0*dm0[1]*gkyl_ipow(L[0],2)-360.0*dm2[1])-12.0*dm1[1]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],-1);
  f[4] = f[4] +  -1.0*((84.85281374238573*dm0[2]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[2])*gkyl_ipow(Nv[0],4)*gkyl_ipow(vc[0],2)+vc[0]*(67.8822509939086*dm1[2]*gkyl_ipow(L[0],2)-67.8822509939086*dm1[2]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4))+(84.85281374238573*dm2[2]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[2]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],4)+(7.071067811865476*dm0[2]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[2]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],2)+5.656854249492382*dm0[2]*gkyl_ipow(L[0],4))*gkyl_ipow(4.0*gkyl_ipow(L[0],5)*gkyl_ipow(Nv[0],4)-4.0*gkyl_ipow(L[0],5),-1);
  f[5] = f[5] +  -0.3162277660168379*gkyl_ipow(L[0],-3)*(5.0*dm0[0]*gkyl_ipow(L[0],2)-60.0*dm2[0])*gkyl_ipow(Nv[0],-2);
  f[6] = f[6] +  -1.0*(vc[0]*(86.60254037844389*dm0[2]*gkyl_ipow(L[0],2)-1039.230484541327*dm2[2])*gkyl_ipow(Nv[0],4)-34.64101615137755*dm1[2]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4)+34.64101615137755*dm1[2]*gkyl_ipow(L[0],2))*gkyl_ipow(7.071067811865476*gkyl_ipow(L[0],4)*gkyl_ipow(Nv[0],5)-7.071067811865476*Nv[0]*gkyl_ipow(L[0],4),-1);
  f[7] = f[7] +  -0.408248290463863*gkyl_ipow(L[0],-3)*(3.872983346207417*dm0[1]*gkyl_ipow(L[0],2)-46.47580015448901*dm2[1])*gkyl_ipow(Nv[0],-2);
  f[8] = f[8] +  -1.0*((84.85281374238573*dm0[3]*gkyl_ipow(L[0],2)-1018.233764908629*dm2[3])*gkyl_ipow(Nv[0],4)*gkyl_ipow(vc[0],2)+vc[0]*(67.8822509939086*dm1[3]*gkyl_ipow(L[0],2)-67.8822509939086*dm1[3]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4))+(84.85281374238573*dm2[3]*gkyl_ipow(L[0],2)-12.72792206135786*dm0[3]*gkyl_ipow(L[0],4))*gkyl_ipow(Nv[0],4)+(7.071067811865476*dm0[3]*gkyl_ipow(L[0],4)-84.85281374238573*dm2[3]*gkyl_ipow(L[0],2))*gkyl_ipow(Nv[0],2)+5.656854249492382*dm0[3]*gkyl_ipow(L[0],4))*gkyl_ipow(4.0*gkyl_ipow(L[0],5)*gkyl_ipow(Nv[0],4)-4.0*gkyl_ipow(L[0],5),-1);
  f[9] = f[9] +  0.0;
  f[10] = f[10] +  -1.0*(vc[0]*(121.2435565298214*dm0[3]*gkyl_ipow(L[0],2)-1454.922678357857*dm2[3])*gkyl_ipow(Nv[0],4)-48.49742261192856*dm1[3]*gkyl_ipow(L[0],2)*gkyl_ipow(Nv[0],4)+48.49742261192856*dm1[3]*gkyl_ipow(L[0],2))*gkyl_ipow(9.899494936611665*gkyl_ipow(L[0],4)*gkyl_ipow(Nv[0],5)-9.899494936611665*Nv[0]*gkyl_ipow(L[0],4),-1);
  f[11] = f[11] +  0.0;
}
