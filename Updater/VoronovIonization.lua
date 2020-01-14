-- Gkyl ------------------------------------------------------------------------
--
-- Updater to calculate Voronov ionization for various species
--
--------------------------------------------------------------------------------

-- Gkyl libraries.
local GaussQuadRules = require "Lib.GaussQuadRules"
local Lin            = require "Lib.Linalg"
local Proto          = require "Proto"
local Range          = require "Lib.Range"
local Time           = require "Lib.Time"
local UpdaterBase    = require "Updater.Base"

-- Voronov Collisions updater object.
local VoronovIonization = Proto(UpdaterBase)

----------------------------------------------------------------------
-- Updater Initialization --------------------------------------------
function VoronovIonization:init(tbl)
   VoronovIonization.super.init(self, tbl) -- setup base object

   self._confGrid = assert(tbl.confGrid,
			   "Updater.VoronovIonization: Must provide configuration space grid object using 'confGrid'")
   self._confBasis = assert(tbl.confBasis,
			    "Updater.VoronovIonization: Must provide configuration space basis object using 'confBasis'")
   self._phaseGrid = assert(tbl.phaseGrid,
			    "Updater.VoronovIonization: Must provide phase space grid object using 'phaseGrid'")
   self._phaseBasis = assert(tbl.phaseBasis,
			     "Updater.VoronovIonization: Must provide phase space basis object using 'phaseBasis'")

   self._elcMass = assert(tbl.elcMass,
			  "Updater.VoronovIonization: Must provide electron mass using 'elcMass'")
   self._elemCharge = assert(tbl.elemCharge,
			    "Updater.VoronovIonization: Must provide elementary charge using 'elemCharge'")
   self._A = assert(tbl.A,
		    "Updater.VoronovIonization: Must provide Voronov constant A using 'A'")
   self._E = assert(tbl.E,
		    "Updater.VoronovIonization: Must provide Voronov constant E using 'E'")
   self._K = assert(tbl.K,
		    "Updater.VoronovIonization: Must provide Voronov constant K using 'K'")
   self._P = assert(tbl.P,
		    "Updater.VoronovIonization: Must provide Voronov constant P using 'P'")
   self._X = assert(tbl.X,
		    "Updater.VoronovIonization: Must provide Voronov constant X using 'X'")

   -- Dimension of configuration space.
   self._cDim = confBasis:ndim()
   -- Basis name and polynomial order.
   self._basisID   = confBasis:id()
   self._polyOrder = confBasis:polyOrder()

   -- Number of basis functions.
   self._numBasisC = confBasis:numBasis()

   -- Define Voronov kernel
   self._VoronovReactRateCellAv = VoronovDecl.selectCellAveVoronov(self._basisID, self._cDim, self._polyOrder)
  
end

----------------------------------------------------------------------
-- Updater Advance ---------------------------------------------------
function VoronovIonization:_advance(tCurr, inFld, outFld)

   local grid = self._onGrid

   local elcM0    = inFld[1]
   local elcVtSq  = inFld[2]
   local nuIz     = outFld[1]
   
   local elcM0Itr   = elcM0:get(1)
   local elcVtSqItr = elcVtSq:get(1)
   local nuIzIter   = nuIz:get(1)

   -- Get the Ranges to loop over the domain
   local confRange = elcM0:localRange()
   local confIndexer = elcM0:genIndexer()

   if self.onGhosts then confRange = m0Self:localExtRange() end

   -- Construct ranges for nested loops.
   local confRangeDecomp = LinearDecomp.LinearDecompRange {
      range = confRange:selectFirst(self._cDim), numSplit = grid:numSharedProcs() }
   local tId = grid:subGridSharedId() -- Local thread ID.
   
   -- Configuration space loop
   for cIdx in confRange:colMajorIter(tId) do
      
      elcM0:fill(confIndexer(cIdx), elcM0Itr)
      elcVtSq:fill(confIndexer(cIdx), elcVtSqItr)
      nuIz:fill(confIndexer(cIdx), nuIzItr)

      self._VoronovReactRateCalc(self._elemCharge, self._elcMass, elcM0Iter:data(), elcVtSqIter:data(), nuIzItr:data(), self._E, self._A, self._K, self._P, self._X)
     
   end
end

return VoronovIonization
