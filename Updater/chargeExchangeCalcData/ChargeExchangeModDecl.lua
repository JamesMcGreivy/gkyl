-- Gkyl ------------------------------------------------------------------------
--
-- Dispatch into C++ kernel functions for computing the Voronov reaction rate.
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local ffi = require "ffi"
local _ = require "Updater.IonizationCalcData._IonizationCdef"

-- Map of basis function name -> function encoding.
local basisNmMap = { ["serendipity"] = "Ser", ["maximal-order"] = "Max" }

local _M = {}

-- Kernel function to compute Voronov reaction rate. 
function _M.vrelCX(basisNm, CDIM, polyOrder)
   local funcNm = string.format("vrelCXcellAv%s%dx%dv_P%d", basisNmMap[basisNm], CDIM, VDIM, polyOrder)
   return ffi.C[funcNm]
end

function _M.lnVCX(basisNm, CDIM, polyOrder)
   local funcNm = string.format("lnVCXcellAv%s%dx%dv_P%d", basisNmMap[basisNm], CDIM, VDIM, polyOrder)
   return ffi.C[funcNm]
end

return _M
