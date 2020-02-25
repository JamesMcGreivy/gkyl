-- Gkyl ------------------------------------------------------------------------
--
-- Updater to calculate relative velocity v^* for the Pauls CX model
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
local relativeVelocityCX = Proto(UpdaterBase)

----------------------------------------------------------------------
-- Updater Initialization --------------------------------------------
function relativeVelocityCX:init(tbl)
   relativeVelocityCX.super.init(self, tbl) -- setup base object

   self._onGrid     = assert(tbl.onGrid,
			     "Updater.relativeVelocityCX: Must provide grid object using 'onGrid'")
   self._confBasis  = assert(tbl.confBasis,
			     "Updater.relativeVelocityCX: Must provide configuration space basis object using 'confBasis'")
   self._phaseBasis = assert(tbl.phaseBasis,
			     "Updater.relativeVelocityCX: Must provide phase space basis object using 'phaseBasis'")
   
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
   self._relativeVelocityCXCalc = ChargeExchangeDecl.vrelCX(self._basisID, self._cDim, self._vDim, self._polyOrder)

   self.onGhosts = xsys.pickBool(false, tbl.onGhosts)

   self._tmEvalMom = 0.0
end

----------------------------------------------------------------------
-- Updater Advance ---------------------------------------------------
function relativeVelocityCX:_advance(tCurr, inFld, outFld)
   local tmEvalMomStart = Time.clock()
   local grid = self._onGrid
   local pDim = self._pDim

   local u       = assert(inFld[1], "relativeVelocityCX.advance: Must specify fluid velocity as input[1]")
   local vtSq    = assert(inFld[2], "relativeVelocityCX.advance: Must specify squared thermal velocity as input[2]")
   local vrelCX  = assert(outFld[1], "relativeVelocityCX.advance: Must specify an output field")
   
   local confIndexer  = u:genIndexer()
   local phaseIndexer = vrelCX:genIndexer()

   local uItr      = u:get(1)
   local vtSqItr   = vtSq:get(1)
   local vrelCXItr = vrelCX:get(1)

   local phaseRange = vrelCX:localRange()

   local phaseRangeDecomp = LinearDecomp.LinearDecompRange {
      range = phaseRange:selectFirst(pDim), numSplit = grid:numSharedProcs() }
   local tId = grid:subGridSharedId()    -- Local thread ID.
   
   -- Phase space loop -- FIX THIS!
   for pIdx in phaseRangeDecomp:rowMajorIter(tId) do
      grid:setIndex(pIdx)
      grid:cellCenter(self.xc)
      
      u:fill(confIndexer(pIdx), uItr)
      vtSq:fill(confIndexer(pIdx), vtSqItr)
      vrelCX:fill(phaseIndexer(pIdx),vrelCXItr)

      self._relativeVelocityCXCalc(self.xc:data(), uItr:data(), vtSqItr:data(), vrelCXItr:data())
     
   end
   self._tmEvalMom = self._tmEvalMom + Time.clock() - tmEvalMomStart
end

function relativeVelocityCX:evalMomTime() return self._tmEvalMom end

return relativeVelocityCX
