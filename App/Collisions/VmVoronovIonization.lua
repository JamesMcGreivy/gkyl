-- Gkyl ------------------------------------------------------------------------
--
-- PlasmaOnCartGrid support code: Voronov ionization operator
-- See:
-- Voronov, G.S., 1997. A practical fit formula for ionization rate
-- coefficients of atoms and ions by electron impact: Z= 1–28. Atomic
-- Data and Nuclear Data Tables, 65(1), pp.1-35.
--
--------------------------------------------------------------------------------

local CollisionsBase = require "App.Collisions.CollisionsBase"
local Constants      = require "Lib.Constants"
local DataStruct     = require "DataStruct"
local Proto          = require "Lib.Proto"
local Time           = require "Lib.Time"
local Updater        = require "Updater"
local Mpi            = require "Comm.Mpi"
local lume           = require "Lib.lume"
local xsys           = require "xsys"

-- VmVoronovIonization -----------------------------------------------------------
--
-- Voronov ionization operator.
--------------------------------------------------------------------------------

local VmVoronovIonization = Proto(CollisionsBase)

-- This ctor simply stores what is passed to it and defers actual
-- construction to the fullInit() method below.
function VmVoronovIonization:init(tbl)
   self.tbl = tbl
end

-- Actual function for initialization. This indirection is needed as
-- we need the app top-level table for proper initialization.
function VmVoronovIonization:fullInit(speciesTbl)
   local tbl = self.tbl -- Previously store table.

   self.collKind = "Voronov"

   self.collidingSpecies = assert(tbl.collideWith, "App.VmVoronovIonization: Must specify names of species to collide with in 'collideWith'.")

   -- Set these values to be consistent with other collision apps
   self.selfCollisions  = false
   self.crossCollisions = true              
   self.varNu           = false
   self.timeDepNu       = false
   self.collFreqs       = {1}
   
   self.collideNm   = tbl.collideWith[1]
   
   self.elcNm       = assert(tbl.electrons, "App.VmVoronovIonization: Must specify electron species name in 'electrons'.")
   self.neutNm      = assert(tbl.neutrals, "App.VmVoronovIonization: Must specify electron species name in 'neutrals'.")
   
   self.plasma      = tbl.plasma
   self.mass        = tbl.elcMass
   self.charge      = tbl.elemCharge

   if self.plasma == "H" then
      self._E = 13.6
      self._P = 0
      self._A = 2.91e-14
      self._K = 0.39
      self._X = 0.232
   end

   self._tmEvalMom = 0.0 
end

function VmVoronovIonization:setName(nm)
   self.name = nm
end
function VmVoronovIonization:setSpeciesName(nm)
   self.speciesName = nm
end

function VmVoronovIonization:setCfl(cfl)
   self.cfl = cfl
end

function VmVoronovIonization:setConfBasis(basis)
   self.confBasis = basis
end
function VmVoronovIonization:setConfGrid(grid)
   self.confGrid = grid
end

function VmVoronovIonization:setPhaseBasis(basis)
   self.phaseBasis = basis
end

function VmVoronovIonization:setPhaseGrid(grid)
   self.phaseGrid = grid
end

function VmVoronovIonization:createSolver(funcField)
   if (self.speciesName == self.elcNm) then
      self.calcVoronovReactRate = Updater.VoronovReactRateCoef {
	 onGrid     = self.confGrid,
	 confBasis  = self.confBasis,
	 elcMass    = self.mass,
	 elemCharge = self.charge,
      
	 -- Voronov parameters
	 A = self._A,
	 E = self._E,
	 K = self._K,
	 P = self._P,
	 X = self._X,
      }
      self.calcIonizationTemp = Updater.IonizationTempCalc {
	 onGrid     = self.confGrid,
	 confBasis  = self.confBasis,
	 elcMass    = self.mass,
	 elemCharge = self.charge,
      	 E          = self._E,       -- ionization energy
      }
      -- fields for elc ionization maxwellian
      self.maxwellIz = Updater.MaxwellianOnBasis {
	 onGrid     = self.phaseGrid,
	 confGrid   = self.confGrid,
	 confBasis  = self.confBasis,
	 phaseGrid  = self.phaseGrid,
	 phaseBasis = self.phaseBasis,
      }
      self.fMaxwellIz  = DataStruct.Field {
	 onGrid        = self.phaseGrid,
	 numComponents = self.phaseBasis:numBasis(),
	 ghost         = {1, 1},
      }
      self.sumDistF    = DataStruct.Field {
	 onGrid        = self.phaseGrid,
	 numComponents = self.phaseBasis:numBasis(),
	 ghost         = {1, 1},
      }
   end

   
   self.confMult = Updater.CartFieldBinOp {
         onGrid     = self.confGrid,
         weakBasis  = self.confBasis,
         operation  = "Multiply",
   }
   self.collisionSlvr = Updater.CartFieldBinOp {
         onGrid     = self.phaseGrid,
         weakBasis  = self.phaseBasis,
         fieldBasis = self.confBasis,
         operation  = "Multiply",
   }
   self.m0elc = DataStruct.Field {
      onGrid        = self.confGrid,
      numComponents = self.confBasis:numBasis(),
      ghost         = {1, 1},
   }
   self.coefM0 = DataStruct.Field {
      onGrid        = self.confGrid,
      numComponents = self.confBasis:numBasis(),
      ghost         = {1, 1},
   }
   self.neutDistF = DataStruct.Field {
      onGrid        = self.phaseGrid,
      numComponents = self.phaseBasis:numBasis(),
      ghost         = {1, 1},
   }
   self.voronovSrc = DataStruct.Field {
      onGrid        = self.phaseGrid,
      numComponents = self.phaseBasis:numBasis(),
      ghost         = {1, 1},
   }
   -- For testing and debugging purposes
   self.numDensityCalc = Updater.DistFuncMomentCalc {
      onGrid     = self.phaseGrid,
      phaseBasis = self.phaseBasis,
      confBasis  = self.confBasis,
      moment     = "M0",
   }
   self.sumDistFM0  = DataStruct.Field {
      onGrid        = self.confGrid,
      numComponents = self.confBasis:numBasis(),
      ghost         = {1, 1},
   }
end

function VmVoronovIonization:advance(tCurr, fIn, species, fRhsOut)
   local coefIz = species[self.elcNm]:getVoronovReactRate()
   local distFn = species[self.neutNm]:getDistF()
   local elcM0  = species[self.elcNm]:fluidMoments()[1]

   -- Check whether particle is electron, neutral or ion species
   if (self.speciesName == self.elcNm) then
      -- electrons
      tmEvalMomStart = Time.clock()
      local neutM0   = species[self.neutNm]:fluidMoments()[1]
      local neutU    = species[self.neutNm]:selfPrimitiveMoments()[1]
      local elcDistF = species[self.speciesName]:getDistF()
      local vtSqIz   = species[self.elcNm]:getIonizationVtSq()

      self.m0elc:copy(elcM0)
      self.maxwellIz:advance(tCurr, {self.m0elc, neutU, vtSqIz}, {self.fMaxwellIz})
      self.sumDistF:combine(2.0,self.fMaxwellIz,-1.0,elcDistF)
      self.numDensityCalc:advance(tCurr, {self.sumDistF}, {self.sumDistFM0})

      self._tmEvalMom = self._tmEvalMom + Time.clock() - tmEvalMomStart
      
      self.confMult:advance(tCurr, {coefIz, neutM0}, {self.coefM0})
      self.collisionSlvr:advance(tCurr, {self.coefM0, self.sumDistF}, {self.voronovSrc})
       
      fRhsOut:accumulate(1.0,self.voronovSrc)
   elseif (species[self.speciesName].charge == 0) then
      -- neutrals
      tmEvalMomStart = Time.clock()
      self.m0elc:copy(elcM0)
      self.neutDistF:copy(distFn)

      self._tmEvalMom = self._tmEvalMom + Time.clock() - tmEvalMomStart
      
      self.confMult:advance(tCurr, {coefIz, self.m0elc}, {self.coefM0})
      self.collisionSlvr:advance(tCurr, {self.coefM0, self.neutDistF}, {self.voronovSrc})
      fRhsOut:accumulate(-1.0,self.voronovSrc)  
   else
      -- ions 
      tmEvalMomStart = Time.clock()
      self.m0elc:copy(elcM0)
      self.neutDistF:copy(distFn)

      self._tmEvalMom = self._tmEvalMom + Time.clock() - tmEvalMomStart

      self.confMult:advance(tCurr, {coefIz, self.m0elc}, {self.coefM0})
      self.collisionSlvr:advance(tCurr, {self.coefM0, self.neutDistF}, {self.voronovSrc})
      fRhsOut:accumulate(1.0,self.voronovSrc)
   end
end
   
function VmVoronovIonization:write(tm, frame)
end

function VmVoronovIonization:slvrTime()
   local time = self.confMult.totalTime
   time = time + self.collisionSlvr.totalTime
   return time
end

function VmVoronovIonization:momTime()
    if (self.speciesName == self.elcNm) then 
       return self.calcVoronovReactRate:evalMomTime() + self._tmEvalMom
    else
       return self._tmEvalMom
    end
end

function VmVoronovIonization:projectMaxwellTime()
   local time = self.confMult.projectMaxwellTime()
   time = time + self.collisionSlvr.projectMaxwellTime
   return time
end

return VmVoronovIonization

