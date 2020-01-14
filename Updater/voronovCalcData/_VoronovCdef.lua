-- Gkyl ------------------------------------------------------------------------
--
-- Lua wrapper for various C functions used in calculating Voronov reaction rate.
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local ffi  = require "ffi"

ffi.cdef [[

void VoronovReactRateCellAv1xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv2xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv3xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 


void VoronovReactRateCellAv1xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv2xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv3xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 


void VoronovReactRateCellAv1xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv2xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv3xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 


void VoronovReactRateCellAv1xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv2xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv3xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 


void VoronovReactRateCellAv1xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv2xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv3xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 


void VoronovReactRateCellAv1xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv2xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 

void VoronovReactRateCellAv3xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtSq, double *nuIz, const double E, const double A, const double K, const double P, const double X); 


]]
