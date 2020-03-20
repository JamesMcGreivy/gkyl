#ifndef CHARGEEXCHANGE_MOD_DELC_H 
#define CHARGEEXCHANGE_MOD_DELC_H 
#include <cmath> 

#include <algorithm> 

extern "C" { 
void prodCXcellAvSer1x1v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x1v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer1x2v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer1x3v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer2x2v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer2x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer2x3v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer2x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer3x3v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer3x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void prodCXcellAvSer1x1v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x1v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer1x2v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer1x3v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer2x2v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer2x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer2x3v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer2x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer3x3v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer3x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void prodCXcellAvSer1x1v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x1v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer1x2v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer1x3v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer1x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer2x2v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer2x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer2x3v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer2x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvSer3x3v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvSer3x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void prodCXcellAvMax1x1v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x1v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax1x2v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax1x3v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax2x2v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax2x2v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax2x3v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax2x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax3x3v_P1(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax3x3v_P1(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void prodCXcellAvMax1x1v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x1v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax1x2v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax1x3v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax2x2v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax2x2v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax2x3v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax2x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax3x3v_P2(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax3x3v_P2(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 


void prodCXcellAvMax1x1v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x1v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax1x2v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax1x3v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax1x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax2x2v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax2x2v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax2x3v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax2x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 

void prodCXcellAvMax3x3v_P3(const double *w, const double *m0, const double *u, const double *vtSq, const double *fOther, double *prodCX); 

void sigmaCXcellAvMax3x3v_P3(const double a, const double b, const double *uIon, const double *uNeut, const double *vtSqIon, const double *vtSqNeut, double *sigCX); 



 
} 
#endif 
