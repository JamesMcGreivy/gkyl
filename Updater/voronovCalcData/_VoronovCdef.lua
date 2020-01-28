-- Gkyl ------------------------------------------------------------------------
--
-- Lua wrapper for various C functions used in calculating Voronov reaction rate.
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local ffi  = require "ffi"

ffi.cdef [[

void VoronovReactRate1xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate2xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate3xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRate1xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate2xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate3xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRate1xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate2xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate3xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRate1xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate2xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate3xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRate1xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate2xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate3xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRate1xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate2xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRate3xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

]]
