-- Gkyl ------------------------------------------------------------------------
--
-- Dispatch into C++ kernel functions for computing the Voronov reaction rate.
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local ffi = require "ffi"
local _ = require "Updater.voronovCalcData._VoronovCdef"

-- Map of basis function name -> function encoding.
local basisNmMap = { ["serendipity"] = "Ser", ["maximal-order"] = "Max" }

local _M = {}

-- Kernel function to compute Voronov reaction rate. 
function _M.voronov(basisNm, CDIM, polyOrder)
   local funcNm = string.format("VoronovReactRateCellAv%dx%s_P%d", CDIM, basisNmMap[basisNm], polyOrder)
   return ffi.C[funcNm]
end

return _M
