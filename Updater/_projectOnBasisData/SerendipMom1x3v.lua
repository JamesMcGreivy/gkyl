local _M = { numDensity = {}, momentum = {} } 
 
_M.numDensity[1] = function (f, out, dv, w) 
   out[1] = 2.828427124746191*f[1] 
   out[2] = 2.828427124746191*f[2] 
end 
_M.numDensity[2] = function (f, out, dv, w) 
   out[1] = 2.828427124746191*f[1] 
   out[2] = 2.828427124746191*f[2] 
   out[3] = 2.828427124746191*f[12] 
end 
_M.numDensity[3] = function (f, out, dv, w) 
   out[1] = 2.828427124746191*f[1] 
   out[2] = 2.828427124746191*f[2] 
   out[3] = 2.828427124746191*f[12] 
   out[4] = 2.828427124746191*f[32] 
end 
_M.numDensity[4] = function (f, out, dv, w) 
   out[1] = 2.828427124746191*f[1] 
   out[2] = 2.828427124746191*f[2] 
   out[3] = 2.828427124746191*f[12] 
   out[4] = 2.828427124746191*f[32] 
   out[5] = 2.828427124746191*f[67] 
end 

 
_M.momentum[1] = function (f, out, dv, w) 
   local dv1, dv2, dv3 = dv[1], dv[2], dv[3] 
   local w1, w2, w3 = w[1], w[2], w[3] 
   out[1] = 2.828427124746191*f[1]*w1+0.8164965809277261*f[3]*dv1 
   out[2] = 2.828427124746191*f[2]*w1+0.8164965809277261*f[6]*dv1 
   out[3] = 2.828427124746191*f[1]*w2+0.8164965809277261*f[4]*dv2 
   out[4] = 2.828427124746191*f[2]*w2+0.8164965809277261*f[7]*dv2 
   out[5] = 2.828427124746191*f[1]*w3+0.8164965809277261*f[5]*dv3 
   out[6] = 2.828427124746191*f[2]*w3+0.8164965809277261*f[9]*dv3 
end 
_M.momentum[2] = function (f, out, dv, w) 
   local dv1, dv2, dv3 = dv[1], dv[2], dv[3] 
   local w1, w2, w3 = w[1], w[2], w[3] 
   out[1] = 2.828427124746191*f[1]*w1+0.8164965809277261*f[3]*dv1 
   out[2] = 2.828427124746191*f[2]*w1+0.8164965809277261*f[6]*dv1 
   out[3] = 2.828427124746191*f[12]*w1+0.8164965809277261*f[20]*dv1 
   out[4] = 2.828427124746191*f[1]*w2+0.8164965809277261*f[4]*dv2 
   out[5] = 2.828427124746191*f[2]*w2+0.8164965809277261*f[7]*dv2 
   out[6] = 2.828427124746191*f[12]*w2+0.8164965809277261*f[22]*dv2 
   out[7] = 2.828427124746191*f[1]*w3+0.8164965809277261*f[5]*dv3 
   out[8] = 2.828427124746191*f[2]*w3+0.8164965809277261*f[9]*dv3 
   out[9] = 2.828427124746191*f[12]*w3+0.8164965809277261*f[26]*dv3 
end 
_M.momentum[3] = function (f, out, dv, w) 
   local dv1, dv2, dv3 = dv[1], dv[2], dv[3] 
   local w1, w2, w3 = w[1], w[2], w[3] 
   out[1] = 2.828427124746191*f[1]*w1+0.8164965809277261*f[3]*dv1 
   out[2] = 2.828427124746191*f[2]*w1+0.8164965809277261*f[6]*dv1 
   out[3] = 2.828427124746191*f[12]*w1+0.8164965809277261*f[20]*dv1 
   out[4] = 2.828427124746191*f[32]*w1+0.8164965809277261*f[49]*dv1 
   out[5] = 2.828427124746191*f[1]*w2+0.8164965809277261*f[4]*dv2 
   out[6] = 2.828427124746191*f[2]*w2+0.8164965809277261*f[7]*dv2 
   out[7] = 2.828427124746191*f[12]*w2+0.8164965809277261*f[22]*dv2 
   out[8] = 2.828427124746191*f[32]*w2+0.8164965809277261*f[51]*dv2 
   out[9] = 2.828427124746191*f[1]*w3+0.8164965809277261*f[5]*dv3 
   out[10] = 2.828427124746191*f[2]*w3+0.8164965809277261*f[9]*dv3 
   out[11] = 2.828427124746191*f[12]*w3+0.8164965809277261*f[26]*dv3 
   out[12] = 2.828427124746191*f[32]*w3+0.8164965809277261*f[55]*dv3 
end 
_M.momentum[4] = function (f, out, dv, w) 
   local dv1, dv2, dv3 = dv[1], dv[2], dv[3] 
   local w1, w2, w3 = w[1], w[2], w[3] 
   out[1] = 2.828427124746191*f[1]*w1+0.8164965809277261*f[3]*dv1 
   out[2] = 2.828427124746191*f[2]*w1+0.8164965809277261*f[6]*dv1 
   out[3] = 2.828427124746191*f[12]*w1+0.8164965809277261*f[20]*dv1 
   out[4] = 2.828427124746191*f[32]*w1+0.8164965809277261*f[55]*dv1 
   out[5] = 2.828427124746191*f[67]*w1+0.8164965809277261*f[99]*dv1 
   out[6] = 2.828427124746191*f[1]*w2+0.8164965809277261*f[4]*dv2 
   out[7] = 2.828427124746191*f[2]*w2+0.8164965809277261*f[7]*dv2 
   out[8] = 2.828427124746191*f[12]*w2+0.8164965809277261*f[22]*dv2 
   out[9] = 2.828427124746191*f[32]*w2+0.8164965809277261*f[57]*dv2 
   out[10] = 2.828427124746191*f[67]*w2+0.8164965809277261*f[101]*dv2 
   out[11] = 2.828427124746191*f[1]*w3+0.8164965809277261*f[5]*dv3 
   out[12] = 2.828427124746191*f[2]*w3+0.8164965809277261*f[9]*dv3 
   out[13] = 2.828427124746191*f[12]*w3+0.8164965809277261*f[26]*dv3 
   out[14] = 2.828427124746191*f[32]*w3+0.8164965809277261*f[61]*dv3 
   out[15] = 2.828427124746191*f[67]*w3+0.8164965809277261*f[105]*dv3 
end 
return _M 
