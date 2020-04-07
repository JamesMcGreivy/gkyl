#include <math.h> 
#include <CartFieldBinOpModDecl.h> 
 
using namespace Eigen; 
 
void CartFieldBinOpMultiply1x3vMax_P3(binOpData_t* data, const double *A, const double *B, const short int Ncomp, const short int eqNcomp, double *out) 
{ 
  // A:       scalar/vector field. 
  // B:       scalar/vector field (must be vector if A is vector). 
  // Ncomp:   number of components of B (could be 1D, 2D, 3D, vector). 
  // eqNcomp: =1 if A:numComponents=B:numComponents, =0 else. 
  // out:     output field A*B (same number of components as B). 
 
  double tmp[35]; 
  tmp[0] = 0.25*(A[34]*B[34]+A[33]*B[33]+A[32]*B[32]+A[31]*B[31]+A[30]*B[30]+A[29]*B[29]+A[28]*B[28]+A[27]*B[27]+A[26]*B[26]+A[25]*B[25]+A[24]*B[24]+A[23]*B[23]+A[22]*B[22]+A[21]*B[21]+A[20]*B[20]+A[19]*B[19]+A[18]*B[18]+A[17]*B[17]+A[16]*B[16]+A[15]*B[15]+A[14]*B[14]+A[13]*B[13]+A[12]*B[12]+A[11]*B[11]+A[10]*B[10]+A[9]*B[9]+A[8]*B[8]+A[7]*B[7]+A[6]*B[6]+A[5]*B[5]+A[4]*B[4]+A[3]*B[3]+A[2]*B[2]+A[1]*B[1]+A[0]*B[0]); 
  tmp[1] = 0.002380952380952381*(92.22255689363637*(A[11]*B[31]+B[11]*A[31])+105.0*(A[14]*B[28]+B[14]*A[28])+93.91485505499116*(A[8]*B[25]+B[8]*A[25])+105.0*(A[13]*B[23]+B[13]*A[23])+93.91485505499116*(A[6]*B[21]+B[6]*A[21])+105.0*(A[12]*B[20]+B[12]*A[20])+93.91485505499116*(A[5]*B[19]+B[5]*A[19])+105.0*(A[10]*B[17]+B[10]*A[17]+A[9]*B[16]+B[9]*A[16]+A[7]*B[15]+B[7]*A[15])+93.91485505499116*(A[1]*B[11]+B[1]*A[11])+105.0*(A[4]*B[8]+B[4]*A[8]+A[3]*B[6]+B[3]*A[6]+A[2]*B[5]+B[2]*A[5]+A[0]*B[1]+B[0]*A[1])); 
  tmp[2] = 0.002380952380952381*(92.22255689363637*(A[12]*B[32]+B[12]*A[32])+105.0*(A[14]*B[29]+B[14]*A[29])+93.91485505499116*(A[9]*B[26]+B[9]*A[26])+105.0*(A[13]*B[24]+B[13]*A[24])+93.91485505499116*(A[7]*B[22]+B[7]*A[22]+A[5]*B[20]+B[5]*A[20])+105.0*(A[11]*B[19]+B[11]*A[19])+105.0*(A[10]*B[18]+B[10]*A[18]+A[8]*B[16]+B[8]*A[16]+A[6]*B[15]+B[6]*A[15])+93.91485505499116*(A[2]*B[12]+B[2]*A[12])+105.0*(A[4]*B[9]+B[4]*A[9]+A[3]*B[7]+B[3]*A[7]+A[1]*B[5]+B[1]*A[5]+A[0]*B[2]+B[0]*A[2])); 
  tmp[3] = 0.002380952380952381*(92.22255689363637*(A[13]*B[33]+B[13]*A[33])+105.0*(A[14]*B[30]+B[14]*A[30])+93.91485505499116*(A[10]*B[27]+B[10]*A[27]+A[7]*B[24]+B[7]*A[24]+A[6]*B[23]+B[6]*A[23])+105.0*(A[12]*B[22]+B[12]*A[22]+A[11]*B[21]+B[11]*A[21])+105.0*(A[9]*B[18]+B[9]*A[18]+A[8]*B[17]+B[8]*A[17]+A[5]*B[15]+B[5]*A[15])+93.91485505499116*(A[3]*B[13]+B[3]*A[13])+105.0*(A[4]*B[10]+B[4]*A[10]+A[2]*B[7]+B[2]*A[7]+A[1]*B[6]+B[1]*A[6]+A[0]*B[3]+B[0]*A[3])); 
  tmp[4] = 0.002380952380952381*(92.22255689363637*(A[14]*B[34]+B[14]*A[34])+93.91485505499116*(A[10]*B[30]+B[10]*A[30]+A[9]*B[29]+B[9]*A[29]+A[8]*B[28]+B[8]*A[28])+105.0*(A[13]*B[27]+B[13]*A[27]+A[12]*B[26]+B[12]*A[26]+A[11]*B[25]+B[11]*A[25])+105.0*(A[7]*B[18]+B[7]*A[18]+A[6]*B[17]+B[6]*A[17]+A[5]*B[16]+B[5]*A[16])+93.91485505499116*(A[4]*B[14]+B[4]*A[14])+105.0*(A[3]*B[10]+B[3]*A[10]+A[2]*B[9]+B[2]*A[9]+A[1]*B[8]+B[1]*A[8]+A[0]*B[4]+B[0]*A[4])); 
  tmp[5] = 0.002380952380952381*(92.2225568936364*(A[20]*B[32]+B[20]*A[32]+A[19]*B[31]+B[19]*A[31])+105.0*(A[28]*B[29]+B[28]*A[29])+93.91485505499116*(A[16]*B[26]+B[16]*A[26]+A[16]*B[25]+B[16]*A[25])+105.0*(A[23]*B[24]+B[23]*A[24])+93.91485505499116*(A[15]*B[22]+B[15]*A[22]+A[15]*B[21]+B[15]*A[21])+(84.0*A[19]+93.91485505499116*A[2])*B[20]+(84.0*B[19]+93.91485505499116*B[2])*A[20]+93.91485505499116*(A[1]*B[19]+B[1]*A[19])+105.0*(A[17]*B[18]+B[17]*A[18]+A[4]*B[16]+B[4]*A[16]+A[3]*B[15]+B[3]*A[15])+93.91485505499116*(A[5]*B[12]+B[5]*A[12]+A[5]*B[11]+B[5]*A[11])+105.0*(A[8]*B[9]+B[8]*A[9]+A[6]*B[7]+B[6]*A[7]+A[0]*B[5]+B[0]*A[5]+A[1]*B[2]+B[1]*A[2])); 
  tmp[6] = 0.002380952380952381*(92.2225568936364*(A[23]*B[33]+B[23]*A[33]+A[21]*B[31]+B[21]*A[31])+105.0*(A[28]*B[30]+B[28]*A[30])+93.91485505499116*(A[17]*B[27]+B[17]*A[27]+A[17]*B[25]+B[17]*A[25]+A[15]*B[24]+B[15]*A[24])+(84.0*A[21]+93.91485505499116*A[3])*B[23]+(84.0*B[21]+93.91485505499116*B[3])*A[23]+105.0*(A[20]*B[22]+B[20]*A[22])+93.91485505499116*(A[1]*B[21]+B[1]*A[21]+A[15]*B[19]+B[15]*A[19])+105.0*(A[16]*B[18]+B[16]*A[18]+A[4]*B[17]+B[4]*A[17]+A[2]*B[15]+B[2]*A[15])+93.91485505499116*(A[6]*B[13]+B[6]*A[13]+A[6]*B[11]+B[6]*A[11])+105.0*(A[8]*B[10]+B[8]*A[10]+A[5]*B[7]+B[5]*A[7]+A[0]*B[6]+B[0]*A[6]+A[1]*B[3]+B[1]*A[3])); 
  tmp[7] = 0.002380952380952381*(92.2225568936364*(A[24]*B[33]+B[24]*A[33]+A[22]*B[32]+B[22]*A[32])+105.0*(A[29]*B[30]+B[29]*A[30])+93.91485505499116*(A[18]*B[27]+B[18]*A[27]+A[18]*B[26]+B[18]*A[26])+(84.0*A[22]+93.91485505499116*A[3])*B[24]+(84.0*B[22]+93.91485505499116*B[3])*A[24]+93.91485505499116*(A[15]*B[23]+B[15]*A[23]+A[2]*B[22]+B[2]*A[22])+105.0*(A[19]*B[21]+B[19]*A[21])+93.91485505499116*(A[15]*B[20]+B[15]*A[20])+105.0*(A[4]*B[18]+B[4]*A[18]+A[16]*B[17]+B[16]*A[17]+A[1]*B[15]+B[1]*A[15])+93.91485505499116*(A[7]*B[13]+B[7]*A[13]+A[7]*B[12]+B[7]*A[12])+105.0*(A[9]*B[10]+B[9]*A[10]+A[0]*B[7]+B[0]*A[7]+A[5]*B[6]+B[5]*A[6]+A[2]*B[3]+B[2]*A[3])); 
  tmp[8] = 0.002380952380952381*(92.2225568936364*(A[28]*B[34]+B[28]*A[34]+A[25]*B[31]+B[25]*A[31])+93.91485505499116*(A[17]*B[30]+B[17]*A[30]+A[16]*B[29]+B[16]*A[29])+(84.0*A[25]+93.91485505499116*A[4])*B[28]+(84.0*B[25]+93.91485505499116*B[4])*A[28]+105.0*(A[23]*B[27]+B[23]*A[27]+A[20]*B[26]+B[20]*A[26])+93.91485505499116*(A[1]*B[25]+B[1]*A[25]+A[17]*B[21]+B[17]*A[21]+A[16]*B[19]+B[16]*A[19])+105.0*(A[15]*B[18]+B[15]*A[18]+A[3]*B[17]+B[3]*A[17]+A[2]*B[16]+B[2]*A[16])+93.91485505499116*(A[8]*B[14]+B[8]*A[14]+A[8]*B[11]+B[8]*A[11])+105.0*(A[6]*B[10]+B[6]*A[10]+A[5]*B[9]+B[5]*A[9]+A[0]*B[8]+B[0]*A[8]+A[1]*B[4]+B[1]*A[4])); 
  tmp[9] = 0.002380952380952381*(92.2225568936364*(A[29]*B[34]+B[29]*A[34]+A[26]*B[32]+B[26]*A[32])+93.91485505499116*(A[18]*B[30]+B[18]*A[30])+(84.0*A[26]+93.91485505499116*A[4])*B[29]+(84.0*B[26]+93.91485505499116*B[4])*A[29]+93.91485505499116*(A[16]*B[28]+B[16]*A[28])+105.0*(A[24]*B[27]+B[24]*A[27])+93.91485505499116*(A[2]*B[26]+B[2]*A[26])+105.0*(A[19]*B[25]+B[19]*A[25])+93.91485505499116*(A[18]*B[22]+B[18]*A[22]+A[16]*B[20]+B[16]*A[20])+105.0*(A[3]*B[18]+B[3]*A[18]+A[15]*B[17]+B[15]*A[17]+A[1]*B[16]+B[1]*A[16])+93.91485505499116*(A[9]*B[14]+B[9]*A[14]+A[9]*B[12]+B[9]*A[12])+105.0*(A[7]*B[10]+B[7]*A[10]+A[0]*B[9]+B[0]*A[9]+A[5]*B[8]+B[5]*A[8]+A[2]*B[4]+B[2]*A[4])); 
  tmp[10] = 0.002380952380952381*(92.2225568936364*(A[30]*B[34]+B[30]*A[34]+A[27]*B[33]+B[27]*A[33])+(84.0*A[27]+93.91485505499116*A[4])*B[30]+(84.0*B[27]+93.91485505499116*B[4])*A[30]+93.91485505499116*(A[18]*B[29]+B[18]*A[29]+A[17]*B[28]+B[17]*A[28]+A[3]*B[27]+B[3]*A[27])+105.0*(A[22]*B[26]+B[22]*A[26]+A[21]*B[25]+B[21]*A[25])+93.91485505499116*(A[18]*B[24]+B[18]*A[24]+A[17]*B[23]+B[17]*A[23])+105.0*(A[2]*B[18]+B[2]*A[18]+A[1]*B[17]+B[1]*A[17]+A[15]*B[16]+B[15]*A[16])+93.91485505499116*(A[10]*B[14]+B[10]*A[14]+A[10]*B[13]+B[10]*A[13])+105.0*(A[0]*B[10]+B[0]*A[10]+A[7]*B[9]+B[7]*A[9]+A[6]*B[8]+B[6]*A[8]+A[3]*B[4]+B[3]*A[4])); 
  tmp[11] = 0.002380952380952381*((62.60990336999411*A[31]+92.22255689363637*A[1])*B[31]+92.22255689363637*B[1]*A[31]+93.91485505499116*A[28]*B[28]+(67.0820393249937*A[25]+105.0*A[4])*B[25]+105.0*B[4]*A[25]+93.91485505499116*A[23]*B[23]+(67.0820393249937*A[21]+105.0*A[3])*B[21]+105.0*B[3]*A[21]+93.91485505499116*A[20]*B[20]+(67.0820393249937*A[19]+105.0*A[2])*B[19]+105.0*B[2]*A[19]+93.91485505499116*(A[17]*B[17]+A[16]*B[16]+A[15]*B[15])+(67.0820393249937*A[11]+105.0*A[0])*B[11]+105.0*B[0]*A[11]+93.91485505499116*(A[8]*B[8]+A[6]*B[6]+A[5]*B[5]+A[1]*B[1])); 
  tmp[12] = 0.002380952380952381*((62.60990336999411*A[32]+92.22255689363637*A[2])*B[32]+92.22255689363637*B[2]*A[32]+93.91485505499116*A[29]*B[29]+(67.0820393249937*A[26]+105.0*A[4])*B[26]+105.0*B[4]*A[26]+93.91485505499116*A[24]*B[24]+(67.0820393249937*A[22]+105.0*A[3])*B[22]+105.0*B[3]*A[22]+(67.0820393249937*A[20]+105.0*A[1])*B[20]+105.0*B[1]*A[20]+93.91485505499116*(A[19]*B[19]+A[18]*B[18]+A[16]*B[16]+A[15]*B[15])+(67.0820393249937*A[12]+105.0*A[0])*B[12]+105.0*B[0]*A[12]+93.91485505499116*(A[9]*B[9]+A[7]*B[7]+A[5]*B[5]+A[2]*B[2])); 
  tmp[13] = 0.002380952380952381*((62.60990336999411*A[33]+92.22255689363637*A[3])*B[33]+92.22255689363637*B[3]*A[33]+93.91485505499116*A[30]*B[30]+(67.0820393249937*A[27]+105.0*A[4])*B[27]+105.0*B[4]*A[27]+(67.0820393249937*A[24]+105.0*A[2])*B[24]+105.0*B[2]*A[24]+(67.0820393249937*A[23]+105.0*A[1])*B[23]+105.0*B[1]*A[23]+93.91485505499116*(A[22]*B[22]+A[21]*B[21]+A[18]*B[18]+A[17]*B[17]+A[15]*B[15])+(67.0820393249937*A[13]+105.0*A[0])*B[13]+105.0*B[0]*A[13]+93.91485505499116*(A[10]*B[10]+A[7]*B[7]+A[6]*B[6]+A[3]*B[3])); 
  tmp[14] = 0.002380952380952381*((62.60990336999411*A[34]+92.22255689363637*A[4])*B[34]+92.22255689363637*B[4]*A[34]+(67.0820393249937*A[30]+105.0*A[3])*B[30]+105.0*B[3]*A[30]+(67.0820393249937*A[29]+105.0*A[2])*B[29]+105.0*B[2]*A[29]+(67.0820393249937*A[28]+105.0*A[1])*B[28]+105.0*B[1]*A[28]+93.91485505499116*(A[27]*B[27]+A[26]*B[26]+A[25]*B[25]+A[18]*B[18]+A[17]*B[17]+A[16]*B[16])+(67.0820393249937*A[14]+105.0*A[0])*B[14]+105.0*B[0]*A[14]+93.91485505499116*(A[10]*B[10]+A[9]*B[9]+A[8]*B[8]+A[4]*B[4])); 
  tmp[15] = 0.01666666666666667*(13.41640786499874*(A[6]*B[24]+B[6]*A[24]+A[7]*B[23]+B[7]*A[23]+A[5]*B[22]+B[5]*A[22]+A[5]*B[21]+B[5]*A[21]+A[7]*B[20]+B[7]*A[20]+A[6]*B[19]+B[6]*A[19])+15.0*(A[8]*B[18]+B[8]*A[18]+A[9]*B[17]+B[9]*A[17]+A[10]*B[16]+B[10]*A[16])+(13.41640786499874*(A[13]+A[12]+A[11])+15.0*A[0])*B[15]+(13.41640786499874*(B[13]+B[12]+B[11])+15.0*B[0])*A[15]+15.0*(A[1]*B[7]+B[1]*A[7]+A[2]*B[6]+B[2]*A[6]+A[3]*B[5]+B[3]*A[5])); 
  tmp[16] = 0.01666666666666667*(13.41640786499874*(A[8]*B[29]+B[8]*A[29]+A[9]*B[28]+B[9]*A[28]+A[5]*B[26]+B[5]*A[26]+A[5]*B[25]+B[5]*A[25]+A[9]*B[20]+B[9]*A[20]+A[8]*B[19]+B[8]*A[19])+15.0*(A[6]*B[18]+B[6]*A[18]+A[7]*B[17]+B[7]*A[17])+(13.41640786499874*(A[14]+A[12]+A[11])+15.0*A[0])*B[16]+(13.41640786499874*(B[14]+B[12]+B[11])+15.0*B[0])*A[16]+15.0*(A[10]*B[15]+B[10]*A[15]+A[1]*B[9]+B[1]*A[9]+A[2]*B[8]+B[2]*A[8]+A[4]*B[5]+B[4]*A[5])); 
  tmp[17] = 0.01666666666666667*(13.41640786499874*(A[8]*B[30]+B[8]*A[30]+A[10]*B[28]+B[10]*A[28]+A[6]*B[27]+B[6]*A[27]+A[6]*B[25]+B[6]*A[25]+A[10]*B[23]+B[10]*A[23]+A[8]*B[21]+B[8]*A[21])+15.0*(A[5]*B[18]+B[5]*A[18])+(13.41640786499874*(A[14]+A[13]+A[11])+15.0*A[0])*B[17]+(13.41640786499874*(B[14]+B[13]+B[11])+15.0*B[0])*A[17]+15.0*(A[7]*B[16]+B[7]*A[16]+A[9]*B[15]+B[9]*A[15]+A[1]*B[10]+B[1]*A[10]+A[3]*B[8]+B[3]*A[8]+A[4]*B[6]+B[4]*A[6])); 
  tmp[18] = 0.01666666666666667*(13.41640786499874*(A[9]*B[30]+B[9]*A[30]+A[10]*B[29]+B[10]*A[29]+A[7]*B[27]+B[7]*A[27]+A[7]*B[26]+B[7]*A[26]+A[10]*B[24]+B[10]*A[24]+A[9]*B[22]+B[9]*A[22])+(13.41640786499874*(A[14]+A[13]+A[12])+15.0*A[0])*B[18]+(13.41640786499874*(B[14]+B[13]+B[12])+15.0*B[0])*A[18]+15.0*(A[5]*B[17]+B[5]*A[17]+A[6]*B[16]+B[6]*A[16]+A[8]*B[15]+B[8]*A[15]+A[2]*B[10]+B[2]*A[10]+A[3]*B[9]+B[3]*A[9]+A[4]*B[7]+B[4]*A[7])); 
  tmp[19] = 0.002380952380952381*(92.2225568936364*(A[5]*B[31]+B[5]*A[31])+105.0*(A[9]*B[25]+B[9]*A[25]+A[7]*B[21]+B[7]*A[21])+84.0*(A[5]*B[20]+B[5]*A[20])+(93.91485505499116*A[12]+67.0820393249937*A[11]+105.0*A[0])*B[19]+(93.91485505499116*B[12]+67.0820393249937*B[11]+105.0*B[0])*A[19]+93.91485505499116*(A[8]*B[16]+B[8]*A[16]+A[6]*B[15]+B[6]*A[15])+105.0*(A[2]*B[11]+B[2]*A[11])+93.91485505499116*(A[1]*B[5]+B[1]*A[5])); 
  tmp[20] = 0.002380952380952381*(92.2225568936364*(A[5]*B[32]+B[5]*A[32])+105.0*(A[8]*B[26]+B[8]*A[26]+A[6]*B[22]+B[6]*A[22])+(67.0820393249937*A[12]+93.91485505499116*A[11]+105.0*A[0])*B[20]+(67.0820393249937*B[12]+93.91485505499116*B[11]+105.0*B[0])*A[20]+84.0*(A[5]*B[19]+B[5]*A[19])+93.91485505499116*(A[9]*B[16]+B[9]*A[16]+A[7]*B[15]+B[7]*A[15])+105.0*(A[1]*B[12]+B[1]*A[12])+93.91485505499116*(A[2]*B[5]+B[2]*A[5])); 
  tmp[21] = 0.002380952380952381*(92.2225568936364*(A[6]*B[31]+B[6]*A[31])+105.0*(A[10]*B[25]+B[10]*A[25])+84.0*(A[6]*B[23]+B[6]*A[23])+(93.91485505499116*A[13]+67.0820393249937*A[11]+105.0*A[0])*B[21]+(93.91485505499116*B[13]+67.0820393249937*B[11]+105.0*B[0])*A[21]+105.0*(A[7]*B[19]+B[7]*A[19])+93.91485505499116*(A[8]*B[17]+B[8]*A[17]+A[5]*B[15]+B[5]*A[15])+105.0*(A[3]*B[11]+B[3]*A[11])+93.91485505499116*(A[1]*B[6]+B[1]*A[6])); 
  tmp[22] = 0.002380952380952381*(92.2225568936364*(A[7]*B[32]+B[7]*A[32])+105.0*(A[10]*B[26]+B[10]*A[26])+84.0*(A[7]*B[24]+B[7]*A[24])+(93.91485505499116*A[13]+67.0820393249937*A[12]+105.0*A[0])*B[22]+(93.91485505499116*B[13]+67.0820393249937*B[12]+105.0*B[0])*A[22]+105.0*(A[6]*B[20]+B[6]*A[20])+93.91485505499116*(A[9]*B[18]+B[9]*A[18]+A[5]*B[15]+B[5]*A[15])+105.0*(A[3]*B[12]+B[3]*A[12])+93.91485505499116*(A[2]*B[7]+B[2]*A[7])); 
  tmp[23] = 0.002380952380952381*(92.2225568936364*(A[6]*B[33]+B[6]*A[33])+105.0*(A[8]*B[27]+B[8]*A[27]+A[5]*B[24]+B[5]*A[24])+(67.0820393249937*A[13]+93.91485505499116*A[11]+105.0*A[0])*B[23]+(67.0820393249937*B[13]+93.91485505499116*B[11]+105.0*B[0])*A[23]+84.0*(A[6]*B[21]+B[6]*A[21])+93.91485505499116*(A[10]*B[17]+B[10]*A[17]+A[7]*B[15]+B[7]*A[15])+105.0*(A[1]*B[13]+B[1]*A[13])+93.91485505499116*(A[3]*B[6]+B[3]*A[6])); 
  tmp[24] = 0.002380952380952381*(92.2225568936364*(A[7]*B[33]+B[7]*A[33])+105.0*(A[9]*B[27]+B[9]*A[27])+(67.0820393249937*A[13]+93.91485505499116*A[12]+105.0*A[0])*B[24]+(67.0820393249937*B[13]+93.91485505499116*B[12]+105.0*B[0])*A[24]+105.0*(A[5]*B[23]+B[5]*A[23])+84.0*(A[7]*B[22]+B[7]*A[22])+93.91485505499116*(A[10]*B[18]+B[10]*A[18]+A[6]*B[15]+B[6]*A[15])+105.0*(A[2]*B[13]+B[2]*A[13])+93.91485505499116*(A[3]*B[7]+B[3]*A[7])); 
  tmp[25] = 0.002380952380952381*(92.2225568936364*(A[8]*B[31]+B[8]*A[31])+84.0*(A[8]*B[28]+B[8]*A[28])+(93.91485505499116*A[14]+67.0820393249937*A[11]+105.0*A[0])*B[25]+(93.91485505499116*B[14]+67.0820393249937*B[11]+105.0*B[0])*A[25]+105.0*(A[10]*B[21]+B[10]*A[21]+A[9]*B[19]+B[9]*A[19])+93.91485505499116*(A[6]*B[17]+B[6]*A[17]+A[5]*B[16]+B[5]*A[16])+105.0*(A[4]*B[11]+B[4]*A[11])+93.91485505499116*(A[1]*B[8]+B[1]*A[8])); 
  tmp[26] = 0.002380952380952381*(92.2225568936364*(A[9]*B[32]+B[9]*A[32])+84.0*(A[9]*B[29]+B[9]*A[29])+(93.91485505499116*A[14]+67.0820393249937*A[12]+105.0*A[0])*B[26]+(93.91485505499116*B[14]+67.0820393249937*B[12]+105.0*B[0])*A[26]+105.0*(A[10]*B[22]+B[10]*A[22]+A[8]*B[20]+B[8]*A[20])+93.91485505499116*(A[7]*B[18]+B[7]*A[18]+A[5]*B[16]+B[5]*A[16])+105.0*(A[4]*B[12]+B[4]*A[12])+93.91485505499116*(A[2]*B[9]+B[2]*A[9])); 
  tmp[27] = 0.002380952380952381*(92.2225568936364*(A[10]*B[33]+B[10]*A[33])+84.0*(A[10]*B[30]+B[10]*A[30])+(93.91485505499116*A[14]+67.0820393249937*A[13]+105.0*A[0])*B[27]+(93.91485505499116*B[14]+67.0820393249937*B[13]+105.0*B[0])*A[27]+105.0*(A[9]*B[24]+B[9]*A[24]+A[8]*B[23]+B[8]*A[23])+93.91485505499116*(A[7]*B[18]+B[7]*A[18]+A[6]*B[17]+B[6]*A[17])+105.0*(A[4]*B[13]+B[4]*A[13])+93.91485505499116*(A[3]*B[10]+B[3]*A[10])); 
  tmp[28] = 0.002380952380952381*(92.2225568936364*(A[8]*B[34]+B[8]*A[34])+105.0*(A[6]*B[30]+B[6]*A[30]+A[5]*B[29]+B[5]*A[29])+(67.0820393249937*A[14]+93.91485505499116*A[11]+105.0*A[0])*B[28]+(67.0820393249937*B[14]+93.91485505499116*B[11]+105.0*B[0])*A[28]+84.0*(A[8]*B[25]+B[8]*A[25])+93.91485505499116*(A[10]*B[17]+B[10]*A[17]+A[9]*B[16]+B[9]*A[16])+105.0*(A[1]*B[14]+B[1]*A[14])+93.91485505499116*(A[4]*B[8]+B[4]*A[8])); 
  tmp[29] = 0.002380952380952381*(92.2225568936364*(A[9]*B[34]+B[9]*A[34])+105.0*(A[7]*B[30]+B[7]*A[30])+(67.0820393249937*A[14]+93.91485505499116*A[12]+105.0*A[0])*B[29]+(67.0820393249937*B[14]+93.91485505499116*B[12]+105.0*B[0])*A[29]+105.0*(A[5]*B[28]+B[5]*A[28])+84.0*(A[9]*B[26]+B[9]*A[26])+93.91485505499116*(A[10]*B[18]+B[10]*A[18]+A[8]*B[16]+B[8]*A[16])+105.0*(A[2]*B[14]+B[2]*A[14])+93.91485505499116*(A[4]*B[9]+B[4]*A[9])); 
  tmp[30] = 0.002380952380952381*(92.2225568936364*(A[10]*B[34]+B[10]*A[34])+(67.0820393249937*A[14]+93.91485505499116*A[13]+105.0*A[0])*B[30]+(67.0820393249937*B[14]+93.91485505499116*B[13]+105.0*B[0])*A[30]+105.0*(A[7]*B[29]+B[7]*A[29]+A[6]*B[28]+B[6]*A[28])+84.0*(A[10]*B[27]+B[10]*A[27])+93.91485505499116*(A[9]*B[18]+B[9]*A[18]+A[8]*B[17]+B[8]*A[17])+105.0*(A[3]*B[14]+B[3]*A[14])+93.91485505499116*(A[4]*B[10]+B[4]*A[10])); 
  tmp[31] = 0.002380952380952381*((62.60990336999411*A[11]+105.0*A[0])*B[31]+(62.60990336999411*B[11]+105.0*B[0])*A[31]+92.2225568936364*(A[8]*B[25]+B[8]*A[25]+A[6]*B[21]+B[6]*A[21]+A[5]*B[19]+B[5]*A[19])+92.22255689363637*(A[1]*B[11]+B[1]*A[11])); 
  tmp[32] = 0.002380952380952381*((62.60990336999411*A[12]+105.0*A[0])*B[32]+(62.60990336999411*B[12]+105.0*B[0])*A[32]+92.2225568936364*(A[9]*B[26]+B[9]*A[26]+A[7]*B[22]+B[7]*A[22]+A[5]*B[20]+B[5]*A[20])+92.22255689363637*(A[2]*B[12]+B[2]*A[12])); 
  tmp[33] = 0.002380952380952381*((62.60990336999411*A[13]+105.0*A[0])*B[33]+(62.60990336999411*B[13]+105.0*B[0])*A[33]+92.2225568936364*(A[10]*B[27]+B[10]*A[27]+A[7]*B[24]+B[7]*A[24]+A[6]*B[23]+B[6]*A[23])+92.22255689363637*(A[3]*B[13]+B[3]*A[13])); 
  tmp[34] = 0.002380952380952381*((62.60990336999411*A[14]+105.0*A[0])*B[34]+(62.60990336999411*B[14]+105.0*B[0])*A[34]+92.2225568936364*(A[10]*B[30]+B[10]*A[30]+A[9]*B[29]+B[9]*A[29]+A[8]*B[28]+B[8]*A[28])+92.22255689363637*(A[4]*B[14]+B[4]*A[14])); 
 
  // This tmp allows for in-place multiplication. 
  for (unsigned short int i=0; i<35; i++) 
  { 
    out[i] = tmp[i]; 
  } 
 
} 
 
void CartFieldBinOpConfPhaseMultiply1x3vMax_P3(binOpData_t* data, const double *A, const double *B, const short int Ncomp, const short int eqNcomp, double *out) 
{ 
  // A:       scalar/vector field in configuration space. 
  // B:       scalar field in phase space. 
  // Ncomp:   number of components of B (should =1 here). 
  // eqNcomp: =1 if A:numComponents=B:numComponents, =0 else (should=1 here). 
  // out:     output field A*B (same number of components as B). 
 
  double tmp[35]; 
  tmp[0] = 0.7071067811865476*A[3]*B[31]+0.7071067811865476*A[2]*B[11]+0.7071067811865476*A[1]*B[1]+0.7071067811865476*A[0]*B[0]; 
  tmp[1] = 0.6210590034081187*A[2]*B[31]+0.6210590034081187*A[3]*B[11]+0.632455532033676*A[1]*B[11]+0.632455532033676*B[1]*A[2]+0.7071067811865476*A[0]*B[1]+0.7071067811865476*B[0]*A[1]; 
  tmp[2] = 0.7071067811865477*A[2]*B[19]+0.7071067811865476*A[1]*B[5]+0.7071067811865476*A[0]*B[2]; 
  tmp[3] = 0.7071067811865477*A[2]*B[21]+0.7071067811865476*A[1]*B[6]+0.7071067811865476*A[0]*B[3]; 
  tmp[4] = 0.7071067811865477*A[2]*B[25]+0.7071067811865476*A[1]*B[8]+0.7071067811865476*A[0]*B[4]; 
  tmp[5] = 0.621059003408119*A[3]*B[19]+0.632455532033676*A[1]*B[19]+0.632455532033676*A[2]*B[5]+0.7071067811865476*A[0]*B[5]+0.7071067811865476*A[1]*B[2]; 
  tmp[6] = 0.621059003408119*A[3]*B[21]+0.632455532033676*A[1]*B[21]+0.632455532033676*A[2]*B[6]+0.7071067811865476*A[0]*B[6]+0.7071067811865476*A[1]*B[3]; 
  tmp[7] = 0.7071067811865476*A[1]*B[15]+0.7071067811865476*A[0]*B[7]; 
  tmp[8] = 0.621059003408119*A[3]*B[25]+0.632455532033676*A[1]*B[25]+0.632455532033676*A[2]*B[8]+0.7071067811865476*A[0]*B[8]+0.7071067811865476*A[1]*B[4]; 
  tmp[9] = 0.7071067811865476*A[1]*B[16]+0.7071067811865476*A[0]*B[9]; 
  tmp[10] = 0.7071067811865476*A[1]*B[17]+0.7071067811865476*A[0]*B[10]; 
  tmp[11] = 0.4216370213557841*A[3]*B[31]+0.6210590034081188*A[1]*B[31]+0.4517539514526258*A[2]*B[11]+0.7071067811865476*A[0]*B[11]+0.6210590034081188*B[1]*A[3]+0.7071067811865476*B[0]*A[2]+0.632455532033676*A[1]*B[1]; 
  tmp[12] = 0.7071067811865477*A[1]*B[20]+0.7071067811865476*A[0]*B[12]; 
  tmp[13] = 0.7071067811865477*A[1]*B[23]+0.7071067811865476*A[0]*B[13]; 
  tmp[14] = 0.7071067811865477*A[1]*B[28]+0.7071067811865476*A[0]*B[14]; 
  tmp[15] = 0.6324555320336761*A[2]*B[15]+0.7071067811865476*A[0]*B[15]+0.7071067811865476*A[1]*B[7]; 
  tmp[16] = 0.6324555320336761*A[2]*B[16]+0.7071067811865476*A[0]*B[16]+0.7071067811865476*A[1]*B[9]; 
  tmp[17] = 0.6324555320336761*A[2]*B[17]+0.7071067811865476*A[0]*B[17]+0.7071067811865476*A[1]*B[10]; 
  tmp[18] = 0.7071067811865475*A[0]*B[18]; 
  tmp[19] = 0.4517539514526258*A[2]*B[19]+0.7071067811865476*A[0]*B[19]+0.621059003408119*A[3]*B[5]+0.632455532033676*A[1]*B[5]+0.7071067811865476*A[2]*B[2]; 
  tmp[20] = 0.632455532033676*A[2]*B[20]+0.7071067811865476*A[0]*B[20]+0.7071067811865477*A[1]*B[12]; 
  tmp[21] = 0.4517539514526258*A[2]*B[21]+0.7071067811865476*A[0]*B[21]+0.621059003408119*A[3]*B[6]+0.632455532033676*A[1]*B[6]+0.7071067811865476*A[2]*B[3]; 
  tmp[22] = 0.7071067811865475*A[0]*B[22]; 
  tmp[23] = 0.632455532033676*A[2]*B[23]+0.7071067811865476*A[0]*B[23]+0.7071067811865477*A[1]*B[13]; 
  tmp[24] = 0.7071067811865475*A[0]*B[24]; 
  tmp[25] = 0.4517539514526258*A[2]*B[25]+0.7071067811865476*A[0]*B[25]+0.621059003408119*A[3]*B[8]+0.632455532033676*A[1]*B[8]+0.7071067811865476*A[2]*B[4]; 
  tmp[26] = 0.7071067811865475*A[0]*B[26]; 
  tmp[27] = 0.7071067811865475*A[0]*B[27]; 
  tmp[28] = 0.632455532033676*A[2]*B[28]+0.7071067811865476*A[0]*B[28]+0.7071067811865477*A[1]*B[14]; 
  tmp[29] = 0.7071067811865475*A[0]*B[29]; 
  tmp[30] = 0.7071067811865475*A[0]*B[30]; 
  tmp[31] = 0.4216370213557841*A[2]*B[31]+0.7071067811865476*A[0]*B[31]+0.4216370213557841*A[3]*B[11]+0.6210590034081188*A[1]*B[11]+0.7071067811865476*B[0]*A[3]+0.6210590034081188*B[1]*A[2]; 
  tmp[32] = 0.7071067811865475*A[0]*B[32]; 
  tmp[33] = 0.7071067811865475*A[0]*B[33]; 
  tmp[34] = 0.7071067811865475*A[0]*B[34]; 
 
  // This tmp allows for in-place multiplication. 
  for (unsigned short int i=0; i<35; i++) 
  { 
    out[i] = tmp[i]; 
  } 
 
} 
 
void CartFieldBinOpConfPhaseDivide1x3vMax_P3(binOpData_t* data, const double *A, const double *B, const short int Ncomp, const short int eqNcomp, double *out) 
{ 
  // A:       configuration space denominator field (must be a scalar field). 
  // B:       phase space numerator field (must be a scalar field). 
  // Ncomp:   number of components of B (=1 here). 
  // eqNcomp: =1 if A:numComponents=B:numComponents, =0 else (=1 here). 
  // out:     output field (same number of components as B). 
 
  // If a corner value is below zero, use cell average A.
  bool avgA = false;
  if ((-1.870828693386971*A[3])+1.58113883008419*A[2]-1.224744871391589*A[1]+0.7071067811865475*A[0] < 0.0) { 
    avgA = true;
  }
  if (1.870828693386971*A[3]+1.58113883008419*A[2]+1.224744871391589*A[1]+0.7071067811865475*A[0] < 0.0) { 
    avgA = true;
  }
 
  double As[4]; 
  double Bs[35]; 
  if (avgA) { 
    As[0] = A[0]; 
    As[1] = 0.0; 
    As[2] = 0.0; 
    As[3] = 0.0; 
    Bs[0] = B[0]; 
    Bs[1] = 0.0; 
    Bs[2] = B[2]; 
    Bs[3] = B[3]; 
    Bs[4] = B[4]; 
    Bs[5] = 0.0; 
    Bs[6] = 0.0; 
    Bs[7] = B[7]; 
    Bs[8] = 0.0; 
    Bs[9] = B[9]; 
    Bs[10] = B[10]; 
    Bs[11] = 0.0; 
    Bs[12] = B[12]; 
    Bs[13] = B[13]; 
    Bs[14] = B[14]; 
    Bs[15] = 0.0; 
    Bs[16] = 0.0; 
    Bs[17] = 0.0; 
    Bs[18] = B[18]; 
    Bs[19] = 0.0; 
    Bs[20] = 0.0; 
    Bs[21] = 0.0; 
    Bs[22] = B[22]; 
    Bs[23] = 0.0; 
    Bs[24] = B[24]; 
    Bs[25] = 0.0; 
    Bs[26] = B[26]; 
    Bs[27] = B[27]; 
    Bs[28] = 0.0; 
    Bs[29] = B[29]; 
    Bs[30] = B[30]; 
    Bs[31] = 0.0; 
    Bs[32] = B[32]; 
    Bs[33] = B[33]; 
    Bs[34] = B[34]; 
  } else { 
    As[0] = A[0]; 
    As[1] = A[1]; 
    As[2] = A[2]; 
    As[3] = A[3]; 
    Bs[0] = B[0]; 
    Bs[1] = B[1]; 
    Bs[2] = B[2]; 
    Bs[3] = B[3]; 
    Bs[4] = B[4]; 
    Bs[5] = B[5]; 
    Bs[6] = B[6]; 
    Bs[7] = B[7]; 
    Bs[8] = B[8]; 
    Bs[9] = B[9]; 
    Bs[10] = B[10]; 
    Bs[11] = B[11]; 
    Bs[12] = B[12]; 
    Bs[13] = B[13]; 
    Bs[14] = B[14]; 
    Bs[15] = B[15]; 
    Bs[16] = B[16]; 
    Bs[17] = B[17]; 
    Bs[18] = B[18]; 
    Bs[19] = B[19]; 
    Bs[20] = B[20]; 
    Bs[21] = B[21]; 
    Bs[22] = B[22]; 
    Bs[23] = B[23]; 
    Bs[24] = B[24]; 
    Bs[25] = B[25]; 
    Bs[26] = B[26]; 
    Bs[27] = B[27]; 
    Bs[28] = B[28]; 
    Bs[29] = B[29]; 
    Bs[30] = B[30]; 
    Bs[31] = B[31]; 
    Bs[32] = B[32]; 
    Bs[33] = B[33]; 
    Bs[34] = B[34]; 
  } 
 
  // Fill AEM matrix. 
  data->AEM_D = Eigen::MatrixXd::Zero(35,35); 
  data->AEM_D(0,0) = 0.7071067811865475*As[0]; 
  data->AEM_D(0,1) = 0.7071067811865475*As[1]; 
  data->AEM_D(0,4) = 0.7071067811865475*As[1]; 
  data->AEM_D(0,5) = 0.6324555320336759*As[2]+0.7071067811865475*As[0]; 
  data->AEM_D(0,10) = 0.7071067811865475*As[0]; 
  data->AEM_D(0,15) = 0.7071067811865475*As[0]; 
  data->AEM_D(0,22) = 0.7071067811865475*As[1]; 
  data->AEM_D(0,27) = 0.7071067811865475*As[1]; 
  data->AEM_D(1,9) = 0.7071067811865475*As[2]; 
  data->AEM_D(1,10) = 0.6210590034081186*As[3]+0.6324555320336759*As[1]; 
  data->AEM_D(2,8) = 0.7071067811865475*As[2]; 
  data->AEM_D(2,17) = 0.7071067811865475*As[2]; 
  data->AEM_D(3,19) = 0.7071067811865475*As[3]; 
  data->AEM_D(3,20) = 0.6210590034081186*As[2]; 
 
  // Fill BEV. 
  data->BEV_D << Bs[0],Bs[1],Bs[2],Bs[3],Bs[4],Bs[5],Bs[6],Bs[7],Bs[8],Bs[9],Bs[10],Bs[11],Bs[12],Bs[13],Bs[14],Bs[15],Bs[16],Bs[17],Bs[18],Bs[19],Bs[20],Bs[21],Bs[22],Bs[23],Bs[24],Bs[25],Bs[26],Bs[27],Bs[28],Bs[29],Bs[30],Bs[31],Bs[32],Bs[33],Bs[34]; 
 
  // Solve the system of equations. 
  data->u_D = data->AEM_D.colPivHouseholderQr().solve(data->BEV_D); 
 
  // Copy data from Eigen vector. 
  Eigen::Map<VectorXd>(out,35,1) = data->u_D; 
 
} 
 
