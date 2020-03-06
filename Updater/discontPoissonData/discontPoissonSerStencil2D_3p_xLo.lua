local Lin = require "Lib.Linalg"
local function stencilFn(dx, a, b, val)
  local _M = {}

  _M[1] = Lin.Vec(12)
  _M[1][1] = -60.0/(15.0*dx[1]^2*b-1.0*dx[1]^2*a)*val
  _M[1][2] = 96.99484522385713/(15.0*dx[1]^2*b-1.0*dx[1]^2*a)*val
  _M[1][3] = 0.0*val
  _M[1][4] = 0.0*val
  _M[1][5] = -107.3312629199899/(15.0*dx[1]^2*b-1.0*dx[1]^2*a)*val
  _M[1][6] = 0.0*val
  _M[1][7] = 0.0*val
  _M[1][8] = 0.0*val
  _M[1][9] = 95.24704719832526/(15.0*dx[1]^2*b-1.0*dx[1]^2*a)*val
  _M[1][10] = 0.0*val
  _M[1][11] = 0.0*val
  _M[1][12] = 0.0*val
  _M[2] = Lin.Mat(12,12)
  _M[2][1][1] = -(1.0*(2625.0*b-830.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][1][2] = -(1.0*(3715.248982235241*b+1881.0071770198*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][1][3] = 0.0
  _M[2][1][4] = 0.0
  _M[2][1][5] = -(1.0*(2985.15074996222*b-1068.8404932449*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][1][6] = 0.0
  _M[2][1][7] = 0.0
  _M[2][1][8] = 0.0
  _M[2][1][9] = -(1.0*(9167.528292838808*b+17573.08020809101*a))/(3360.0*dx[1]^2*b-224.0*dx[1]^2*a)
  _M[2][1][10] = 0.0
  _M[2][1][11] = 0.0
  _M[2][1][12] = 0.0
  _M[2][2][1] = -(1.0*(2121.762239271874*b+387.9793808954285*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][2][2] = -(1.0*(5691.0*b-2100.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][2][3] = 0.0
  _M[2][2][4] = 0.0
  _M[2][2][5] = -(1.0*(2412.86862468722*b+542.2176684690385*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][2][6] = 0.0
  _M[2][2][7] = 0.0
  _M[2][2][8] = 0.0
  _M[2][2][9] = -(1.0*(3698.138585829362*b-2346.27875581739*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][2][10] = 0.0
  _M[2][2][11] = 0.0
  _M[2][2][12] = 0.0
  _M[2][3][1] = 0.0
  _M[2][3][2] = 0.0
  _M[2][3][3] = -(1.0*(2625.0*b-830.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][3][4] = -(1.0*(11145.74694670572*b+5643.021531059401*a))/(1440.0*dx[1]^2*b-96.0*dx[1]^2*a)
  _M[2][3][5] = 0.0
  _M[2][3][6] = 0.0
  _M[2][3][7] = -(1.0*(8955.452249886657*b-3206.521479734698*a))/(1440.0*dx[1]^2*b-96.0*dx[1]^2*a)
  _M[2][3][8] = 0.0
  _M[2][3][9] = 0.0
  _M[2][3][10] = 0.0
  _M[2][3][11] = -(1.0*(27502.58487851641*b+52719.24062427301*a))/(10080.0*dx[1]^2*b-672.0*dx[1]^2*a)
  _M[2][3][12] = 0.0
  _M[2][4][1] = 0.0
  _M[2][4][2] = 0.0
  _M[2][4][3] = -(1.0*(2121.762239271874*b+387.9793808954285*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][4][4] = -(1.0*(5691.0*b-2100.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][4][5] = 0.0
  _M[2][4][6] = 0.0
  _M[2][4][7] = -(1.0*(2412.868624687221*b+542.2176684690384*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][4][8] = 0.0
  _M[2][4][9] = 0.0
  _M[2][4][10] = 0.0
  _M[2][4][11] = -(1.0*(3698.138585829363*b-2346.27875581739*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][4][12] = 0.0
  _M[2][5][1] = -(1.0*(301.8691769624717*b-605.974421902443*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][5][2] = (546.0906518152458*b-1940.364656449916*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][5][3] = 0.0
  _M[2][5][4] = 0.0
  _M[2][5][5] = -(1.0*(8505.0*b-1345.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][5][6] = 0.0
  _M[2][5][7] = 0.0
  _M[2][5][8] = 0.0
  _M[2][5][9] = (42223.06141198197*b-19079.35730049627*a)/(1680.0*dx[1]^2*b-112.0*dx[1]^2*a)
  _M[2][5][10] = 0.0
  _M[2][5][11] = 0.0
  _M[2][5][12] = 0.0
  _M[2][6][1] = 0.0
  _M[2][6][2] = 0.0
  _M[2][6][3] = 0.0
  _M[2][6][4] = 0.0
  _M[2][6][5] = 0.0
  _M[2][6][6] = -(1.0*(2625.0*b-830.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][6][7] = 0.0
  _M[2][6][8] = -(1.0*(18576.24491117621*b+9405.035885099003*a))/(2400.0*dx[1]^2*b-160.0*dx[1]^2*a)
  _M[2][6][9] = 0.0
  _M[2][6][10] = 0.0
  _M[2][6][11] = 0.0
  _M[2][6][12] = 0.0
  _M[2][7][1] = 0.0
  _M[2][7][2] = 0.0
  _M[2][7][3] = -(1.0*(905.6075308874147*b-1817.923265707329*a))/(720.0*dx[1]^2*b-48.0*dx[1]^2*a)
  _M[2][7][4] = (546.0906518152458*b-1940.364656449916*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][7][5] = 0.0
  _M[2][7][6] = 0.0
  _M[2][7][7] = -(1.0*(8505.0*b-1345.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][7][8] = 0.0
  _M[2][7][9] = 0.0
  _M[2][7][10] = 0.0
  _M[2][7][11] = (126669.1842359459*b-57238.07190148879*a)/(5040.0*dx[1]^2*b-336.0*dx[1]^2*a)
  _M[2][7][12] = 0.0
  _M[2][8][1] = 0.0
  _M[2][8][2] = 0.0
  _M[2][8][3] = 0.0
  _M[2][8][4] = 0.0
  _M[2][8][5] = 0.0
  _M[2][8][6] = -(1.0*(10608.81119635938*b+1939.896904477143*a))/(1200.0*dx[1]^2*b-80.0*dx[1]^2*a)
  _M[2][8][7] = 0.0
  _M[2][8][8] = -(1.0*(5691.0*b-2100.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][8][9] = 0.0
  _M[2][8][10] = 0.0
  _M[2][8][11] = 0.0
  _M[2][8][12] = 0.0
  _M[2][9][1] = -(1.0*(4167.05831492673*b+761.9763775866021*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][9][2] = -(1.0*(11176.90211999729*b-4124.318125460255*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][9][3] = 0.0
  _M[2][9][4] = 0.0
  _M[2][9][5] = -(1.0*(4738.779906262793*b+1064.894360957931*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][9][6] = 0.0
  _M[2][9][7] = 0.0
  _M[2][9][8] = 0.0
  _M[2][9][9] = -(1.0*(50463.0*b-7488.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][9][10] = 0.0
  _M[2][9][11] = 0.0
  _M[2][9][12] = 0.0
  _M[2][10][1] = 0.0
  _M[2][10][2] = 0.0
  _M[2][10][3] = 0.0
  _M[2][10][4] = 0.0
  _M[2][10][5] = 0.0
  _M[2][10][6] = 0.0
  _M[2][10][7] = 0.0
  _M[2][10][8] = 0.0
  _M[2][10][9] = 0.0
  _M[2][10][10] = -(1.0*(2625.0*b-830.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][10][11] = 0.0
  _M[2][10][12] = -(1.0*(26006.74287564669*b+13167.0502391386*a))/(3360.0*dx[1]^2*b-224.0*dx[1]^2*a)
  _M[2][11][1] = 0.0
  _M[2][11][2] = 0.0
  _M[2][11][3] = -(1.0*(4167.05831492673*b+761.976377586602*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][11][4] = -(1.0*(11176.90211999729*b-4124.318125460256*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][11][5] = 0.0
  _M[2][11][6] = 0.0
  _M[2][11][7] = -(1.0*(4738.779906262793*b+1064.894360957931*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][11][8] = 0.0
  _M[2][11][9] = 0.0
  _M[2][11][10] = 0.0
  _M[2][11][11] = -(1.0*(50463.0*b-7488.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[2][11][12] = 0.0
  _M[2][12][1] = 0.0
  _M[2][12][2] = 0.0
  _M[2][12][3] = 0.0
  _M[2][12][4] = 0.0
  _M[2][12][5] = 0.0
  _M[2][12][6] = 0.0
  _M[2][12][7] = 0.0
  _M[2][12][8] = 0.0
  _M[2][12][9] = 0.0
  _M[2][12][10] = -(1.0*(2121.762239271875*b+387.9793808954285*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[2][12][11] = 0.0
  _M[2][12][12] = -(1.0*(5691.0*b-2100.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3] = Lin.Mat(12,12)
  _M[3][1][1] = (2625.0*b+130.0*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][1][2] = -(1.0*(3715.248982235241*b+232.0948082142295*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][1][3] = 0.0
  _M[3][1][4] = 0.0
  _M[3][1][5] = (2985.15074996222*b+272.8002932549743*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][1][6] = 0.0
  _M[3][1][7] = 0.0
  _M[3][1][8] = 0.0
  _M[3][1][9] = -(1.0*(9167.528292838808*b+1317.584152910166*a))/(3360.0*dx[1]^2*b-224.0*dx[1]^2*a)
  _M[3][1][10] = 0.0
  _M[3][1][11] = 0.0
  _M[3][1][12] = 0.0
  _M[3][2][1] = (2121.762239271874*b-387.9793808954285*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][2][2] = -(1.0*(3003.0*b-588.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][2][3] = 0.0
  _M[3][2][4] = 0.0
  _M[3][2][5] = (2412.86862468722*b-542.2176684690385*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][2][6] = 0.0
  _M[3][2][7] = 0.0
  _M[3][2][8] = 0.0
  _M[3][2][9] = -(1.0*(1058.574985534799*b-293.2848444771737*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][2][10] = 0.0
  _M[3][2][11] = 0.0
  _M[3][2][12] = 0.0
  _M[3][3][1] = 0.0
  _M[3][3][2] = 0.0
  _M[3][3][3] = (2625.0*b+130.0*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][3][4] = -(1.0*(11145.74694670572*b+696.2844246426886*a))/(1440.0*dx[1]^2*b-96.0*dx[1]^2*a)
  _M[3][3][5] = 0.0
  _M[3][3][6] = 0.0
  _M[3][3][7] = (8955.452249886657*b+818.400879764923*a)/(1440.0*dx[1]^2*b-96.0*dx[1]^2*a)
  _M[3][3][8] = 0.0
  _M[3][3][9] = 0.0
  _M[3][3][10] = 0.0
  _M[3][3][11] = -(1.0*(27502.58487851641*b+3952.752458730498*a))/(10080.0*dx[1]^2*b-672.0*dx[1]^2*a)
  _M[3][3][12] = 0.0
  _M[3][4][1] = 0.0
  _M[3][4][2] = 0.0
  _M[3][4][3] = (2121.762239271874*b-387.9793808954285*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][4][4] = -(1.0*(3003.0*b-588.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][4][5] = 0.0
  _M[3][4][6] = 0.0
  _M[3][4][7] = (2412.868624687221*b-542.2176684690384*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][4][8] = 0.0
  _M[3][4][9] = 0.0
  _M[3][4][10] = 0.0
  _M[3][4][11] = -(1.0*(1058.574985534799*b-293.2848444771737*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][4][12] = 0.0
  _M[3][5][1] = (301.8691769624717*b+252.6756814574763*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][5][2] = -(1.0*(104.5705503476002*b+422.1551847366085*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][5][3] = 0.0
  _M[3][5][4] = 0.0
  _M[3][5][5] = -(1.0*(495.0*b-455.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][5][6] = 0.0
  _M[3][5][7] = 0.0
  _M[3][5][8] = 0.0
  _M[3][5][9] = (4738.779906262793*b-2041.047525169368*a)/(1680.0*dx[1]^2*b-112.0*dx[1]^2*a)
  _M[3][5][10] = 0.0
  _M[3][5][11] = 0.0
  _M[3][5][12] = 0.0
  _M[3][6][1] = 0.0
  _M[3][6][2] = 0.0
  _M[3][6][3] = 0.0
  _M[3][6][4] = 0.0
  _M[3][6][5] = 0.0
  _M[3][6][6] = (2625.0*b+130.0*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][6][7] = 0.0
  _M[3][6][8] = -(1.0*(18576.24491117621*b+1160.474041071148*a))/(2400.0*dx[1]^2*b-160.0*dx[1]^2*a)
  _M[3][6][9] = 0.0
  _M[3][6][10] = 0.0
  _M[3][6][11] = 0.0
  _M[3][6][12] = 0.0
  _M[3][7][1] = 0.0
  _M[3][7][2] = 0.0
  _M[3][7][3] = (905.6075308874147*b+758.0270443724287*a)/(720.0*dx[1]^2*b-48.0*dx[1]^2*a)
  _M[3][7][4] = -(1.0*(104.5705503476003*b+422.1551847366085*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][7][5] = 0.0
  _M[3][7][6] = 0.0
  _M[3][7][7] = -(1.0*(495.0*b-455.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][7][8] = 0.0
  _M[3][7][9] = 0.0
  _M[3][7][10] = 0.0
  _M[3][7][11] = (14216.33971878838*b-6123.142575508103*a)/(5040.0*dx[1]^2*b-336.0*dx[1]^2*a)
  _M[3][7][12] = 0.0
  _M[3][8][1] = 0.0
  _M[3][8][2] = 0.0
  _M[3][8][3] = 0.0
  _M[3][8][4] = 0.0
  _M[3][8][5] = 0.0
  _M[3][8][6] = (10608.81119635938*b-1939.896904477143*a)/(1200.0*dx[1]^2*b-80.0*dx[1]^2*a)
  _M[3][8][7] = 0.0
  _M[3][8][8] = -(1.0*(3003.0*b-588.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][8][9] = 0.0
  _M[3][8][10] = 0.0
  _M[3][8][11] = 0.0
  _M[3][8][12] = 0.0
  _M[3][9][1] = (4167.05831492673*b-761.9763775866021*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][9][2] = -(1.0*(5897.774919408165*b-1154.809075128872*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][9][3] = 0.0
  _M[3][9][4] = 0.0
  _M[3][9][5] = (4738.779906262793*b-1064.894360957931*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][9][6] = 0.0
  _M[3][9][7] = 0.0
  _M[3][9][8] = 0.0
  _M[3][9][9] = -(1.0*(2079.0*b-576.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][9][10] = 0.0
  _M[3][9][11] = 0.0
  _M[3][9][12] = 0.0
  _M[3][10][1] = 0.0
  _M[3][10][2] = 0.0
  _M[3][10][3] = 0.0
  _M[3][10][4] = 0.0
  _M[3][10][5] = 0.0
  _M[3][10][6] = 0.0
  _M[3][10][7] = 0.0
  _M[3][10][8] = 0.0
  _M[3][10][9] = 0.0
  _M[3][10][10] = (2625.0*b+130.0*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][10][11] = 0.0
  _M[3][10][12] = -(1.0*(26006.74287564669*b+1624.663657499607*a))/(3360.0*dx[1]^2*b-224.0*dx[1]^2*a)
  _M[3][11][1] = 0.0
  _M[3][11][2] = 0.0
  _M[3][11][3] = (4167.05831492673*b-761.976377586602*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][11][4] = -(1.0*(5897.774919408166*b-1154.809075128872*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][11][5] = 0.0
  _M[3][11][6] = 0.0
  _M[3][11][7] = (4738.779906262793*b-1064.894360957931*a)/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][11][8] = 0.0
  _M[3][11][9] = 0.0
  _M[3][11][10] = 0.0
  _M[3][11][11] = -(1.0*(2079.0*b-576.0*a))/(480.0*dx[1]^2*b-32.0*dx[1]^2*a)
  _M[3][11][12] = 0.0
  _M[3][12][1] = 0.0
  _M[3][12][2] = 0.0
  _M[3][12][3] = 0.0
  _M[3][12][4] = 0.0
  _M[3][12][5] = 0.0
  _M[3][12][6] = 0.0
  _M[3][12][7] = 0.0
  _M[3][12][8] = 0.0
  _M[3][12][9] = 0.0
  _M[3][12][10] = (2121.762239271875*b-387.9793808954285*a)/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  _M[3][12][11] = 0.0
  _M[3][12][12] = -(1.0*(3003.0*b-588.0*a))/(240.0*dx[1]^2*b-16.0*dx[1]^2*a)
  return(_M)
end

return(stencilFn)