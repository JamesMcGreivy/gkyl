#include <BasisVolToSurfModDecl.h> 
// polyOrder 1 
//    dir 1 
void ModalSerendipBasisSurf3DP1_Upper1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.224744871391589*_in[1]+0.7071067811865475*_in[0]; 
   _out[1] = 1.224744871391589*_in[4]+0.7071067811865475*_in[2]; 
   _out[2] = 1.224744871391589*_in[5]+0.7071067811865475*_in[3]; 
   _out[3] = 1.224744871391589*_in[7]+0.7071067811865475*_in[6]; 
  } 
} 
void ModalSerendipBasisSurf3DP1_Lower1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 0.7071067811865475*_in[0]-1.224744871391589*_in[1]; 
   _out[1] = 0.7071067811865475*_in[2]-1.224744871391589*_in[4]; 
   _out[2] = 0.7071067811865475*_in[3]-1.224744871391589*_in[5]; 
   _out[3] = 0.7071067811865475*_in[6]-1.224744871391589*_in[7]; 
  } 
} 

//    dir 2 
void ModalSerendipBasisSurf3DP1_Upper2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.224744871391589*_in[2]+0.7071067811865475*_in[0]; 
   _out[1] = 1.224744871391589*_in[4]+0.7071067811865475*_in[1]; 
   _out[2] = 1.224744871391589*_in[6]+0.7071067811865475*_in[3]; 
   _out[3] = 1.224744871391589*_in[7]+0.7071067811865475*_in[5]; 
  } 
} 
void ModalSerendipBasisSurf3DP1_Lower2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 0.7071067811865475*_in[0]-1.224744871391589*_in[2]; 
   _out[1] = 0.7071067811865475*_in[1]-1.224744871391589*_in[4]; 
   _out[2] = 0.7071067811865475*_in[3]-1.224744871391589*_in[6]; 
   _out[3] = 0.7071067811865475*_in[5]-1.224744871391589*_in[7]; 
  } 
} 

//    dir 3 
void ModalSerendipBasisSurf3DP1_Upper3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.224744871391589*_in[3]+0.7071067811865475*_in[0]; 
   _out[1] = 1.224744871391589*_in[5]+0.7071067811865475*_in[1]; 
   _out[2] = 1.224744871391589*_in[6]+0.7071067811865475*_in[2]; 
   _out[3] = 1.224744871391589*_in[7]+0.7071067811865475*_in[4]; 
  } 
} 
void ModalSerendipBasisSurf3DP1_Lower3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 0.7071067811865475*_in[0]-1.224744871391589*_in[3]; 
   _out[1] = 0.7071067811865475*_in[1]-1.224744871391589*_in[5]; 
   _out[2] = 0.7071067811865475*_in[2]-1.224744871391589*_in[6]; 
   _out[3] = 0.7071067811865475*_in[4]-1.224744871391589*_in[7]; 
  } 
} 


// polyOrder 2 
//    dir 1 
void ModalSerendipBasisSurf3DP2_Upper1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.58113883008419*_in[7]+1.224744871391589*_in[1]+0.7071067811865475*_in[0]; 
   _out[1] = 1.58113883008419*_in[11]+1.224744871391589*_in[4]+0.7071067811865475*_in[2]; 
   _out[2] = 1.58113883008419*_in[13]+1.224744871391589*_in[5]+0.7071067811865475*_in[3]; 
   _out[3] = 1.58113883008419*_in[17]+1.224744871391589*_in[10]+0.7071067811865475*_in[6]; 
   _out[4] = 1.224744871391589*_in[12]+0.7071067811865475*_in[8]; 
   _out[5] = 1.224744871391589*_in[15]+0.7071067811865475*_in[9]; 
   _out[6] = 1.224744871391589*_in[18]+0.7071067811865475*_in[14]; 
   _out[7] = 1.224744871391589*_in[19]+0.7071067811865475*_in[16]; 
  } 
} 
void ModalSerendipBasisSurf3DP2_Lower1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.58113883008419*_in[7]-1.224744871391589*_in[1]+0.7071067811865475*_in[0]; 
   _out[1] = 1.58113883008419*_in[11]-1.224744871391589*_in[4]+0.7071067811865475*_in[2]; 
   _out[2] = 1.58113883008419*_in[13]-1.224744871391589*_in[5]+0.7071067811865475*_in[3]; 
   _out[3] = 1.58113883008419*_in[17]-1.224744871391589*_in[10]+0.7071067811865475*_in[6]; 
   _out[4] = 0.7071067811865475*_in[8]-1.224744871391589*_in[12]; 
   _out[5] = 0.7071067811865475*_in[9]-1.224744871391589*_in[15]; 
   _out[6] = 0.7071067811865475*_in[14]-1.224744871391589*_in[18]; 
   _out[7] = 0.7071067811865475*_in[16]-1.224744871391589*_in[19]; 
  } 
} 

//    dir 2 
void ModalSerendipBasisSurf3DP2_Upper2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.58113883008419*_in[8]+1.224744871391589*_in[2]+0.7071067811865475*_in[0]; 
   _out[1] = 1.58113883008419*_in[12]+1.224744871391589*_in[4]+0.7071067811865475*_in[1]; 
   _out[2] = 1.58113883008419*_in[14]+1.224744871391589*_in[6]+0.7071067811865475*_in[3]; 
   _out[3] = 1.58113883008419*_in[18]+1.224744871391589*_in[10]+0.7071067811865475*_in[5]; 
   _out[4] = 1.224744871391589*_in[11]+0.7071067811865475*_in[7]; 
   _out[5] = 1.224744871391589*_in[16]+0.7071067811865475*_in[9]; 
   _out[6] = 1.224744871391589*_in[17]+0.7071067811865475*_in[13]; 
   _out[7] = 1.224744871391589*_in[19]+0.7071067811865475*_in[15]; 
  } 
} 
void ModalSerendipBasisSurf3DP2_Lower2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.58113883008419*_in[8]-1.224744871391589*_in[2]+0.7071067811865475*_in[0]; 
   _out[1] = 1.58113883008419*_in[12]-1.224744871391589*_in[4]+0.7071067811865475*_in[1]; 
   _out[2] = 1.58113883008419*_in[14]-1.224744871391589*_in[6]+0.7071067811865475*_in[3]; 
   _out[3] = 1.58113883008419*_in[18]-1.224744871391589*_in[10]+0.7071067811865475*_in[5]; 
   _out[4] = 0.7071067811865475*_in[7]-1.224744871391589*_in[11]; 
   _out[5] = 0.7071067811865475*_in[9]-1.224744871391589*_in[16]; 
   _out[6] = 0.7071067811865475*_in[13]-1.224744871391589*_in[17]; 
   _out[7] = 0.7071067811865475*_in[15]-1.224744871391589*_in[19]; 
  } 
} 

//    dir 3 
void ModalSerendipBasisSurf3DP2_Upper3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.58113883008419*_in[9]+1.224744871391589*_in[3]+0.7071067811865475*_in[0]; 
   _out[1] = 1.58113883008419*_in[15]+1.224744871391589*_in[5]+0.7071067811865475*_in[1]; 
   _out[2] = 1.58113883008419*_in[16]+1.224744871391589*_in[6]+0.7071067811865475*_in[2]; 
   _out[3] = 1.58113883008419*_in[19]+1.224744871391589*_in[10]+0.7071067811865475*_in[4]; 
   _out[4] = 1.224744871391589*_in[13]+0.7071067811865475*_in[7]; 
   _out[5] = 1.224744871391589*_in[14]+0.7071067811865475*_in[8]; 
   _out[6] = 1.224744871391589*_in[17]+0.7071067811865475*_in[11]; 
   _out[7] = 1.224744871391589*_in[18]+0.7071067811865475*_in[12]; 
  } 
} 
void ModalSerendipBasisSurf3DP2_Lower3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.58113883008419*_in[9]-1.224744871391589*_in[3]+0.7071067811865475*_in[0]; 
   _out[1] = 1.58113883008419*_in[15]-1.224744871391589*_in[5]+0.7071067811865475*_in[1]; 
   _out[2] = 1.58113883008419*_in[16]-1.224744871391589*_in[6]+0.7071067811865475*_in[2]; 
   _out[3] = 1.58113883008419*_in[19]-1.224744871391589*_in[10]+0.7071067811865475*_in[4]; 
   _out[4] = 0.7071067811865475*_in[7]-1.224744871391589*_in[13]; 
   _out[5] = 0.7071067811865475*_in[8]-1.224744871391589*_in[14]; 
   _out[6] = 0.7071067811865475*_in[11]-1.224744871391589*_in[17]; 
   _out[7] = 0.7071067811865475*_in[12]-1.224744871391589*_in[18]; 
  } 
} 


// polyOrder 3 
//    dir 1 
void ModalSerendipBasisSurf3DP3_Upper1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.870828693386971*_in[17]+1.58113883008419*_in[7]+1.224744871391589*_in[1]+0.7071067811865475*_in[0]; 
   _out[1] = 1.870828693386971*_in[23]+1.58113883008419*_in[11]+1.224744871391589*_in[4]+0.7071067811865475*_in[2]; 
   _out[2] = 1.870828693386971*_in[25]+1.58113883008419*_in[13]+1.224744871391589*_in[5]+0.7071067811865475*_in[3]; 
   _out[3] = 1.870828693386971*_in[29]+1.58113883008419*_in[20]+1.224744871391589*_in[10]+0.7071067811865475*_in[6]; 
   _out[4] = 1.224744871391589*_in[12]+0.7071067811865475*_in[8]; 
   _out[5] = 1.224744871391589*_in[15]+0.7071067811865475*_in[9]; 
   _out[6] = 1.224744871391589*_in[21]+0.7071067811865475*_in[14]; 
   _out[7] = 1.224744871391589*_in[22]+0.7071067811865475*_in[16]; 
   _out[8] = 1.224744871391589*_in[24]+0.7071067811865475*_in[18]; 
   _out[9] = 1.224744871391589*_in[27]+0.7071067811865475*_in[19]; 
   _out[10] = 1.224744871391589*_in[30]+0.7071067811865475*_in[26]; 
   _out[11] = 1.224744871391589*_in[31]+0.7071067811865475*_in[28]; 
  } 
} 
void ModalSerendipBasisSurf3DP3_Lower1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = (-1.870828693386971*_in[17])+1.58113883008419*_in[7]-1.224744871391589*_in[1]+0.7071067811865475*_in[0]; 
   _out[1] = (-1.870828693386971*_in[23])+1.58113883008419*_in[11]-1.224744871391589*_in[4]+0.7071067811865475*_in[2]; 
   _out[2] = (-1.870828693386971*_in[25])+1.58113883008419*_in[13]-1.224744871391589*_in[5]+0.7071067811865475*_in[3]; 
   _out[3] = (-1.870828693386971*_in[29])+1.58113883008419*_in[20]-1.224744871391589*_in[10]+0.7071067811865475*_in[6]; 
   _out[4] = 0.7071067811865475*_in[8]-1.224744871391589*_in[12]; 
   _out[5] = 0.7071067811865475*_in[9]-1.224744871391589*_in[15]; 
   _out[6] = 0.7071067811865475*_in[14]-1.224744871391589*_in[21]; 
   _out[7] = 0.7071067811865475*_in[16]-1.224744871391589*_in[22]; 
   _out[8] = 0.7071067811865475*_in[18]-1.224744871391589*_in[24]; 
   _out[9] = 0.7071067811865475*_in[19]-1.224744871391589*_in[27]; 
   _out[10] = 0.7071067811865475*_in[26]-1.224744871391589*_in[30]; 
   _out[11] = 0.7071067811865475*_in[28]-1.224744871391589*_in[31]; 
  } 
} 

//    dir 2 
void ModalSerendipBasisSurf3DP3_Upper2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.870828693386971*_in[18]+1.58113883008419*_in[8]+1.224744871391589*_in[2]+0.7071067811865475*_in[0]; 
   _out[1] = 1.870828693386971*_in[24]+1.58113883008419*_in[12]+1.224744871391589*_in[4]+0.7071067811865475*_in[1]; 
   _out[2] = 1.870828693386971*_in[26]+1.58113883008419*_in[14]+1.224744871391589*_in[6]+0.7071067811865475*_in[3]; 
   _out[3] = 1.870828693386971*_in[30]+1.58113883008419*_in[21]+1.224744871391589*_in[10]+0.7071067811865475*_in[5]; 
   _out[4] = 1.224744871391589*_in[11]+0.7071067811865475*_in[7]; 
   _out[5] = 1.224744871391589*_in[16]+0.7071067811865475*_in[9]; 
   _out[6] = 1.224744871391589*_in[20]+0.7071067811865475*_in[13]; 
   _out[7] = 1.224744871391589*_in[22]+0.7071067811865475*_in[15]; 
   _out[8] = 1.224744871391589*_in[23]+0.7071067811865475*_in[17]; 
   _out[9] = 1.224744871391589*_in[28]+0.7071067811865475*_in[19]; 
   _out[10] = 1.224744871391589*_in[29]+0.7071067811865475*_in[25]; 
   _out[11] = 1.224744871391589*_in[31]+0.7071067811865475*_in[27]; 
  } 
} 
void ModalSerendipBasisSurf3DP3_Lower2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = (-1.870828693386971*_in[18])+1.58113883008419*_in[8]-1.224744871391589*_in[2]+0.7071067811865475*_in[0]; 
   _out[1] = (-1.870828693386971*_in[24])+1.58113883008419*_in[12]-1.224744871391589*_in[4]+0.7071067811865475*_in[1]; 
   _out[2] = (-1.870828693386971*_in[26])+1.58113883008419*_in[14]-1.224744871391589*_in[6]+0.7071067811865475*_in[3]; 
   _out[3] = (-1.870828693386971*_in[30])+1.58113883008419*_in[21]-1.224744871391589*_in[10]+0.7071067811865475*_in[5]; 
   _out[4] = 0.7071067811865475*_in[7]-1.224744871391589*_in[11]; 
   _out[5] = 0.7071067811865475*_in[9]-1.224744871391589*_in[16]; 
   _out[6] = 0.7071067811865475*_in[13]-1.224744871391589*_in[20]; 
   _out[7] = 0.7071067811865475*_in[15]-1.224744871391589*_in[22]; 
   _out[8] = 0.7071067811865475*_in[17]-1.224744871391589*_in[23]; 
   _out[9] = 0.7071067811865475*_in[19]-1.224744871391589*_in[28]; 
   _out[10] = 0.7071067811865475*_in[25]-1.224744871391589*_in[29]; 
   _out[11] = 0.7071067811865475*_in[27]-1.224744871391589*_in[31]; 
  } 
} 

//    dir 3 
void ModalSerendipBasisSurf3DP3_Upper3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 1.870828693386971*_in[19]+1.58113883008419*_in[9]+1.224744871391589*_in[3]+0.7071067811865475*_in[0]; 
   _out[1] = 1.870828693386971*_in[27]+1.58113883008419*_in[15]+1.224744871391589*_in[5]+0.7071067811865475*_in[1]; 
   _out[2] = 1.870828693386971*_in[28]+1.58113883008419*_in[16]+1.224744871391589*_in[6]+0.7071067811865475*_in[2]; 
   _out[3] = 1.870828693386971*_in[31]+1.58113883008419*_in[22]+1.224744871391589*_in[10]+0.7071067811865475*_in[4]; 
   _out[4] = 1.224744871391589*_in[13]+0.7071067811865475*_in[7]; 
   _out[5] = 1.224744871391589*_in[14]+0.7071067811865475*_in[8]; 
   _out[6] = 1.224744871391589*_in[20]+0.7071067811865475*_in[11]; 
   _out[7] = 1.224744871391589*_in[21]+0.7071067811865475*_in[12]; 
   _out[8] = 1.224744871391589*_in[25]+0.7071067811865475*_in[17]; 
   _out[9] = 1.224744871391589*_in[26]+0.7071067811865475*_in[18]; 
   _out[10] = 1.224744871391589*_in[29]+0.7071067811865475*_in[23]; 
   _out[11] = 1.224744871391589*_in[30]+0.7071067811865475*_in[24]; 
  } 
} 
void ModalSerendipBasisSurf3DP3_Lower3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = (-1.870828693386971*_in[19])+1.58113883008419*_in[9]-1.224744871391589*_in[3]+0.7071067811865475*_in[0]; 
   _out[1] = (-1.870828693386971*_in[27])+1.58113883008419*_in[15]-1.224744871391589*_in[5]+0.7071067811865475*_in[1]; 
   _out[2] = (-1.870828693386971*_in[28])+1.58113883008419*_in[16]-1.224744871391589*_in[6]+0.7071067811865475*_in[2]; 
   _out[3] = (-1.870828693386971*_in[31])+1.58113883008419*_in[22]-1.224744871391589*_in[10]+0.7071067811865475*_in[4]; 
   _out[4] = 0.7071067811865475*_in[7]-1.224744871391589*_in[13]; 
   _out[5] = 0.7071067811865475*_in[8]-1.224744871391589*_in[14]; 
   _out[6] = 0.7071067811865475*_in[11]-1.224744871391589*_in[20]; 
   _out[7] = 0.7071067811865475*_in[12]-1.224744871391589*_in[21]; 
   _out[8] = 0.7071067811865475*_in[17]-1.224744871391589*_in[25]; 
   _out[9] = 0.7071067811865475*_in[18]-1.224744871391589*_in[26]; 
   _out[10] = 0.7071067811865475*_in[23]-1.224744871391589*_in[29]; 
   _out[11] = 0.7071067811865475*_in[24]-1.224744871391589*_in[30]; 
  } 
} 


// polyOrder 4 
//    dir 1 
void ModalSerendipBasisSurf3DP4_Upper1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 2.121320343559642*_in[32]+1.870828693386971*_in[17]+1.58113883008419*_in[7]+1.224744871391589*_in[1]+0.7071067811865475*_in[0]; 
   _out[1] = 2.121320343559642*_in[41]+1.870828693386971*_in[26]+1.58113883008419*_in[11]+1.224744871391589*_in[4]+0.7071067811865475*_in[2]; 
   _out[2] = 2.121320343559642*_in[43]+1.870828693386971*_in[28]+1.58113883008419*_in[13]+1.224744871391589*_in[5]+0.7071067811865475*_in[3]; 
   _out[3] = 2.121320343559642*_in[47]+1.870828693386971*_in[38]+1.58113883008419*_in[20]+1.224744871391589*_in[10]+0.7071067811865475*_in[6]; 
   _out[4] = 1.58113883008419*_in[23]+1.224744871391589*_in[12]+0.7071067811865475*_in[8]; 
   _out[5] = 1.58113883008419*_in[24]+1.224744871391589*_in[15]+0.7071067811865475*_in[9]; 
   _out[6] = 1.58113883008419*_in[35]+1.224744871391589*_in[21]+0.7071067811865475*_in[14]; 
   _out[7] = 1.58113883008419*_in[36]+1.224744871391589*_in[22]+0.7071067811865475*_in[16]; 
   _out[8] = 1.224744871391589*_in[27]+0.7071067811865475*_in[18]; 
   _out[9] = 1.224744871391589*_in[30]+0.7071067811865475*_in[19]; 
   _out[10] = 1.224744871391589*_in[37]+0.7071067811865475*_in[25]; 
   _out[11] = 1.224744871391589*_in[39]+0.7071067811865475*_in[29]; 
   _out[12] = 1.224744871391589*_in[40]+0.7071067811865475*_in[31]; 
   _out[13] = 1.224744871391589*_in[42]+0.7071067811865475*_in[33]; 
   _out[14] = 1.224744871391589*_in[45]+0.7071067811865475*_in[34]; 
   _out[15] = 1.224744871391589*_in[48]+0.7071067811865475*_in[44]; 
   _out[16] = 1.224744871391589*_in[49]+0.7071067811865475*_in[46]; 
  } 
} 
void ModalSerendipBasisSurf3DP4_Lower1(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 2.121320343559642*_in[32]-1.870828693386971*_in[17]+1.58113883008419*_in[7]-1.224744871391589*_in[1]+0.7071067811865475*_in[0]; 
   _out[1] = 2.121320343559642*_in[41]-1.870828693386971*_in[26]+1.58113883008419*_in[11]-1.224744871391589*_in[4]+0.7071067811865475*_in[2]; 
   _out[2] = 2.121320343559642*_in[43]-1.870828693386971*_in[28]+1.58113883008419*_in[13]-1.224744871391589*_in[5]+0.7071067811865475*_in[3]; 
   _out[3] = 2.121320343559642*_in[47]-1.870828693386971*_in[38]+1.58113883008419*_in[20]-1.224744871391589*_in[10]+0.7071067811865475*_in[6]; 
   _out[4] = 1.58113883008419*_in[23]-1.224744871391589*_in[12]+0.7071067811865475*_in[8]; 
   _out[5] = 1.58113883008419*_in[24]-1.224744871391589*_in[15]+0.7071067811865475*_in[9]; 
   _out[6] = 1.58113883008419*_in[35]-1.224744871391589*_in[21]+0.7071067811865475*_in[14]; 
   _out[7] = 1.58113883008419*_in[36]-1.224744871391589*_in[22]+0.7071067811865475*_in[16]; 
   _out[8] = 0.7071067811865475*_in[18]-1.224744871391589*_in[27]; 
   _out[9] = 0.7071067811865475*_in[19]-1.224744871391589*_in[30]; 
   _out[10] = 0.7071067811865475*_in[25]-1.224744871391589*_in[37]; 
   _out[11] = 0.7071067811865475*_in[29]-1.224744871391589*_in[39]; 
   _out[12] = 0.7071067811865475*_in[31]-1.224744871391589*_in[40]; 
   _out[13] = 0.7071067811865475*_in[33]-1.224744871391589*_in[42]; 
   _out[14] = 0.7071067811865475*_in[34]-1.224744871391589*_in[45]; 
   _out[15] = 0.7071067811865475*_in[44]-1.224744871391589*_in[48]; 
   _out[16] = 0.7071067811865475*_in[46]-1.224744871391589*_in[49]; 
  } 
} 

//    dir 2 
void ModalSerendipBasisSurf3DP4_Upper2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 2.121320343559642*_in[33]+1.870828693386971*_in[18]+1.58113883008419*_in[8]+1.224744871391589*_in[2]+0.7071067811865475*_in[0]; 
   _out[1] = 2.121320343559642*_in[42]+1.870828693386971*_in[27]+1.58113883008419*_in[12]+1.224744871391589*_in[4]+0.7071067811865475*_in[1]; 
   _out[2] = 2.121320343559642*_in[44]+1.870828693386971*_in[29]+1.58113883008419*_in[14]+1.224744871391589*_in[6]+0.7071067811865475*_in[3]; 
   _out[3] = 2.121320343559642*_in[48]+1.870828693386971*_in[39]+1.58113883008419*_in[21]+1.224744871391589*_in[10]+0.7071067811865475*_in[5]; 
   _out[4] = 1.58113883008419*_in[23]+1.224744871391589*_in[11]+0.7071067811865475*_in[7]; 
   _out[5] = 1.58113883008419*_in[25]+1.224744871391589*_in[16]+0.7071067811865475*_in[9]; 
   _out[6] = 1.58113883008419*_in[35]+1.224744871391589*_in[20]+0.7071067811865475*_in[13]; 
   _out[7] = 1.58113883008419*_in[37]+1.224744871391589*_in[22]+0.7071067811865475*_in[15]; 
   _out[8] = 1.224744871391589*_in[26]+0.7071067811865475*_in[17]; 
   _out[9] = 1.224744871391589*_in[31]+0.7071067811865475*_in[19]; 
   _out[10] = 1.224744871391589*_in[36]+0.7071067811865475*_in[24]; 
   _out[11] = 1.224744871391589*_in[38]+0.7071067811865475*_in[28]; 
   _out[12] = 1.224744871391589*_in[40]+0.7071067811865475*_in[30]; 
   _out[13] = 1.224744871391589*_in[41]+0.7071067811865475*_in[32]; 
   _out[14] = 1.224744871391589*_in[46]+0.7071067811865475*_in[34]; 
   _out[15] = 1.224744871391589*_in[47]+0.7071067811865475*_in[43]; 
   _out[16] = 1.224744871391589*_in[49]+0.7071067811865475*_in[45]; 
  } 
} 
void ModalSerendipBasisSurf3DP4_Lower2(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 2.121320343559642*_in[33]-1.870828693386971*_in[18]+1.58113883008419*_in[8]-1.224744871391589*_in[2]+0.7071067811865475*_in[0]; 
   _out[1] = 2.121320343559642*_in[42]-1.870828693386971*_in[27]+1.58113883008419*_in[12]-1.224744871391589*_in[4]+0.7071067811865475*_in[1]; 
   _out[2] = 2.121320343559642*_in[44]-1.870828693386971*_in[29]+1.58113883008419*_in[14]-1.224744871391589*_in[6]+0.7071067811865475*_in[3]; 
   _out[3] = 2.121320343559642*_in[48]-1.870828693386971*_in[39]+1.58113883008419*_in[21]-1.224744871391589*_in[10]+0.7071067811865475*_in[5]; 
   _out[4] = 1.58113883008419*_in[23]-1.224744871391589*_in[11]+0.7071067811865475*_in[7]; 
   _out[5] = 1.58113883008419*_in[25]-1.224744871391589*_in[16]+0.7071067811865475*_in[9]; 
   _out[6] = 1.58113883008419*_in[35]-1.224744871391589*_in[20]+0.7071067811865475*_in[13]; 
   _out[7] = 1.58113883008419*_in[37]-1.224744871391589*_in[22]+0.7071067811865475*_in[15]; 
   _out[8] = 0.7071067811865475*_in[17]-1.224744871391589*_in[26]; 
   _out[9] = 0.7071067811865475*_in[19]-1.224744871391589*_in[31]; 
   _out[10] = 0.7071067811865475*_in[24]-1.224744871391589*_in[36]; 
   _out[11] = 0.7071067811865475*_in[28]-1.224744871391589*_in[38]; 
   _out[12] = 0.7071067811865475*_in[30]-1.224744871391589*_in[40]; 
   _out[13] = 0.7071067811865475*_in[32]-1.224744871391589*_in[41]; 
   _out[14] = 0.7071067811865475*_in[34]-1.224744871391589*_in[46]; 
   _out[15] = 0.7071067811865475*_in[43]-1.224744871391589*_in[47]; 
   _out[16] = 0.7071067811865475*_in[45]-1.224744871391589*_in[49]; 
  } 
} 

//    dir 3 
void ModalSerendipBasisSurf3DP4_Upper3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 2.121320343559642*_in[34]+1.870828693386971*_in[19]+1.58113883008419*_in[9]+1.224744871391589*_in[3]+0.7071067811865475*_in[0]; 
   _out[1] = 2.121320343559642*_in[45]+1.870828693386971*_in[30]+1.58113883008419*_in[15]+1.224744871391589*_in[5]+0.7071067811865475*_in[1]; 
   _out[2] = 2.121320343559642*_in[46]+1.870828693386971*_in[31]+1.58113883008419*_in[16]+1.224744871391589*_in[6]+0.7071067811865475*_in[2]; 
   _out[3] = 2.121320343559642*_in[49]+1.870828693386971*_in[40]+1.58113883008419*_in[22]+1.224744871391589*_in[10]+0.7071067811865475*_in[4]; 
   _out[4] = 1.58113883008419*_in[24]+1.224744871391589*_in[13]+0.7071067811865475*_in[7]; 
   _out[5] = 1.58113883008419*_in[25]+1.224744871391589*_in[14]+0.7071067811865475*_in[8]; 
   _out[6] = 1.58113883008419*_in[36]+1.224744871391589*_in[20]+0.7071067811865475*_in[11]; 
   _out[7] = 1.58113883008419*_in[37]+1.224744871391589*_in[21]+0.7071067811865475*_in[12]; 
   _out[8] = 1.224744871391589*_in[28]+0.7071067811865475*_in[17]; 
   _out[9] = 1.224744871391589*_in[29]+0.7071067811865475*_in[18]; 
   _out[10] = 1.224744871391589*_in[35]+0.7071067811865475*_in[23]; 
   _out[11] = 1.224744871391589*_in[38]+0.7071067811865475*_in[26]; 
   _out[12] = 1.224744871391589*_in[39]+0.7071067811865475*_in[27]; 
   _out[13] = 1.224744871391589*_in[43]+0.7071067811865475*_in[32]; 
   _out[14] = 1.224744871391589*_in[44]+0.7071067811865475*_in[33]; 
   _out[15] = 1.224744871391589*_in[47]+0.7071067811865475*_in[41]; 
   _out[16] = 1.224744871391589*_in[48]+0.7071067811865475*_in[42]; 
  } 
} 
void ModalSerendipBasisSurf3DP4_Lower3(int meqn, int mbasis, int msurf, const double *volIn, double *surfOut) 
{ 
  for (unsigned m=0; m<meqn; ++m) 
  { 
  double *_out = &surfOut[msurf*m]; 
  const double *_in = &volIn[mbasis*m]; 
   _out[0] = 2.121320343559642*_in[34]-1.870828693386971*_in[19]+1.58113883008419*_in[9]-1.224744871391589*_in[3]+0.7071067811865475*_in[0]; 
   _out[1] = 2.121320343559642*_in[45]-1.870828693386971*_in[30]+1.58113883008419*_in[15]-1.224744871391589*_in[5]+0.7071067811865475*_in[1]; 
   _out[2] = 2.121320343559642*_in[46]-1.870828693386971*_in[31]+1.58113883008419*_in[16]-1.224744871391589*_in[6]+0.7071067811865475*_in[2]; 
   _out[3] = 2.121320343559642*_in[49]-1.870828693386971*_in[40]+1.58113883008419*_in[22]-1.224744871391589*_in[10]+0.7071067811865475*_in[4]; 
   _out[4] = 1.58113883008419*_in[24]-1.224744871391589*_in[13]+0.7071067811865475*_in[7]; 
   _out[5] = 1.58113883008419*_in[25]-1.224744871391589*_in[14]+0.7071067811865475*_in[8]; 
   _out[6] = 1.58113883008419*_in[36]-1.224744871391589*_in[20]+0.7071067811865475*_in[11]; 
   _out[7] = 1.58113883008419*_in[37]-1.224744871391589*_in[21]+0.7071067811865475*_in[12]; 
   _out[8] = 0.7071067811865475*_in[17]-1.224744871391589*_in[28]; 
   _out[9] = 0.7071067811865475*_in[18]-1.224744871391589*_in[29]; 
   _out[10] = 0.7071067811865475*_in[23]-1.224744871391589*_in[35]; 
   _out[11] = 0.7071067811865475*_in[26]-1.224744871391589*_in[38]; 
   _out[12] = 0.7071067811865475*_in[27]-1.224744871391589*_in[39]; 
   _out[13] = 0.7071067811865475*_in[32]-1.224744871391589*_in[43]; 
   _out[14] = 0.7071067811865475*_in[33]-1.224744871391589*_in[44]; 
   _out[15] = 0.7071067811865475*_in[41]-1.224744871391589*_in[47]; 
   _out[16] = 0.7071067811865475*_in[42]-1.224744871391589*_in[48]; 
  } 
} 


