-- Gkyl ------------------------------------------------------------------------
--
-- Updater to calculate ln(V_CX) for the Pauls CX model
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
local lnVCX = Proto(UpdaterBase)

----------------------------------------------------------------------
-- Updater Initialization --------------------------------------------
function lnVCX:init(tbl)
   lnVCX.super.init(self, tbl) -- setup base object

   self._onGrid     = assert(tbl.onGrid,
			     "Updater.lnVCX: Must provide grid object using 'onGrid'")
   self._confBasis  = assert(tbl.confBasis,
			     "Updater.lnVCX: Must provide configuration space basis object using 'confBasis'")
   
   -- Dimension of spaces.
   self._cDim = self._confBasis:ndim()

   -- Basis name and polynomial order.
   self._basisID   = self._phaseBasis:id()
   self._polyOrder = self._phaseBasis:polyOrder()

   -- Number of basis functions.
   self._numBasis = self._confBasis:numBasis()

   -- Define relative velocity calculation
   self._lnVcxCalc = ChargeExchangeDecl.lnVCX(self._basisID, self._cDim, self._vDim, self._polyOrder)

   self.onGhosts = xsys.pickBool(false, tbl.onGhosts)

   self._tmEvalMom = 0.0
end

----------------------------------------------------------------------
-- Updater Advance ---------------------------------------------------
function lnVCX:_advance(tCurr, inFld, outFld)
   local tmEvalMomStart = Time.clock()
   local grid = self._onGrid
   local numPhaseBasis = self._phaseBasis:numBasis()
   local cDim = self._cDim

   local uIon       = assert(inFld[1], "lnVCX.advance: Must specify ion fluid velocity as input[1]")
   local uNeut      = assert(inFld[2], "lnVCX.advance: Must specify neutral fluid velocity as input[2]")
   local vtSqIon    = assert(inFld[3], "lnVCX.advance: Must specify ion squared thermal velocity as input[3]")
   local vtSqNeut   = assert(inFld[4], "lnVCX.advance: Must specify neutral squared thermal velocity as input[3]")
   local lnVcx      = assert(outFld[1], "lnVCX.advance: Must specify an output field")
   
   local confIndexer  = uIon:genIndexer()

   local uIonItr      = uIon:get(1)
   local uNeutItr     = uNeut:get(1)
   local vtSqIonItr   = vtSqIon:get(1)
   local vtSqNeutItr  = vtSqNeut:get(1)
 
   local lnVcxItr     = lnVcx:get(1)

   local confRange = uIon:localRange()

   local confRangeDecomp = LinearDecomp.LinearDecompRange {
      range = confRange:selectFirst(cDim), numSplit = grid:numSharedProcs() }
   local tId = grid:subGridSharedId()    -- Local thread ID.
   
   -- Phase space loop
   for pIdx in phaseRangeDecomp:rowMajorIter(tId) do
      grid:setIndex(pIdx)
      grid:cellCenter(self.xc)
      
      uIon:fill(confIndexer(cIdx), uIonItr)
      uNeut:fill(confIndexer(cIdx), uNeutItr)      
      vtSqIon:fill(confIndexer(cIdx), vtSqIonItr)
      vtSqNeut:fill(confIndexer(cIdx), vtSqNeutItr)
      lnVcx:fill(confIndexer(cIdx), lnVcxItr)

      self._lnVcxCalc(uIonItr:data(), uNeutItr:data(), vtSqIonItr:data(), vtSqNeutItr:data(), lnVcxItr:data())
     
   end
   self._tmEvalMom = self._tmEvalMom + Time.clock() - tmEvalMomStart
end

function lnVCX:evalMomTime() return self._tmEvalMom end

return lnVCX
