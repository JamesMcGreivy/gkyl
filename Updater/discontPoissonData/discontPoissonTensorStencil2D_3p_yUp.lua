local Lin = require "Lib.Linalg"
local function stencilFn(dx, a, b, val)
  local _M = {}

  _M[1] = Lin.Mat(16,16)
  _M[1][1][1] = (2625.0*b-130.0*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][1][2] = 0.0
  _M[1][1][3] = (3715.248982235241*b-232.0948082142295*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][1][4] = 0.0
  _M[1][1][5] = 0.0
  _M[1][1][6] = (2985.15074996222*b-272.8002932549743*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][1][7] = 0.0
  _M[1][1][8] = 0.0
  _M[1][1][9] = 0.0
  _M[1][1][10] = (9167.528292838808*b-1317.584152910166*a)/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[1][1][11] = 0.0
  _M[1][1][12] = 0.0
  _M[1][1][13] = 0.0
  _M[1][1][14] = 0.0
  _M[1][1][15] = 0.0
  _M[1][1][16] = 0.0
  _M[1][2][1] = 0.0
  _M[1][2][2] = (2625.0*b-130.0*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][2][3] = 0.0
  _M[1][2][4] = (11145.74694670572*b-696.2844246426886*a)/(1440.0*dx[2]^2*b+96.0*dx[2]^2*a)
  _M[1][2][5] = 0.0
  _M[1][2][6] = 0.0
  _M[1][2][7] = 0.0
  _M[1][2][8] = (8955.452249886657*b-818.400879764923*a)/(1440.0*dx[2]^2*b+96.0*dx[2]^2*a)
  _M[1][2][9] = 0.0
  _M[1][2][10] = 0.0
  _M[1][2][11] = 0.0
  _M[1][2][12] = 0.0
  _M[1][2][13] = (27502.58487851641*b-3952.752458730498*a)/(10080.0*dx[2]^2*b+672.0*dx[2]^2*a)
  _M[1][2][14] = 0.0
  _M[1][2][15] = 0.0
  _M[1][2][16] = 0.0
  _M[1][3][1] = -(1.0*(2121.762239271874*b+387.9793808954285*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][3][2] = 0.0
  _M[1][3][3] = -(1.0*(3003.0*b+588.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][3][4] = 0.0
  _M[1][3][5] = 0.0
  _M[1][3][6] = -(1.0*(2412.86862468722*b+542.2176684690385*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][3][7] = 0.0
  _M[1][3][8] = 0.0
  _M[1][3][9] = 0.0
  _M[1][3][10] = -(1.0*(1058.574985534799*b+293.2848444771737*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][3][11] = 0.0
  _M[1][3][12] = 0.0
  _M[1][3][13] = 0.0
  _M[1][3][14] = 0.0
  _M[1][3][15] = 0.0
  _M[1][3][16] = 0.0
  _M[1][4][1] = 0.0
  _M[1][4][2] = -(1.0*(2121.762239271874*b+387.9793808954285*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][4][3] = 0.0
  _M[1][4][4] = -(1.0*(3003.0*b+588.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][4][5] = 0.0
  _M[1][4][6] = 0.0
  _M[1][4][7] = 0.0
  _M[1][4][8] = -(1.0*(2412.868624687221*b+542.2176684690384*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][4][9] = 0.0
  _M[1][4][10] = 0.0
  _M[1][4][11] = 0.0
  _M[1][4][12] = 0.0
  _M[1][4][13] = -(1.0*(1058.574985534799*b+293.2848444771737*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][4][14] = 0.0
  _M[1][4][15] = 0.0
  _M[1][4][16] = 0.0
  _M[1][5][1] = 0.0
  _M[1][5][2] = 0.0
  _M[1][5][3] = 0.0
  _M[1][5][4] = 0.0
  _M[1][5][5] = (2625.0*b-130.0*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][5][6] = 0.0
  _M[1][5][7] = (18576.24491117621*b-1160.474041071148*a)/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[1][5][8] = 0.0
  _M[1][5][9] = 0.0
  _M[1][5][10] = 0.0
  _M[1][5][11] = (14925.7537498111*b-1364.001466274872*a)/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[1][5][12] = 0.0
  _M[1][5][13] = 0.0
  _M[1][5][14] = 0.0
  _M[1][5][15] = (45837.64146419404*b-6587.92076455083*a)/(16800.0*dx[2]^2*b+1120.0*dx[2]^2*a)
  _M[1][5][16] = 0.0
  _M[1][6][1] = (301.8691769624717*b-252.6756814574763*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][6][2] = 0.0
  _M[1][6][3] = (104.5705503476002*b-422.1551847366085*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][6][4] = 0.0
  _M[1][6][5] = 0.0
  _M[1][6][6] = -(1.0*(495.0*b+455.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][6][7] = 0.0
  _M[1][6][8] = 0.0
  _M[1][6][9] = 0.0
  _M[1][6][10] = -(1.0*(4738.779906262793*b+2041.047525169368*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[1][6][11] = 0.0
  _M[1][6][12] = 0.0
  _M[1][6][13] = 0.0
  _M[1][6][14] = 0.0
  _M[1][6][15] = 0.0
  _M[1][6][16] = 0.0
  _M[1][7][1] = 0.0
  _M[1][7][2] = 0.0
  _M[1][7][3] = 0.0
  _M[1][7][4] = 0.0
  _M[1][7][5] = -(1.0*(10608.81119635938*b+1939.896904477143*a))/(1200.0*dx[2]^2*b+80.0*dx[2]^2*a)
  _M[1][7][6] = 0.0
  _M[1][7][7] = -(1.0*(3003.0*b+588.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][7][8] = 0.0
  _M[1][7][9] = 0.0
  _M[1][7][10] = 0.0
  _M[1][7][11] = -(1.0*(2412.868624687221*b+542.2176684690384*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][7][12] = 0.0
  _M[1][7][13] = 0.0
  _M[1][7][14] = 0.0
  _M[1][7][15] = -(1.0*(5292.874927673995*b+1466.424222385869*a))/(1200.0*dx[2]^2*b+80.0*dx[2]^2*a)
  _M[1][7][16] = 0.0
  _M[1][8][1] = 0.0
  _M[1][8][2] = (905.6075308874147*b-758.0270443724287*a)/(720.0*dx[2]^2*b+48.0*dx[2]^2*a)
  _M[1][8][3] = 0.0
  _M[1][8][4] = (104.5705503476003*b-422.1551847366085*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][8][5] = 0.0
  _M[1][8][6] = 0.0
  _M[1][8][7] = 0.0
  _M[1][8][8] = -(1.0*(495.0*b+455.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][8][9] = 0.0
  _M[1][8][10] = 0.0
  _M[1][8][11] = 0.0
  _M[1][8][12] = 0.0
  _M[1][8][13] = -(1.0*(14216.33971878838*b+6123.142575508103*a))/(5040.0*dx[2]^2*b+336.0*dx[2]^2*a)
  _M[1][8][14] = 0.0
  _M[1][8][15] = 0.0
  _M[1][8][16] = 0.0
  _M[1][9][1] = 0.0
  _M[1][9][2] = 0.0
  _M[1][9][3] = 0.0
  _M[1][9][4] = 0.0
  _M[1][9][5] = 0.0
  _M[1][9][6] = 0.0
  _M[1][9][7] = 0.0
  _M[1][9][8] = 0.0
  _M[1][9][9] = (2625.0*b-130.0*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][9][10] = 0.0
  _M[1][9][11] = 0.0
  _M[1][9][12] = (26006.74287564669*b-1624.663657499607*a)/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[1][9][13] = 0.0
  _M[1][9][14] = (20896.05524973553*b-1909.60205278482*a)/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[1][9][15] = 0.0
  _M[1][9][16] = (9167.528292838808*b-1317.584152910166*a)/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[1][10][1] = -(1.0*(4167.05831492673*b+761.9763775866021*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][10][2] = 0.0
  _M[1][10][3] = -(1.0*(5897.774919408165*b+1154.809075128872*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][10][4] = 0.0
  _M[1][10][5] = 0.0
  _M[1][10][6] = -(1.0*(4738.779906262793*b+1064.894360957931*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][10][7] = 0.0
  _M[1][10][8] = 0.0
  _M[1][10][9] = 0.0
  _M[1][10][10] = -(1.0*(2079.0*b+576.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][10][11] = 0.0
  _M[1][10][12] = 0.0
  _M[1][10][13] = 0.0
  _M[1][10][14] = 0.0
  _M[1][10][15] = 0.0
  _M[1][10][16] = 0.0
  _M[1][11][1] = 0.0
  _M[1][11][2] = 0.0
  _M[1][11][3] = 0.0
  _M[1][11][4] = 0.0
  _M[1][11][5] = (301.8691769624717*b-252.6756814574763*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][11][6] = 0.0
  _M[1][11][7] = (104.5705503476003*b-422.1551847366085*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][11][8] = 0.0
  _M[1][11][9] = 0.0
  _M[1][11][10] = 0.0
  _M[1][11][11] = -(1.0*(495.0*b+455.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][11][12] = 0.0
  _M[1][11][13] = 0.0
  _M[1][11][14] = 0.0
  _M[1][11][15] = -(1.0*(4738.779906262793*b+2041.047525169368*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[1][11][16] = 0.0
  _M[1][12][1] = 0.0
  _M[1][12][2] = 0.0
  _M[1][12][3] = 0.0
  _M[1][12][4] = 0.0
  _M[1][12][5] = 0.0
  _M[1][12][6] = 0.0
  _M[1][12][7] = 0.0
  _M[1][12][8] = 0.0
  _M[1][12][9] = -(1.0*(2121.762239271875*b+387.9793808954285*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][12][10] = 0.0
  _M[1][12][11] = 0.0
  _M[1][12][12] = -(1.0*(3003.0*b+588.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][12][13] = 0.0
  _M[1][12][14] = -(1.0*(2412.868624687221*b+542.2176684690384*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][12][15] = 0.0
  _M[1][12][16] = -(1.0*(1058.574985534799*b+293.2848444771737*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][13][1] = 0.0
  _M[1][13][2] = -(1.0*(4167.05831492673*b+761.976377586602*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][13][3] = 0.0
  _M[1][13][4] = -(1.0*(5897.774919408166*b+1154.809075128872*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][13][5] = 0.0
  _M[1][13][6] = 0.0
  _M[1][13][7] = 0.0
  _M[1][13][8] = -(1.0*(4738.779906262793*b+1064.894360957931*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][13][9] = 0.0
  _M[1][13][10] = 0.0
  _M[1][13][11] = 0.0
  _M[1][13][12] = 0.0
  _M[1][13][13] = -(1.0*(2079.0*b+576.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][13][14] = 0.0
  _M[1][13][15] = 0.0
  _M[1][13][16] = 0.0
  _M[1][14][1] = 0.0
  _M[1][14][2] = 0.0
  _M[1][14][3] = 0.0
  _M[1][14][4] = 0.0
  _M[1][14][5] = 0.0
  _M[1][14][6] = 0.0
  _M[1][14][7] = 0.0
  _M[1][14][8] = 0.0
  _M[1][14][9] = (2113.084238737301*b-1768.729770202334*a)/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[1][14][10] = 0.0
  _M[1][14][11] = 0.0
  _M[1][14][12] = (731.9938524332017*b-2955.086293156259*a)/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[1][14][13] = 0.0
  _M[1][14][14] = -(1.0*(495.0*b+455.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[1][14][15] = 0.0
  _M[1][14][16] = -(1.0*(4738.779906262793*b+2041.047525169368*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[1][15][1] = 0.0
  _M[1][15][2] = 0.0
  _M[1][15][3] = 0.0
  _M[1][15][4] = 0.0
  _M[1][15][5] = -(1.0*(20835.29157463366*b+3809.88188793301*a))/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[1][15][6] = 0.0
  _M[1][15][7] = -(1.0*(29488.87459704083*b+5774.04537564436*a))/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[1][15][8] = 0.0
  _M[1][15][9] = 0.0
  _M[1][15][10] = 0.0
  _M[1][15][11] = -(1.0*(4738.779906262793*b+1064.894360957931*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][15][12] = 0.0
  _M[1][15][13] = 0.0
  _M[1][15][14] = 0.0
  _M[1][15][15] = -(1.0*(2079.0*b+576.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][15][16] = 0.0
  _M[1][16][1] = 0.0
  _M[1][16][2] = 0.0
  _M[1][16][3] = 0.0
  _M[1][16][4] = 0.0
  _M[1][16][5] = 0.0
  _M[1][16][6] = 0.0
  _M[1][16][7] = 0.0
  _M[1][16][8] = 0.0
  _M[1][16][9] = -(1.0*(4167.05831492673*b+761.9763775866021*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][16][10] = 0.0
  _M[1][16][11] = 0.0
  _M[1][16][12] = -(1.0*(5897.774919408166*b+1154.809075128872*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][16][13] = 0.0
  _M[1][16][14] = -(1.0*(4738.779906262793*b+1064.894360957931*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[1][16][15] = 0.0
  _M[1][16][16] = -(1.0*(2079.0*b+576.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2] = Lin.Mat(16,16)
  _M[2][1][1] = -(1.0*(2625.0*b+830.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][1][2] = 0.0
  _M[2][1][3] = (3715.248982235241*b-1881.0071770198*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][1][4] = 0.0
  _M[2][1][5] = 0.0
  _M[2][1][6] = -(1.0*(2985.15074996222*b+1068.8404932449*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][1][7] = 0.0
  _M[2][1][8] = 0.0
  _M[2][1][9] = 0.0
  _M[2][1][10] = (9167.528292838808*b-17573.08020809101*a)/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[2][1][11] = 0.0
  _M[2][1][12] = 0.0
  _M[2][1][13] = 0.0
  _M[2][1][14] = 0.0
  _M[2][1][15] = 0.0
  _M[2][1][16] = 0.0
  _M[2][2][1] = 0.0
  _M[2][2][2] = -(1.0*(2625.0*b+830.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][2][3] = 0.0
  _M[2][2][4] = (11145.74694670572*b-5643.021531059401*a)/(1440.0*dx[2]^2*b+96.0*dx[2]^2*a)
  _M[2][2][5] = 0.0
  _M[2][2][6] = 0.0
  _M[2][2][7] = 0.0
  _M[2][2][8] = -(1.0*(8955.452249886657*b+3206.521479734698*a))/(1440.0*dx[2]^2*b+96.0*dx[2]^2*a)
  _M[2][2][9] = 0.0
  _M[2][2][10] = 0.0
  _M[2][2][11] = 0.0
  _M[2][2][12] = 0.0
  _M[2][2][13] = (27502.58487851641*b-52719.24062427301*a)/(10080.0*dx[2]^2*b+672.0*dx[2]^2*a)
  _M[2][2][14] = 0.0
  _M[2][2][15] = 0.0
  _M[2][2][16] = 0.0
  _M[2][3][1] = (2121.762239271874*b-387.9793808954285*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][3][2] = 0.0
  _M[2][3][3] = -(1.0*(5691.0*b+2100.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][3][4] = 0.0
  _M[2][3][5] = 0.0
  _M[2][3][6] = (2412.86862468722*b-542.2176684690385*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][3][7] = 0.0
  _M[2][3][8] = 0.0
  _M[2][3][9] = 0.0
  _M[2][3][10] = -(1.0*(3698.138585829362*b+2346.27875581739*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][3][11] = 0.0
  _M[2][3][12] = 0.0
  _M[2][3][13] = 0.0
  _M[2][3][14] = 0.0
  _M[2][3][15] = 0.0
  _M[2][3][16] = 0.0
  _M[2][4][1] = 0.0
  _M[2][4][2] = (2121.762239271874*b-387.9793808954285*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][4][3] = 0.0
  _M[2][4][4] = -(1.0*(5691.0*b+2100.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][4][5] = 0.0
  _M[2][4][6] = 0.0
  _M[2][4][7] = 0.0
  _M[2][4][8] = (2412.868624687221*b-542.2176684690384*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][4][9] = 0.0
  _M[2][4][10] = 0.0
  _M[2][4][11] = 0.0
  _M[2][4][12] = 0.0
  _M[2][4][13] = -(1.0*(3698.138585829363*b+2346.27875581739*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][4][14] = 0.0
  _M[2][4][15] = 0.0
  _M[2][4][16] = 0.0
  _M[2][5][1] = 0.0
  _M[2][5][2] = 0.0
  _M[2][5][3] = 0.0
  _M[2][5][4] = 0.0
  _M[2][5][5] = -(1.0*(2625.0*b+830.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][5][6] = 0.0
  _M[2][5][7] = (18576.24491117621*b-9405.035885099003*a)/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[2][5][8] = 0.0
  _M[2][5][9] = 0.0
  _M[2][5][10] = 0.0
  _M[2][5][11] = -(1.0*(14925.7537498111*b+5344.202466224498*a))/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[2][5][12] = 0.0
  _M[2][5][13] = 0.0
  _M[2][5][14] = 0.0
  _M[2][5][15] = (45837.64146419404*b-87865.40104045506*a)/(16800.0*dx[2]^2*b+1120.0*dx[2]^2*a)
  _M[2][5][16] = 0.0
  _M[2][6][1] = -(1.0*(301.8691769624717*b+605.974421902443*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][6][2] = 0.0
  _M[2][6][3] = -(1.0*(546.0906518152458*b+1940.364656449916*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][6][4] = 0.0
  _M[2][6][5] = 0.0
  _M[2][6][6] = -(1.0*(8505.0*b+1345.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][6][7] = 0.0
  _M[2][6][8] = 0.0
  _M[2][6][9] = 0.0
  _M[2][6][10] = -(1.0*(42223.06141198197*b+19079.35730049627*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[2][6][11] = 0.0
  _M[2][6][12] = 0.0
  _M[2][6][13] = 0.0
  _M[2][6][14] = 0.0
  _M[2][6][15] = 0.0
  _M[2][6][16] = 0.0
  _M[2][7][1] = 0.0
  _M[2][7][2] = 0.0
  _M[2][7][3] = 0.0
  _M[2][7][4] = 0.0
  _M[2][7][5] = (10608.81119635938*b-1939.896904477143*a)/(1200.0*dx[2]^2*b+80.0*dx[2]^2*a)
  _M[2][7][6] = 0.0
  _M[2][7][7] = -(1.0*(5691.0*b+2100.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][7][8] = 0.0
  _M[2][7][9] = 0.0
  _M[2][7][10] = 0.0
  _M[2][7][11] = (2412.868624687221*b-542.2176684690384*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][7][12] = 0.0
  _M[2][7][13] = 0.0
  _M[2][7][14] = 0.0
  _M[2][7][15] = -(1.0*(18490.69292914682*b+11731.39377908695*a))/(1200.0*dx[2]^2*b+80.0*dx[2]^2*a)
  _M[2][7][16] = 0.0
  _M[2][8][1] = 0.0
  _M[2][8][2] = -(1.0*(905.6075308874147*b+1817.923265707329*a))/(720.0*dx[2]^2*b+48.0*dx[2]^2*a)
  _M[2][8][3] = 0.0
  _M[2][8][4] = -(1.0*(546.0906518152458*b+1940.364656449916*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][8][5] = 0.0
  _M[2][8][6] = 0.0
  _M[2][8][7] = 0.0
  _M[2][8][8] = -(1.0*(8505.0*b+1345.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][8][9] = 0.0
  _M[2][8][10] = 0.0
  _M[2][8][11] = 0.0
  _M[2][8][12] = 0.0
  _M[2][8][13] = -(1.0*(126669.1842359459*b+57238.07190148879*a))/(5040.0*dx[2]^2*b+336.0*dx[2]^2*a)
  _M[2][8][14] = 0.0
  _M[2][8][15] = 0.0
  _M[2][8][16] = 0.0
  _M[2][9][1] = 0.0
  _M[2][9][2] = 0.0
  _M[2][9][3] = 0.0
  _M[2][9][4] = 0.0
  _M[2][9][5] = 0.0
  _M[2][9][6] = 0.0
  _M[2][9][7] = 0.0
  _M[2][9][8] = 0.0
  _M[2][9][9] = -(1.0*(2625.0*b+830.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][9][10] = 0.0
  _M[2][9][11] = 0.0
  _M[2][9][12] = (26006.74287564669*b-13167.0502391386*a)/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[2][9][13] = 0.0
  _M[2][9][14] = -(1.0*(20896.05524973553*b+7481.883452714296*a))/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[2][9][15] = 0.0
  _M[2][9][16] = (9167.528292838808*b-17573.08020809101*a)/(3360.0*dx[2]^2*b+224.0*dx[2]^2*a)
  _M[2][10][1] = (4167.05831492673*b-761.9763775866021*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][10][2] = 0.0
  _M[2][10][3] = -(1.0*(11176.90211999729*b+4124.318125460255*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][10][4] = 0.0
  _M[2][10][5] = 0.0
  _M[2][10][6] = (4738.779906262793*b-1064.894360957931*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][10][7] = 0.0
  _M[2][10][8] = 0.0
  _M[2][10][9] = 0.0
  _M[2][10][10] = -(1.0*(50463.0*b+7488.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][10][11] = 0.0
  _M[2][10][12] = 0.0
  _M[2][10][13] = 0.0
  _M[2][10][14] = 0.0
  _M[2][10][15] = 0.0
  _M[2][10][16] = 0.0
  _M[2][11][1] = 0.0
  _M[2][11][2] = 0.0
  _M[2][11][3] = 0.0
  _M[2][11][4] = 0.0
  _M[2][11][5] = -(1.0*(301.8691769624717*b+605.974421902443*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][11][6] = 0.0
  _M[2][11][7] = -(1.0*(546.0906518152458*b+1940.364656449916*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][11][8] = 0.0
  _M[2][11][9] = 0.0
  _M[2][11][10] = 0.0
  _M[2][11][11] = -(1.0*(8505.0*b+1345.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][11][12] = 0.0
  _M[2][11][13] = 0.0
  _M[2][11][14] = 0.0
  _M[2][11][15] = -(1.0*(42223.06141198196*b+19079.35730049626*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[2][11][16] = 0.0
  _M[2][12][1] = 0.0
  _M[2][12][2] = 0.0
  _M[2][12][3] = 0.0
  _M[2][12][4] = 0.0
  _M[2][12][5] = 0.0
  _M[2][12][6] = 0.0
  _M[2][12][7] = 0.0
  _M[2][12][8] = 0.0
  _M[2][12][9] = (2121.762239271875*b-387.9793808954285*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][12][10] = 0.0
  _M[2][12][11] = 0.0
  _M[2][12][12] = -(1.0*(5691.0*b+2100.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][12][13] = 0.0
  _M[2][12][14] = (2412.868624687221*b-542.2176684690384*a)/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][12][15] = 0.0
  _M[2][12][16] = -(1.0*(3698.138585829363*b+2346.27875581739*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][13][1] = 0.0
  _M[2][13][2] = (4167.05831492673*b-761.976377586602*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][13][3] = 0.0
  _M[2][13][4] = -(1.0*(11176.90211999729*b+4124.318125460256*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][13][5] = 0.0
  _M[2][13][6] = 0.0
  _M[2][13][7] = 0.0
  _M[2][13][8] = (4738.779906262793*b-1064.894360957931*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][13][9] = 0.0
  _M[2][13][10] = 0.0
  _M[2][13][11] = 0.0
  _M[2][13][12] = 0.0
  _M[2][13][13] = -(1.0*(50463.0*b+7488.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][13][14] = 0.0
  _M[2][13][15] = 0.0
  _M[2][13][16] = 0.0
  _M[2][14][1] = 0.0
  _M[2][14][2] = 0.0
  _M[2][14][3] = 0.0
  _M[2][14][4] = 0.0
  _M[2][14][5] = 0.0
  _M[2][14][6] = 0.0
  _M[2][14][7] = 0.0
  _M[2][14][8] = 0.0
  _M[2][14][9] = -(1.0*(2113.084238737301*b+4241.820953317101*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[2][14][10] = 0.0
  _M[2][14][11] = 0.0
  _M[2][14][12] = -(1.0*(3822.634562706721*b+13582.55259514941*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[2][14][13] = 0.0
  _M[2][14][14] = -(1.0*(8505.0*b+1345.0*a))/(240.0*dx[2]^2*b+16.0*dx[2]^2*a)
  _M[2][14][15] = 0.0
  _M[2][14][16] = -(1.0*(42223.06141198196*b+19079.35730049626*a))/(1680.0*dx[2]^2*b+112.0*dx[2]^2*a)
  _M[2][15][1] = 0.0
  _M[2][15][2] = 0.0
  _M[2][15][3] = 0.0
  _M[2][15][4] = 0.0
  _M[2][15][5] = (20835.29157463366*b-3809.88188793301*a)/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[2][15][6] = 0.0
  _M[2][15][7] = -(1.0*(55884.51059998648*b+20621.59062730129*a))/(2400.0*dx[2]^2*b+160.0*dx[2]^2*a)
  _M[2][15][8] = 0.0
  _M[2][15][9] = 0.0
  _M[2][15][10] = 0.0
  _M[2][15][11] = (4738.779906262793*b-1064.894360957931*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][15][12] = 0.0
  _M[2][15][13] = 0.0
  _M[2][15][14] = 0.0
  _M[2][15][15] = -(1.0*(50463.0*b+7488.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][15][16] = 0.0
  _M[2][16][1] = 0.0
  _M[2][16][2] = 0.0
  _M[2][16][3] = 0.0
  _M[2][16][4] = 0.0
  _M[2][16][5] = 0.0
  _M[2][16][6] = 0.0
  _M[2][16][7] = 0.0
  _M[2][16][8] = 0.0
  _M[2][16][9] = (4167.05831492673*b-761.9763775866021*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][16][10] = 0.0
  _M[2][16][11] = 0.0
  _M[2][16][12] = -(1.0*(11176.90211999729*b+4124.318125460256*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][16][13] = 0.0
  _M[2][16][14] = (4738.779906262793*b-1064.894360957931*a)/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[2][16][15] = 0.0
  _M[2][16][16] = -(1.0*(50463.0*b+7488.0*a))/(480.0*dx[2]^2*b+32.0*dx[2]^2*a)
  _M[3] = Lin.Vec(16)
  _M[3][1] = 60.0/(15.0*dx[2]^2*b+dx[2]^2*a)*val
  _M[3][2] = 0.0*val
  _M[3][3] = 96.99484522385713/(15.0*dx[2]^2*b+dx[2]^2*a)*val
  _M[3][4] = 0.0*val
  _M[3][5] = 0.0*val
  _M[3][6] = 107.3312629199899/(15.0*dx[2]^2*b+dx[2]^2*a)*val
  _M[3][7] = 0.0*val
  _M[3][8] = 0.0*val
  _M[3][9] = 0.0*val
  _M[3][10] = 95.24704719832526/(15.0*dx[2]^2*b+dx[2]^2*a)*val
  _M[3][11] = 0.0*val
  _M[3][12] = 0.0*val
  _M[3][13] = 0.0*val
  _M[3][14] = 0.0*val
  _M[3][15] = 0.0*val
  _M[3][16] = 0.0*val
  return(_M)
end

return(stencilFn)