-- Gkyl ------------------------------------------------------------------------
--
-- Updater to calculate relative velocity v^*,
-- and return product of v^*, density and distF
-- for the Pauls CX model
--
--------------------------------------------------------------------------------

-- Gkyl libraries.
local UpdaterBase        = require "Updater.Base"
local LinearDecomp       = require "Lib.LinearDecomp"
local Proto              = require "Lib.Proto"
local ChargeExchangeDecl = require "Updater.chargeExchangeCalcData.ChargeExchangeModDecl"
local xsys               = require "xsys"
local Lin                = require "Lib.Linalg"
local Time               = require "Lib.Time"

-- Charge exchange collisions updater object.
local relVelProdCX = Proto(UpdaterBase)

----------------------------------------------------------------------
-- Updater Initialization --------------------------------------------
function relVelProdCX:init(tbl)
   relVelProdCX.super.init(self, tbl) -- setup base object

   self._onGrid     = assert(tbl.onGrid,
			     "Updater.relVelProdCX: Must provide grid object using 'onGrid'")
   self._confBasis  = assert(tbl.confBasis,
			     "Updater.relVelProdCX: Must provide configuration space basis object using 'confBasis'")
   self._phaseBasis = assert(tbl.phaseBasis,
			     "Updater.relVelProdCX: Must provide phase space basis object using 'phaseBasis'")
   
   -- Dimension of spaces.
   self._pDim = self._phaseBasis:ndim()
   self._cDim = self._confBasis:ndim()
   self._vDim = self._pDim - self._cDim

   -- Basis name and polynomial order.
   self._basisID   = self._phaseBasis:id()
   self._polyOrder = self._phaseBasis:polyOrder()

   -- Number of basis functions.
   self._numBasisP = self._phaseBasis:numBasis()

   -- Define cell center
   self.xc  = Lin.Vec(self._pDim)

   -- Define relative velocity calculation
   self._relVelProdCXCalc = ChargeExchangeDecl.vrelProdCX(self._basisID, self._cDim, self._vDim, self._polyOrder)

   self.onGhosts = xsys.pickBool(false, tbl.onGhosts)

   self._tmEvalMom = 0.0
end

----------------------------------------------------------------------
-- Updater Advance ---------------------------------------------------
function relVelProdCX:_advance(tCurr, inFld, outFld)
   local tmEvalMomStart = Time.clock()
   local grid = self._onGrid
   local pDim = self._pDim

   local m0     = assert(inFld[1], "relVelProdCX.advance: Must specify particle density as input[1]")
   local u      = assert(inFld[2], "relVelProdCX.advance: Must specify fluid velocity as input[2]")
   local vtSq   = assert(inFld[3], "relVelProdCX.advance: Must specify squared thermal velocity as input[3]")
   local fOther = assert(inFld[4], "relVelProdCX.advance: Must specify distF of other species as input[4]")
   local prodCX = assert(outFld[1], "relVelProdCX.advance: Must specify an output field")
   
   local confIndexer  = u:genIndexer()
   local phaseIndexer = prodCX:genIndexer()

   local m0Itr     = m0:get(1)   
   local uItr      = u:get(1)
   local vtSqItr   = vtSq:get(1)
   local fOtherItr = fOther:get(1)   
   local prodCXItr = prodCX:get(1)

   local phaseRange = prodCX:localRange()

   local phaseRangeDecomp = LinearDecomp.LinearDecompRange {
      range = phaseRange:selectFirst(pDim), numSplit = grid:numSharedProcs() }
   local tId = grid:subGridSharedId()    -- Local thread ID.
   
   -- Phase space loop 
   for pIdx in phaseRangeDecomp:rowMajorIter(tId) do
      grid:setIndex(pIdx)
      grid:cellCenter(self.xc)

      m0:fill(confIndexer(pIdx), m0Itr)
      u:fill(confIndexer(pIdx), uItr)
      vtSq:fill(confIndexer(pIdx), vtSqItr)
      fOther:fill(phaseIndexer(pIdx), fOtherItr)
      prodCX:fill(phaseIndexer(pIdx),prodCXItr)

      self._relVelProdCXCalc(self.xc:data(), m0Itr:data(), uItr:data(), vtSqItr:data(), fOtherItr:data(), prodCXItr:data())
     
   end
   self._tmEvalMom = self._tmEvalMom + Time.clock() - tmEvalMomStart
end

function relVelProdCX:evalMomTime() return self._tmEvalMom end

return relVelProdCX
