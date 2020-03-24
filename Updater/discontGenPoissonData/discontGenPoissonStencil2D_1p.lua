local Lin = require "Lib.Linalg"
local function stencilFn(dx, Dxx, Dyy, Dxy, Dx, Nx, valx, Dy, Ny, valy)
  local _M = {}

  _M[1] = Lin.Mat(4,4)
  _M[1][1][1] = (0.04166666666666666*(9.0*Dxy[4]-5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[1][1][2] = (0.08333333333333333*(5.196152422706631*Dxy[4]-3.0*Dxy[3]-3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[1][1][3] = (0.08333333333333333*(5.196152422706631*Dxy[4]-3.0*Dxy[3]-3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[1][1][4] = (0.1666666666666667*(3.0*Dxy[4]-1.732050807568877*Dxy[3]-1.732050807568877*Dxy[2]+Dxy[1]))/(dx[1]*dx[2])
  _M[1][2][1] = -(0.04166666666666666*(15.58845726811989*Dxy[4]-9.0*Dxy[3]-9.0*Dxy[2]+5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[1][2][2] = -(0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[1][2][3] = -(0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[1][2][4] = -(0.1666666666666667*(5.196152422706631*Dxy[4]-3.0*Dxy[3]-3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[1][3][1] = -(0.04166666666666666*(15.58845726811989*Dxy[4]-9.0*Dxy[3]-9.0*Dxy[2]+5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[1][3][2] = -(0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[1][3][3] = -(0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[1][3][4] = -(0.1666666666666667*(5.196152422706631*Dxy[4]-3.0*Dxy[3]-3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[1][4][1] = (0.125*(9.0*Dxy[4]-5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[1][4][2] = (0.25*(5.196152422706631*Dxy[4]-3.0*Dxy[3]-3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[1][4][3] = (0.25*(5.196152422706631*Dxy[4]-3.0*Dxy[3]-3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[1][4][4] = (0.5*(3.0*Dxy[4]-1.732050807568877*Dxy[3]-1.732050807568877*Dxy[2]+Dxy[1]))/(dx[1]*dx[2])
  _M[2] = Lin.Mat(4,4)
  _M[2][1][1] = (0.04166666666666666*(18.0*dx[1]*Dxy[4]-10.39230484541326*dx[1]*Dxy[3]+(27.0*Dxx[1]-46.76537180435967*Dxx[2])*dx[2]))/(dx[1]^2*dx[2])
  _M[2][1][2] = (0.04166666666666666*(20.78460969082652*dx[1]*Dxy[4]-12.0*dx[1]*Dxy[3]+(25.98076211353316*Dxx[1]-45.0*Dxx[2])*dx[2]))/(dx[1]^2*dx[2])
  _M[2][1][3] = -(0.04166666666666666*(46.76537180435967*dx[2]*Dxx[4]-27.0*dx[2]*Dxx[3]-12.0*dx[1]*Dxy[2]+6.928203230275509*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][1][4] = -(0.04166666666666666*(45.0*dx[2]*Dxx[4]-25.98076211353316*dx[2]*Dxx[3]-13.85640646055102*dx[1]*Dxy[2]+8.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][2][1] = -(0.04166666666666666*(31.17691453623979*dx[1]*Dxy[4]-18.0*dx[1]*Dxy[3]+(25.98076211353316*Dxx[1]-45.0*Dxx[2])*dx[2]))/(dx[1]^2*dx[2])
  _M[2][2][2] = -(0.04166666666666666*(36.0*dx[1]*Dxy[4]-20.78460969082652*dx[1]*Dxy[3]+(21.0*Dxx[1]-36.37306695894642*Dxx[2])*dx[2]))/(dx[1]^2*dx[2])
  _M[2][2][3] = (0.04166666666666666*(45.0*dx[2]*Dxx[4]-25.98076211353316*dx[2]*Dxx[3]-20.78460969082652*dx[1]*Dxy[2]+12.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][2][4] = (0.04166666666666666*(36.37306695894642*dx[2]*Dxx[4]-21.0*dx[2]*Dxx[3]-24.0*dx[1]*Dxy[2]+13.85640646055102*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][3][1] = -(0.04166666666666666*(46.76537180435967*dx[2]*Dxx[4]-27.0*dx[2]*Dxx[3]+18.0*dx[1]*Dxy[2]-10.39230484541326*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][3][2] = -(0.04166666666666666*(45.0*dx[2]*Dxx[4]-25.98076211353316*dx[2]*Dxx[3]+20.78460969082652*dx[1]*Dxy[2]-12.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][3][3] = -(0.04166666666666666*(46.76537180435967*Dxx[2]-27.0*Dxx[1]))/dx[1]^2
  _M[2][3][4] = (0.04166666666666666*(25.98076211353316*Dxx[1]-45.0*Dxx[2]))/dx[1]^2
  _M[2][4][1] = (0.125*(15.0*dx[2]*Dxx[4]-8.660254037844386*dx[2]*Dxx[3]+10.39230484541326*dx[1]*Dxy[2]-6.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][4][2] = (0.125*(12.12435565298214*dx[2]*Dxx[4]-7.0*dx[2]*Dxx[3]+12.0*dx[1]*Dxy[2]-6.928203230275509*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[2][4][3] = (0.125*(15.0*Dxx[2]-8.660254037844386*Dxx[1]))/dx[1]^2
  _M[2][4][4] = (0.125*(12.12435565298214*Dxx[2]-7.0*Dxx[1]))/dx[1]^2
  _M[3] = Lin.Mat(4,4)
  _M[3][1][1] = (0.04166666666666666*(9.0*Dxy[4]-5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[3][1][2] = (0.08333333333333333*(5.196152422706631*Dxy[4]-3.0*Dxy[3]+3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[3][1][3] = -(0.08333333333333333*(5.196152422706631*Dxy[4]-3.0*Dxy[3]+3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[3][1][4] = -(0.1666666666666667*(3.0*Dxy[4]-1.732050807568877*Dxy[3]+1.732050807568877*Dxy[2]-1.0*Dxy[1]))/(dx[1]*dx[2])
  _M[3][2][1] = -(0.04166666666666666*(15.58845726811989*Dxy[4]-9.0*Dxy[3]+9.0*Dxy[2]-5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[3][2][2] = -(0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[3][2][3] = (0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[3][2][4] = (0.1666666666666667*(5.196152422706631*Dxy[4]-3.0*Dxy[3]+3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[3][3][1] = (0.04166666666666666*(15.58845726811989*Dxy[4]-9.0*Dxy[3]+9.0*Dxy[2]-5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[3][3][2] = (0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[3][3][3] = -(0.08333333333333333*(9.0*Dxy[4]-5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[3][3][4] = -(0.1666666666666667*(5.196152422706631*Dxy[4]-3.0*Dxy[3]+3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[3][4][1] = -(0.125*(9.0*Dxy[4]-5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[3][4][2] = -(0.25*(5.196152422706631*Dxy[4]-3.0*Dxy[3]+3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[3][4][3] = (0.25*(5.196152422706631*Dxy[4]-3.0*Dxy[3]+3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[3][4][4] = (0.5*(3.0*Dxy[4]-1.732050807568877*Dxy[3]+1.732050807568877*Dxy[2]-1.0*Dxy[1]))/(dx[1]*dx[2])
  _M[4] = Lin.Mat(4,4)
  _M[4][1][1] = -(0.04166666666666666*(18.0*dx[2]*Dxy[4]+46.76537180435967*dx[1]*Dyy[3]-10.39230484541326*Dxy[2]*dx[2]-27.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[4][1][2] = -(0.04166666666666666*(46.76537180435967*dx[1]*Dyy[4]-12.0*dx[2]*Dxy[3]+6.928203230275509*Dxy[1]*dx[2]-27.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][1][3] = -(0.04166666666666666*(20.78460969082652*dx[2]*Dxy[4]+45.0*dx[1]*Dyy[3]-12.0*Dxy[2]*dx[2]-25.98076211353316*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[4][1][4] = -(0.04166666666666666*(45.0*dx[1]*Dyy[4]-13.85640646055102*dx[2]*Dxy[3]+8.0*Dxy[1]*dx[2]-25.98076211353316*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][2][1] = -(0.04166666666666666*(46.76537180435967*dx[1]*Dyy[4]+54.0*dx[2]*Dxy[3]-31.17691453623979*Dxy[1]*dx[2]-27.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][2][2] = -(0.04166666666666666*(72.0*dx[2]*Dxy[4]+46.76537180435967*dx[1]*Dyy[3]-41.56921938165305*Dxy[2]*dx[2]-27.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[4][2][3] = -(0.04166666666666666*(45.0*dx[1]*Dyy[4]+62.35382907247957*dx[2]*Dxy[3]-36.0*Dxy[1]*dx[2]-25.98076211353316*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][2][4] = -(0.04166666666666666*(83.1384387633061*dx[2]*Dxy[4]+45.0*dx[1]*Dyy[3]-48.0*Dxy[2]*dx[2]-25.98076211353316*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[4][3][1] = (0.04166666666666666*(31.17691453623979*dx[2]*Dxy[4]+45.0*dx[1]*Dyy[3]-18.0*Dxy[2]*dx[2]-25.98076211353316*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[4][3][2] = (0.04166666666666666*(45.0*dx[1]*Dyy[4]-20.78460969082652*dx[2]*Dxy[3]+12.0*Dxy[1]*dx[2]-25.98076211353316*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][3][3] = (0.04166666666666666*(36.0*dx[2]*Dxy[4]+36.37306695894642*dx[1]*Dyy[3]-20.78460969082652*Dxy[2]*dx[2]-21.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[4][3][4] = (0.04166666666666666*(36.37306695894642*dx[1]*Dyy[4]-24.0*dx[2]*Dxy[3]+13.85640646055102*Dxy[1]*dx[2]-21.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][4][1] = (0.125*(15.0*dx[1]*Dyy[4]+31.17691453623979*dx[2]*Dxy[3]-18.0*Dxy[1]*dx[2]-8.660254037844386*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][4][2] = (0.125*(41.56921938165305*dx[2]*Dxy[4]+15.0*dx[1]*Dyy[3]-24.0*Dxy[2]*dx[2]-8.660254037844386*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[4][4][3] = (0.125*(12.12435565298214*dx[1]*Dyy[4]+36.0*dx[2]*Dxy[3]-20.78460969082652*Dxy[1]*dx[2]-7.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[4][4][4] = (0.125*(48.0*dx[2]*Dxy[4]+12.12435565298214*dx[1]*Dyy[3]-27.71281292110204*Dxy[2]*dx[2]-7.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[5] = Lin.Mat(4,4)
  _M[5][1][1] = -(0.25*(6.0*dx[1]*dx[2]*Dxy[4]+9.0*Dxx[1]*dx[2]^2+9.0*Dyy[1]*dx[1]^2))/(dx[1]^2*dx[2]^2)
  _M[5][1][2] = (0.25*(4.0*dx[1]*dx[2]*Dxy[3]-15.0*Dxx[2]*dx[2]^2-9.0*dx[1]^2*Dyy[2]))/(dx[1]^2*dx[2]^2)
  _M[5][1][3] = -(0.25*(15.0*dx[1]^2*Dyy[3]+9.0*dx[2]^2*Dxx[3]+4.0*dx[1]*Dxy[2]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][1][4] = -(0.08333333333333333*(45.0*dx[1]^2*Dyy[4]+45.0*dx[2]^2*Dxx[4]-8.0*Dxy[1]*dx[1]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][2][1] = (0.25*(6.0*dx[1]*dx[2]*Dxy[3]-15.0*Dxx[2]*dx[2]^2-9.0*dx[1]^2*Dyy[2]))/(dx[1]^2*dx[2]^2)
  _M[5][2][2] = -(0.25*(23.0*Dxx[1]*dx[2]^2+9.0*Dyy[1]*dx[1]^2))/(dx[1]^2*dx[2]^2)
  _M[5][2][3] = -(0.25*(15.0*dx[1]^2*Dyy[4]+15.0*dx[2]^2*Dxx[4]+12.0*Dxy[1]*dx[1]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][2][4] = -(0.25*(15.0*dx[1]^2*Dyy[3]+23.0*dx[2]^2*Dxx[3]+16.0*dx[1]*Dxy[2]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][3][1] = -(0.25*(15.0*dx[1]^2*Dyy[3]+9.0*dx[2]^2*Dxx[3]-6.0*dx[1]*Dxy[2]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][3][2] = -(0.25*(15.0*dx[1]^2*Dyy[4]+15.0*dx[2]^2*Dxx[4]+4.0*Dxy[1]*dx[1]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][3][3] = -(0.25*(9.0*Dxx[1]*dx[2]^2+23.0*Dyy[1]*dx[1]^2))/(dx[1]^2*dx[2]^2)
  _M[5][3][4] = -(0.25*(15.0*Dxx[2]*dx[2]^2+23.0*dx[1]^2*Dyy[2]))/(dx[1]^2*dx[2]^2)
  _M[5][4][1] = -(0.25*(15.0*dx[1]^2*Dyy[4]+15.0*dx[2]^2*Dxx[4]-18.0*Dxy[1]*dx[1]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][4][2] = -(0.25*(15.0*dx[1]^2*Dyy[3]+23.0*dx[2]^2*Dxx[3]-24.0*dx[1]*Dxy[2]*dx[2]))/(dx[1]^2*dx[2]^2)
  _M[5][4][3] = (0.25*(24.0*dx[1]*dx[2]*Dxy[3]-15.0*Dxx[2]*dx[2]^2-23.0*dx[1]^2*Dyy[2]))/(dx[1]^2*dx[2]^2)
  _M[5][4][4] = (0.25*(24.0*dx[1]*dx[2]*Dxy[4]-23.0*Dxx[1]*dx[2]^2-23.0*Dyy[1]*dx[1]^2))/(dx[1]^2*dx[2]^2)
  _M[6] = Lin.Mat(4,4)
  _M[6][1][1] = -(0.04166666666666666*(18.0*dx[2]*Dxy[4]-46.76537180435967*dx[1]*Dyy[3]+10.39230484541326*Dxy[2]*dx[2]-27.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[6][1][2] = (0.04166666666666666*(46.76537180435967*dx[1]*Dyy[4]+12.0*dx[2]*Dxy[3]+6.928203230275509*Dxy[1]*dx[2]+27.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][1][3] = (0.04166666666666666*(20.78460969082652*dx[2]*Dxy[4]-45.0*dx[1]*Dyy[3]+12.0*Dxy[2]*dx[2]-25.98076211353316*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[6][1][4] = -(0.04166666666666666*(45.0*dx[1]*Dyy[4]+13.85640646055102*dx[2]*Dxy[3]+8.0*Dxy[1]*dx[2]+25.98076211353316*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][2][1] = (0.04166666666666666*(46.76537180435967*dx[1]*Dyy[4]-54.0*dx[2]*Dxy[3]-31.17691453623979*Dxy[1]*dx[2]+27.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][2][2] = -(0.04166666666666666*(72.0*dx[2]*Dxy[4]-46.76537180435967*dx[1]*Dyy[3]+41.56921938165305*Dxy[2]*dx[2]-27.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[6][2][3] = -(0.04166666666666666*(45.0*dx[1]*Dyy[4]-62.35382907247957*dx[2]*Dxy[3]-36.0*Dxy[1]*dx[2]+25.98076211353316*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][2][4] = (0.04166666666666666*(83.1384387633061*dx[2]*Dxy[4]-45.0*dx[1]*Dyy[3]+48.0*Dxy[2]*dx[2]-25.98076211353316*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[6][3][1] = -(0.04166666666666666*(31.17691453623979*dx[2]*Dxy[4]-45.0*dx[1]*Dyy[3]+18.0*Dxy[2]*dx[2]-25.98076211353316*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[6][3][2] = (0.04166666666666666*(45.0*dx[1]*Dyy[4]+20.78460969082652*dx[2]*Dxy[3]+12.0*Dxy[1]*dx[2]+25.98076211353316*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][3][3] = (0.04166666666666666*(36.0*dx[2]*Dxy[4]-36.37306695894642*dx[1]*Dyy[3]+20.78460969082652*Dxy[2]*dx[2]-21.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[6][3][4] = -(0.04166666666666666*(36.37306695894642*dx[1]*Dyy[4]+24.0*dx[2]*Dxy[3]+13.85640646055102*Dxy[1]*dx[2]+21.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][4][1] = (0.125*(15.0*dx[1]*Dyy[4]-31.17691453623979*dx[2]*Dxy[3]-18.0*Dxy[1]*dx[2]+8.660254037844386*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][4][2] = -(0.125*(41.56921938165305*dx[2]*Dxy[4]-15.0*dx[1]*Dyy[3]+24.0*Dxy[2]*dx[2]-8.660254037844386*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[6][4][3] = -(0.125*(12.12435565298214*dx[1]*Dyy[4]-36.0*dx[2]*Dxy[3]-20.78460969082652*Dxy[1]*dx[2]+7.0*dx[1]*Dyy[2]))/(dx[1]*dx[2]^2)
  _M[6][4][4] = (0.125*(48.0*dx[2]*Dxy[4]-12.12435565298214*dx[1]*Dyy[3]+27.71281292110204*Dxy[2]*dx[2]-7.0*Dyy[1]*dx[1]))/(dx[1]*dx[2]^2)
  _M[7] = Lin.Mat(4,4)
  _M[7][1][1] = (0.04166666666666666*(9.0*Dxy[4]+5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[7][1][2] = -(0.08333333333333333*(5.196152422706631*Dxy[4]+3.0*Dxy[3]-3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[7][1][3] = (0.08333333333333333*(5.196152422706631*Dxy[4]+3.0*Dxy[3]-3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[7][1][4] = -(0.1666666666666667*(3.0*Dxy[4]+1.732050807568877*Dxy[3]-1.732050807568877*Dxy[2]-1.0*Dxy[1]))/(dx[1]*dx[2])
  _M[7][2][1] = (0.04166666666666666*(15.58845726811989*Dxy[4]+9.0*Dxy[3]-9.0*Dxy[2]-5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[7][2][2] = -(0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[7][2][3] = (0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[7][2][4] = -(0.1666666666666667*(5.196152422706631*Dxy[4]+3.0*Dxy[3]-3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[7][3][1] = -(0.04166666666666666*(15.58845726811989*Dxy[4]+9.0*Dxy[3]-9.0*Dxy[2]-5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[7][3][2] = (0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[7][3][3] = -(0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[7][3][4] = (0.1666666666666667*(5.196152422706631*Dxy[4]+3.0*Dxy[3]-3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[7][4][1] = -(0.125*(9.0*Dxy[4]+5.196152422706631*Dxy[3]-5.196152422706631*Dxy[2]-3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[7][4][2] = (0.25*(5.196152422706631*Dxy[4]+3.0*Dxy[3]-3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[7][4][3] = -(0.25*(5.196152422706631*Dxy[4]+3.0*Dxy[3]-3.0*Dxy[2]-1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[7][4][4] = (0.5*(3.0*Dxy[4]+1.732050807568877*Dxy[3]-1.732050807568877*Dxy[2]-1.0*Dxy[1]))/(dx[1]*dx[2])
  _M[8] = Lin.Mat(4,4)
  _M[8][1][1] = (0.04166666666666666*(18.0*dx[1]*Dxy[4]+10.39230484541326*dx[1]*Dxy[3]+(46.76537180435967*Dxx[2]+27.0*Dxx[1])*dx[2]))/(dx[1]^2*dx[2])
  _M[8][1][2] = -(0.04166666666666666*(20.78460969082652*dx[1]*Dxy[4]+12.0*dx[1]*Dxy[3]+(45.0*Dxx[2]+25.98076211353316*Dxx[1])*dx[2]))/(dx[1]^2*dx[2])
  _M[8][1][3] = (0.04166666666666666*(46.76537180435967*dx[2]*Dxx[4]+27.0*dx[2]*Dxx[3]+12.0*dx[1]*Dxy[2]+6.928203230275509*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][1][4] = -(0.04166666666666666*(45.0*dx[2]*Dxx[4]+25.98076211353316*dx[2]*Dxx[3]+13.85640646055102*dx[1]*Dxy[2]+8.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][2][1] = (0.04166666666666666*(31.17691453623979*dx[1]*Dxy[4]+18.0*dx[1]*Dxy[3]+(45.0*Dxx[2]+25.98076211353316*Dxx[1])*dx[2]))/(dx[1]^2*dx[2])
  _M[8][2][2] = -(0.04166666666666666*(36.0*dx[1]*Dxy[4]+20.78460969082652*dx[1]*Dxy[3]+(36.37306695894642*Dxx[2]+21.0*Dxx[1])*dx[2]))/(dx[1]^2*dx[2])
  _M[8][2][3] = (0.04166666666666666*(45.0*dx[2]*Dxx[4]+25.98076211353316*dx[2]*Dxx[3]+20.78460969082652*dx[1]*Dxy[2]+12.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][2][4] = -(0.04166666666666666*(36.37306695894642*dx[2]*Dxx[4]+21.0*dx[2]*Dxx[3]+24.0*dx[1]*Dxy[2]+13.85640646055102*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][3][1] = (0.04166666666666666*(46.76537180435967*dx[2]*Dxx[4]+27.0*dx[2]*Dxx[3]-18.0*dx[1]*Dxy[2]-10.39230484541326*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][3][2] = -(0.04166666666666666*(45.0*dx[2]*Dxx[4]+25.98076211353316*dx[2]*Dxx[3]-20.78460969082652*dx[1]*Dxy[2]-12.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][3][3] = (0.04166666666666666*(46.76537180435967*Dxx[2]+27.0*Dxx[1]))/dx[1]^2
  _M[8][3][4] = -(0.04166666666666666*(45.0*Dxx[2]+25.98076211353316*Dxx[1]))/dx[1]^2
  _M[8][4][1] = (0.125*(15.0*dx[2]*Dxx[4]+8.660254037844386*dx[2]*Dxx[3]-10.39230484541326*dx[1]*Dxy[2]-6.0*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][4][2] = -(0.125*(12.12435565298214*dx[2]*Dxx[4]+7.0*dx[2]*Dxx[3]-12.0*dx[1]*Dxy[2]-6.928203230275509*Dxy[1]*dx[1]))/(dx[1]^2*dx[2])
  _M[8][4][3] = (0.125*(15.0*Dxx[2]+8.660254037844386*Dxx[1]))/dx[1]^2
  _M[8][4][4] = -(0.125*(12.12435565298214*Dxx[2]+7.0*Dxx[1]))/dx[1]^2
  _M[9] = Lin.Mat(4,4)
  _M[9][1][1] = (0.04166666666666666*(9.0*Dxy[4]+5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[9][1][2] = -(0.08333333333333333*(5.196152422706631*Dxy[4]+3.0*Dxy[3]+3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[9][1][3] = -(0.08333333333333333*(5.196152422706631*Dxy[4]+3.0*Dxy[3]+3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[9][1][4] = (0.1666666666666667*(3.0*Dxy[4]+1.732050807568877*Dxy[3]+1.732050807568877*Dxy[2]+Dxy[1]))/(dx[1]*dx[2])
  _M[9][2][1] = (0.04166666666666666*(15.58845726811989*Dxy[4]+9.0*Dxy[3]+9.0*Dxy[2]+5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[9][2][2] = -(0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[9][2][3] = -(0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[9][2][4] = (0.1666666666666667*(5.196152422706631*Dxy[4]+3.0*Dxy[3]+3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[9][3][1] = (0.04166666666666666*(15.58845726811989*Dxy[4]+9.0*Dxy[3]+9.0*Dxy[2]+5.196152422706631*Dxy[1]))/(dx[1]*dx[2])
  _M[9][3][2] = -(0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[9][3][3] = -(0.08333333333333333*(9.0*Dxy[4]+5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[9][3][4] = (0.1666666666666667*(5.196152422706631*Dxy[4]+3.0*Dxy[3]+3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[9][4][1] = (0.125*(9.0*Dxy[4]+5.196152422706631*Dxy[3]+5.196152422706631*Dxy[2]+3.0*Dxy[1]))/(dx[1]*dx[2])
  _M[9][4][2] = -(0.25*(5.196152422706631*Dxy[4]+3.0*Dxy[3]+3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[9][4][3] = -(0.25*(5.196152422706631*Dxy[4]+3.0*Dxy[3]+3.0*Dxy[2]+1.732050807568877*Dxy[1]))/(dx[1]*dx[2])
  _M[9][4][4] = (0.5*(3.0*Dxy[4]+1.732050807568877*Dxy[3]+1.732050807568877*Dxy[2]+Dxy[1]))/(dx[1]*dx[2])
  _M[10] = Lin.Vec(4)
  _M[10][1] = 0.0*valx + 0.0*valy
  _M[10][2] = 0.0*valx + 0.0*valy
  _M[10][3] = 0.0*valx + 0.0*valy
  _M[10][4] = 0.0*valx + 0.0*valy
  return(_M)
end

return(stencilFn)
