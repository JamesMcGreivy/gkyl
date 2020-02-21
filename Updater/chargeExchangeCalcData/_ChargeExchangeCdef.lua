-- Gkyl ------------------------------------------------------------------------
--
-- Lua wrapper for various C functions used in calculating charge exchange vRel and reaction rate.
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local ffi  = require "ffi"

ffi.cdef [[

void vrelCXcellAvSer1x1v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x1v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer1x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x2v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer1x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer2x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer2x2v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer2x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer2x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer3x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer3x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 


void vrelCXcellAvSer1x1v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x1v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer1x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x2v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer1x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer2x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer2x2v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer2x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer2x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer3x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer3x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 


void vrelCXcellAvSer1x1v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x1v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer1x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x2v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer1x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer1x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer2x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer2x2v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer2x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer2x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvSer3x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvSer3x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 


void vrelCXcellAvMax1x1v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x1v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax1x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x2v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax1x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax2x2v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax2x2v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax2x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax2x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax3x3v_P1(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax3x3v_P1(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 


void vrelCXcellAvMax1x1v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x1v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax1x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x2v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax1x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax2x2v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax2x2v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax2x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax2x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax3x3v_P2(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax3x3v_P2(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 


void vrelCXcellAvMax1x1v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x1v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax1x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x2v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax1x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax1x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax2x2v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax2x2v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax2x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax2x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 

void vrelCXcellAvMax3x3v_P3(const double *w, const double *u, const double *vtSq, double *vrelCX); 

void lnVCXcellAvMax3x3v_P3(const double *uIon, const double uNeut*, const double *vtSqIon, const double *vtSqNeut, double *lnVCX); 


]]
