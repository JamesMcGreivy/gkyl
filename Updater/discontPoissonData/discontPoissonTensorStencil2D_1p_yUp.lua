local Lin = require "Lib.Linalg"
local function stencilFn(dx, a, b, val)
  local _M = {}

  _M[1] = Lin.Mat(4,4)
  _M[1][1][1] = (27.0*b-3.0*a)/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[1][1][2] = 0.0
  _M[1][1][3] = (25.98076211353316*b-5.196152422706631*a)/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[1][1][4] = 0.0
  _M[1][2][1] = 0.0
  _M[1][2][2] = (27.0*b-3.0*a)/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[1][2][3] = 0.0
  _M[1][2][4] = (25.98076211353316*b-5.196152422706631*a)/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[1][3][1] = -(1.0*(77.94228634059947*b+34.64101615137754*a))/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[1][3][2] = 0.0
  _M[1][3][3] = -(1.0*(75.0*b+40.0*a))/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[1][3][4] = 0.0
  _M[1][4][1] = 0.0
  _M[1][4][2] = -(1.0*(77.94228634059947*b+34.64101615137754*a))/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[1][4][3] = 0.0
  _M[1][4][4] = -(1.0*(75.0*b+40.0*a))/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[2] = Lin.Mat(4,4)
  _M[2][1][1] = -(1.0*(27.0*b+21.0*a))/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[2][1][2] = 0.0
  _M[2][1][3] = (25.98076211353316*b-46.76537180435967*a)/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[2][1][4] = 0.0
  _M[2][2][1] = 0.0
  _M[2][2][2] = -(1.0*(27.0*b+21.0*a))/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[2][2][3] = 0.0
  _M[2][2][4] = (25.98076211353316*b-46.76537180435967*a)/(12.0*dx[2]^2*b+2.0*dx[2]^2*a)
  _M[2][3][1] = (77.94228634059947*b-34.64101615137754*a)/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[2][3][2] = 0.0
  _M[2][3][3] = -(1.0*(315.0*b+200.0*a))/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[2][3][4] = 0.0
  _M[2][4][1] = 0.0
  _M[2][4][2] = (77.94228634059947*b-34.64101615137754*a)/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[2][4][3] = 0.0
  _M[2][4][4] = -(1.0*(315.0*b+200.0*a))/(24.0*dx[2]^2*b+4.0*dx[2]^2*a)
  _M[3] = Lin.Vec(4)
  _M[3][1] = 24.0/(6.0*dx[2]^2*b+dx[2]^2*a)*val
  _M[3][2] = 0.0*val
  _M[3][3] = 34.64101615137754/(6.0*dx[2]^2*b+dx[2]^2*a)*val
  _M[3][4] = 0.0*val
  return(_M)
end

return(stencilFn)