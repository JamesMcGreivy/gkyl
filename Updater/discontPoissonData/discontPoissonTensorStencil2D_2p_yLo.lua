local Lin = require "Lib.Linalg"
local function stencilFn(dx, a, b, val)
  local _M = {}

  _M[1] = Lin.Vec(9)
  _M[1][1] = -40.0/(10.0*dx[2]^2*b-1.0*dx[2]^2*a)*val
  _M[1][2] = 0.0*val
  _M[1][3] = 62.35382907247957/(10.0*dx[2]^2*b-1.0*dx[2]^2*a)*val
  _M[1][4] = 0.0*val
  _M[1][5] = 0.0*val
  _M[1][6] = -62.60990336999411/(10.0*dx[2]^2*b-1.0*dx[2]^2*a)*val
  _M[1][7] = 0.0*val
  _M[1][8] = 0.0*val
  _M[1][9] = 0.0*val
  _M[2] = Lin.Mat(9,9)
  _M[2][1][1] = -(1.0*(75.0*b-60.0*a))/(20.0*dx[2]^2*b-2.0*dx[2]^2*a)
  _M[2][1][2] = 0.0
  _M[2][1][3] = -(1.0*(381.051177665153*b+112.583302491977*a))/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[2][1][4] = 0.0
  _M[2][1][5] = 0.0
  _M[2][1][6] = -(1.0*(214.6625258399798*b-422.6168477474603*a))/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[2][1][7] = 0.0
  _M[2][1][8] = 0.0
  _M[2][1][9] = 0.0
  _M[2][2][1] = 0.0
  _M[2][2][2] = -(1.0*(75.0*b-60.0*a))/(20.0*dx[2]^2*b-2.0*dx[2]^2*a)
  _M[2][2][3] = 0.0
  _M[2][2][4] = -(1.0*(1143.153532995459*b+337.749907475931*a))/(240.0*dx[2]^2*b-24.0*dx[2]^2*a)
  _M[2][2][5] = 0.0
  _M[2][2][6] = 0.0
  _M[2][2][7] = 0.0
  _M[2][2][8] = -(1.0*(643.9875775199394*b-1267.85054324238*a))/(240.0*dx[2]^2*b-24.0*dx[2]^2*a)
  _M[2][2][9] = 0.0
  _M[2][3][1] = -(1.0*(147.2243186433546*b+148.9563694509234*a))/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[2][3][2] = 0.0
  _M[2][3][3] = -(1.0*(2232.0*b-693.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][3][4] = 0.0
  _M[2][3][5] = 0.0
  _M[2][3][6] = (1874.52393956439*b-6440.771304742934*a)/(800.0*dx[2]^2*b-80.0*dx[2]^2*a)
  _M[2][3][7] = 0.0
  _M[2][3][8] = 0.0
  _M[2][3][9] = 0.0
  _M[2][4][1] = 0.0
  _M[2][4][2] = -(1.0*(147.2243186433546*b+148.9563694509234*a))/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[2][4][3] = 0.0
  _M[2][4][4] = -(1.0*(2232.0*b-693.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][4][5] = 0.0
  _M[2][4][6] = 0.0
  _M[2][4][7] = 0.0
  _M[2][4][8] = (1874.52393956439*b-6440.771304742934*a)/(800.0*dx[2]^2*b-80.0*dx[2]^2*a)
  _M[2][4][9] = 0.0
  _M[2][5][1] = 0.0
  _M[2][5][2] = 0.0
  _M[2][5][3] = 0.0
  _M[2][5][4] = 0.0
  _M[2][5][5] = -(1.0*(75.0*b-60.0*a))/(20.0*dx[2]^2*b-2.0*dx[2]^2*a)
  _M[2][5][6] = 0.0
  _M[2][5][7] = -(1.0*(381.051177665153*b+112.583302491977*a))/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[2][5][8] = 0.0
  _M[2][5][9] = -(1.0*(214.6625258399798*b-422.6168477474603*a))/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[2][6][1] = -(1.0*(234.787137637478*b-187.8297101099823*a))/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[2][6][2] = 0.0
  _M[2][6][3] = -(1.0*(1192.878870631884*b+352.441484504875*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][6][4] = 0.0
  _M[2][6][5] = 0.0
  _M[2][6][6] = -(1.0*(7392.0*b-1995.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][6][7] = 0.0
  _M[2][6][8] = 0.0
  _M[2][6][9] = 0.0
  _M[2][7][1] = 0.0
  _M[2][7][2] = 0.0
  _M[2][7][3] = 0.0
  _M[2][7][4] = 0.0
  _M[2][7][5] = -(1.0*(736.121593216773*b+744.7818472546173*a))/(200.0*dx[2]^2*b-20.0*dx[2]^2*a)
  _M[2][7][6] = 0.0
  _M[2][7][7] = -(1.0*(2232.0*b-693.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][7][8] = 0.0
  _M[2][7][9] = (1874.52393956439*b-6440.771304742934*a)/(800.0*dx[2]^2*b-80.0*dx[2]^2*a)
  _M[2][8][1] = 0.0
  _M[2][8][2] = -(1.0*(704.3614129124337*b-563.4891303299469*a))/(120.0*dx[2]^2*b-12.0*dx[2]^2*a)
  _M[2][8][3] = 0.0
  _M[2][8][4] = -(1.0*(1192.878870631884*b+352.441484504875*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][8][5] = 0.0
  _M[2][8][6] = 0.0
  _M[2][8][7] = 0.0
  _M[2][8][8] = -(1.0*(7392.0*b-1995.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][8][9] = 0.0
  _M[2][9][1] = 0.0
  _M[2][9][2] = 0.0
  _M[2][9][3] = 0.0
  _M[2][9][4] = 0.0
  _M[2][9][5] = -(1.0*(234.787137637478*b-187.8297101099823*a))/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[2][9][6] = 0.0
  _M[2][9][7] = -(1.0*(1192.878870631884*b+352.441484504875*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[2][9][8] = 0.0
  _M[2][9][9] = -(1.0*(7392.0*b-1995.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3] = Lin.Mat(9,9)
  _M[3][1][1] = (75.0*b-20.0*a)/(20.0*dx[2]^2*b-2.0*dx[2]^2*a)
  _M[3][1][2] = 0.0
  _M[3][1][3] = -(1.0*(381.051177665153*b-112.583302491977*a))/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[3][1][4] = 0.0
  _M[3][1][5] = 0.0
  _M[3][1][6] = (214.6625258399798*b-78.26237921249266*a)/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[3][1][7] = 0.0
  _M[3][1][8] = 0.0
  _M[3][1][9] = 0.0
  _M[3][2][1] = 0.0
  _M[3][2][2] = (75.0*b-20.0*a)/(20.0*dx[2]^2*b-2.0*dx[2]^2*a)
  _M[3][2][3] = 0.0
  _M[3][2][4] = -(1.0*(1143.153532995459*b-337.749907475931*a))/(240.0*dx[2]^2*b-24.0*dx[2]^2*a)
  _M[3][2][5] = 0.0
  _M[3][2][6] = 0.0
  _M[3][2][7] = 0.0
  _M[3][2][8] = (643.9875775199394*b-234.7871376374779*a)/(240.0*dx[2]^2*b-24.0*dx[2]^2*a)
  _M[3][2][9] = 0.0
  _M[3][3][1] = (147.2243186433546*b+24.24871130596428*a)/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[3][3][2] = 0.0
  _M[3][3][3] = -(1.0*(672.0*b+165.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][3][4] = 0.0
  _M[3][3][5] = 0.0
  _M[3][3][6] = (1378.78207124984*b+747.4857858180314*a)/(800.0*dx[2]^2*b-80.0*dx[2]^2*a)
  _M[3][3][7] = 0.0
  _M[3][3][8] = 0.0
  _M[3][3][9] = 0.0
  _M[3][4][1] = 0.0
  _M[3][4][2] = (147.2243186433546*b+24.24871130596428*a)/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[3][4][3] = 0.0
  _M[3][4][4] = -(1.0*(672.0*b+165.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][4][5] = 0.0
  _M[3][4][6] = 0.0
  _M[3][4][7] = 0.0
  _M[3][4][8] = (1378.78207124984*b+747.4857858180314*a)/(800.0*dx[2]^2*b-80.0*dx[2]^2*a)
  _M[3][4][9] = 0.0
  _M[3][5][1] = 0.0
  _M[3][5][2] = 0.0
  _M[3][5][3] = 0.0
  _M[3][5][4] = 0.0
  _M[3][5][5] = (75.0*b-20.0*a)/(20.0*dx[2]^2*b-2.0*dx[2]^2*a)
  _M[3][5][6] = 0.0
  _M[3][5][7] = -(1.0*(381.051177665153*b-112.583302491977*a))/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[3][5][8] = 0.0
  _M[3][5][9] = (214.6625258399798*b-78.26237921249266*a)/(80.0*dx[2]^2*b-8.0*dx[2]^2*a)
  _M[3][6][1] = (234.787137637478*b-62.60990336999411*a)/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[3][6][2] = 0.0
  _M[3][6][3] = -(1.0*(1192.878870631884*b-352.441484504875*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][6][4] = 0.0
  _M[3][6][5] = 0.0
  _M[3][6][6] = (672.0*b-245.0*a)/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][6][7] = 0.0
  _M[3][6][8] = 0.0
  _M[3][6][9] = 0.0
  _M[3][7][1] = 0.0
  _M[3][7][2] = 0.0
  _M[3][7][3] = 0.0
  _M[3][7][4] = 0.0
  _M[3][7][5] = (736.121593216773*b+121.2435565298214*a)/(200.0*dx[2]^2*b-20.0*dx[2]^2*a)
  _M[3][7][6] = 0.0
  _M[3][7][7] = -(1.0*(672.0*b+165.0*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][7][8] = 0.0
  _M[3][7][9] = (1378.78207124984*b+747.4857858180314*a)/(800.0*dx[2]^2*b-80.0*dx[2]^2*a)
  _M[3][8][1] = 0.0
  _M[3][8][2] = (704.3614129124337*b-187.8297101099823*a)/(120.0*dx[2]^2*b-12.0*dx[2]^2*a)
  _M[3][8][3] = 0.0
  _M[3][8][4] = -(1.0*(1192.878870631884*b-352.441484504875*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][8][5] = 0.0
  _M[3][8][6] = 0.0
  _M[3][8][7] = 0.0
  _M[3][8][8] = (672.0*b-245.0*a)/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][8][9] = 0.0
  _M[3][9][1] = 0.0
  _M[3][9][2] = 0.0
  _M[3][9][3] = 0.0
  _M[3][9][4] = 0.0
  _M[3][9][5] = (234.787137637478*b-62.60990336999411*a)/(40.0*dx[2]^2*b-4.0*dx[2]^2*a)
  _M[3][9][6] = 0.0
  _M[3][9][7] = -(1.0*(1192.878870631884*b-352.441484504875*a))/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  _M[3][9][8] = 0.0
  _M[3][9][9] = (672.0*b-245.0*a)/(160.0*dx[2]^2*b-16.0*dx[2]^2*a)
  return(_M)
end

return(stencilFn)