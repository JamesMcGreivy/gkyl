local Lin = require "Lib.Linalg"
local function stencilFn(dx)
  local _M = {}

  _M[1] = Lin.Mat(4,4)
  _M[1][1][1] = 5.46875/dx[1]^2
  _M[1][1][2] = 7.74010204632342/dx[1]^2
  _M[1][1][3] = 6.21906406242129/dx[1]^2
  _M[1][1][4] = 2.728431039535359/dx[1]^2
  _M[1][2][1] = -7.74010204632342/dx[1]^2
  _M[1][2][2] = -10.78125/dx[1]^2
  _M[1][2][3] = -8.351120340259742/dx[1]^2
  _M[1][2][4] = -3.416473844007256/dx[1]^2
  _M[1][3][1] = 5.520292819452606/dx[1]^2
  _M[1][3][2] = 7.140813044569925/dx[1]^2
  _M[1][3][3] = 4.53125/dx[1]^2
  _M[1][3][4] = 1.03003174795038/dx[1]^2
  _M[1][4][1] = 1.405555384003064/dx[1]^2
  _M[1][4][2] = 3.58013726168425/dx[1]^2
  _M[1][4][3] = 5.731202289877753/dx[1]^2
  _M[1][4][4] = 4.78125/dx[1]^2
  _M[2] = Lin.Mat(4,4)
  _M[2][1][1] = -10.9375/dx[1]^2
  _M[2][1][2] = 0.0
  _M[2][1][3] = -12.43812812484258/dx[1]^2
  _M[2][1][4] = 0.0
  _M[2][2][1] = 0.0
  _M[2][2][2] = -32.0625/dx[1]^2
  _M[2][2][3] = 0.0
  _M[2][2][4] = -12.07017705367833/dx[1]^2
  _M[2][3][1] = -11.04058563890521/dx[1]^2
  _M[2][3][2] = 0.0
  _M[2][3][3] = -46.5625/dx[1]^2
  _M[2][3][4] = 0.0
  _M[2][4][1] = 0.0
  _M[2][4][2] = 2.57769882841266/dx[1]^2
  _M[2][4][3] = 0.0
  _M[2][4][4] = -38.4375/dx[1]^2
  _M[3] = Lin.Mat(4,4)
  _M[3][1][1] = 5.46875/dx[1]^2
  _M[3][1][2] = -7.74010204632342/dx[1]^2
  _M[3][1][3] = 6.21906406242129/dx[1]^2
  _M[3][1][4] = -2.728431039535359/dx[1]^2
  _M[3][2][1] = 7.74010204632342/dx[1]^2
  _M[3][2][2] = -10.78125/dx[1]^2
  _M[3][2][3] = 8.351120340259742/dx[1]^2
  _M[3][2][4] = -3.416473844007256/dx[1]^2
  _M[3][3][1] = 5.520292819452606/dx[1]^2
  _M[3][3][2] = -7.140813044569925/dx[1]^2
  _M[3][3][3] = 4.53125/dx[1]^2
  _M[3][3][4] = -1.03003174795038/dx[1]^2
  _M[3][4][1] = -1.405555384003064/dx[1]^2
  _M[3][4][2] = 3.58013726168425/dx[1]^2
  _M[3][4][3] = -5.731202289877753/dx[1]^2
  _M[3][4][4] = 4.78125/dx[1]^2
  return(_M)
end

return(stencilFn)