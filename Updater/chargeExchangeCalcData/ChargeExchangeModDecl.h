#ifndef SIGMACX_MOD_DELC_H 
#define SIGMACX_MOD_DELC_H 
#include <cmath> 

#include <algorithm> 

extern "C" { 
void GkSigmaCXcellAvSer1x1v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void GkSigmaCXcellAvSer1x2v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x1v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer2x2v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer2x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer2x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer3x2v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer3x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer1x1v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void GkSigmaCXcellAvSer1x2v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x1v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer2x2v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer2x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer2x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer3x2v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer3x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer1x1v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void GkSigmaCXcellAvSer1x2v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x1v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer1x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer2x2v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer2x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer2x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvSer3x2v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvSer3x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax1x1v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void GkSigmaCXcellAvMax1x2v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x1v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax2x2v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax2x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax2x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax3x2v_P1(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax3x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax1x1v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void GkSigmaCXcellAvMax1x2v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x1v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax2x2v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax2x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax2x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax3x2v_P2(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax3x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax1x1v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void GkSigmaCXcellAvMax1x2v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x1v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax1x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax2x2v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax2x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax2x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 


void GkSigmaCXcellAvMax3x2v_P3(const double a, const double b, const double *uParIon, const double *uParNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 

void VmSigmaCXcellAvMax3x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *vSigmaCX); 



 
} 
#endif 