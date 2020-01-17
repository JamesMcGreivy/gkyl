#ifndef VORONOV_MOD_DELC_H 
#define VORONOV_MOD_DELC_H 
#include <cmath> 

#include <algorithm> 

extern "C" { 
void VoronovReactRateCellAv1xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv2xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv3xSer_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRateCellAv1xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv2xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv3xSer_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRateCellAv1xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv2xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv3xSer_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRateCellAv1xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv2xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv3xMax_P1(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRateCellAv1xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv2xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv3xMax_P2(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 


void VoronovReactRateCellAv1xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv2xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 

void VoronovReactRateCellAv3xMax_P3(const double elemCharge, const double m_, const double *m0, const double *vtS, const double E, const double A, const double K, const double P, const double X, double *nuIz); 



 
} 
#endif 
