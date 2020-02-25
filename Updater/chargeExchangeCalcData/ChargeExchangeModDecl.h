#ifndef CHARGEEXCHANGE_MOD_DELC_H 
#define CHARGEEXCHANGE_MOD_DELC_H 
#include <cmath> 

#include <algorithm> 

extern "C" { 
void vrelCXcellAvSer1x1v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x1v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer1x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer1x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer2x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer2x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer2x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer2x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer3x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer3x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void vrelCXcellAvSer1x1v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x1v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer1x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer1x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer2x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer2x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer2x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer2x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer3x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer3x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void vrelCXcellAvSer1x1v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x1v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer1x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer1x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer1x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer2x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer2x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer2x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer2x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvSer3x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvSer3x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void vrelCXcellAvMax1x1v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x1v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax1x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax1x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax2x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax2x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax2x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax2x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax3x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax3x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void vrelCXcellAvMax1x1v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x1v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax1x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax1x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax2x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax2x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax2x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax2x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax3x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax3x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void vrelCXcellAvMax1x1v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x1v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax1x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax1x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax1x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax2x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax2x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax2x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax2x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void vrelCXcellAvMax3x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void sigmaCXcellAvMax3x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 



 
} 
#endif 
