-- Gkyl ------------------------------------------------------------------------
--
-- Updater to calculate Voronov ionization for various species
--
--------------------------------------------------------------------------------

-- Gkyl libraries.
local UpdaterBase   = require "Updater.Base"
local LinearDecomp  = require "Lib.LinearDecomp"
local Proto         = require "Lib.Proto"
local VoronovDecl   = require "Updater.voronovCalcData.VoronovModDecl"
local xsys          = require "xsys"
local Lin           = require "Lib.Linalg"

-- Voronov Collisions updater object.
local VoronovIonization = Proto(UpdaterBase)

----------------------------------------------------------------------
-- Updater Initialization --------------------------------------------
function VoronovIonization:init(tbl)
   VoronovIonization.super.init(self, tbl) -- setup base object

   self._onGrid = assert(tbl.onGrid,
			  "Updater.VoronovIonization: Must provide grid object using 'onGrid'")
   self._confBasis = assert(tbl.confBasis,
			    "Updater.VoronovIonization: Must provide configuration space basis object using 'confBasis'")
   -- self._phaseGrid = assert(tbl.phaseGrid,
   -- 			    "Updater.VoronovIonization: Must provide phase space grid object using 'phaseGrid'")
   -- self._phaseBasis = assert(tbl.phaseBasis,
   -- 			     "Updater.VoronovIonization: Must provide phase space basis object using 'phaseBasis'")

   self._elcMass = assert(tbl.elcMass,
			  "Updater.VoronovIonization: Must provide electron mass using 'elcMass'")
   self._elemCharge = assert(tbl.elemCharge,
			     "Updater.VoronovIonization: Must provide elementary charge using 'elemCharge'")
   self._T = assert(tbl.T, 
		       "Updater.VoronovIonization: Must provide electron temp [eV] using 'elcTemp'")
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
   self._cDim = self._confBasis:ndim()
   -- Basis name and polynomial order.
   self._basisID   = self._confBasis:id()
   self._polyOrder = self._confBasis:polyOrder()

   -- Number of basis functions.
   self._numBasisC = self._confBasis:numBasis()

   -- Define Voronov reaction rate
   self._VoronovReactRateCalc = VoronovDecl.voronov(self._basisID, self._cDim, self._polyOrder)

   self.onGhosts = xsys.pickBool(false, tbl.onGhosts)
end

----------------------------------------------------------------------
-- Updater Advance ---------------------------------------------------
function VoronovIonization:_advance(tCurr, inFld, outFld)
   local grid = self._onGrid

   local elcM0    = inFld[1]
   local elcVtSq  = inFld[2]

   local confIndexer = elcM0:genIndexer()

   local elcM0Itr   = elcM0:get(1)
   local elcVtSqItr = elcVtSq:get(1)

   local nuIz       = outFld[1]
   local nuIzItr    = nuIz:get(1)

   local confRange = elcM0:localRange()
   if self.onGhosts then confRange = elcM0:localExtRange() end

   -- Construct ranges for nested loops.
   local confRangeDecomp = LinearDecomp.LinearDecompRange {
      range = confRange:selectFirst(self._cDim), numSplit = grid:numSharedProcs() }
   local tId = grid:subGridSharedId() -- Local thread ID.
   
   -- Configuration space loop
   for cIdx in confRangeDecomp:rowMajorIter(tId) do
      grid:setIndex(cIdx)
      
      elcM0:fill(confIndexer(cIdx), elcM0Itr)
      elcVtSq:fill(confIndexer(cIdx), elcVtSqItr)
      nuIz:fill(confIndexer(cIdx), nuIzItr)

      -- Check this function! 
      self._VoronovReactRateCalc(self._elemCharge, self._elcMass, elcM0Itr:data(), elcVtSqItr:data(), self._E, self._A, self._K, self._P, self._X, self._T, nuIzItr:data())
     
   end
end

return VoronovIonization
