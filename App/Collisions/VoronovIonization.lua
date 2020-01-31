-- Gkyl ------------------------------------------------------------------------
--
-- PlasmaOnCartGrid support code: Voronov ionization operator
-- See:
-- Voronov, G.S., 1997. A practical fit formula for ionization rate
-- coefficients of atoms and ions by electron impact: Z= 1–28. Atomic
-- Data and Nuclear Data Tables, 65(1), pp.1-35.
--
--------------------------------------------------------------------------------

-- local Proto          = require "Lib.Proto"
-- local Updater        = require "Updater"
-- local CollisionsBase = require "App.Collisions.CollisionsBase"

local CollisionsBase = require "App.Collisions.CollisionsBase"
local Constants      = require "Lib.Constants"
local DataStruct     = require "DataStruct"
local Proto          = require "Lib.Proto"
local Time           = require "Lib.Time"
local Updater        = require "Updater"
local Mpi            = require "Comm.Mpi"
local lume           = require "Lib.lume"
local xsys           = require "xsys"

-- VoronovIonization -----------------------------------------------------------
--
-- Voronov ionization operator.
--------------------------------------------------------------------------------

local VoronovIonization = Proto(CollisionsBase)

-- This ctor simply stores what is passed to it and defers actual
-- construction to the fullInit() method below.
function VoronovIonization:init(tbl)
   self.tbl = tbl
end

-- Actual function for initialization. This indirection is needed as
-- we need the app top-level table for proper initialization.
function VoronovIonization:fullInit(speciesTbl)
   local tbl = self.tbl -- Previously store table.

   self.collKind = "Voronov"

   self.collidingSpecies = assert(tbl.collideWith, "App.VoronovIonization: Must specify names of species to collide with in 'collideWith'.")

   -- Set these values to be consistent with other collision apps
   self.selfCollisions  = false
   self.crossCollisions = true              
   self.varNu           = false
   self.timeDepNu       = false
   self.collFreqs       = {1}
   
   self.collideNm   = tbl.collideWith[1]
   
   self.elcNm       = assert(tbl.electrons, "App.VoronovIonization: Must specify electron species name in 'electrons'.")
   self.neutNm      = assert(tbl.neutrals, "App.VoronovIonization: Must specify electron species name in 'neutrals'.")
   
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
end

function VoronovIonization:setName(nm)
   self.name = nm
end
function VoronovIonization:setSpeciesName(nm)
   self.speciesName = nm
end

function VoronovIonization:setCfl(cfl)
   self.cfl = cfl
end

function VoronovIonization:setConfBasis(basis)
   self.confBasis = basis
end
function VoronovIonization:setConfGrid(grid)
   self.confGrid = grid
end

function VoronovIonization:setPhaseBasis(basis)
   self.phaseBasis = basis
end

function VoronovIonization:setPhaseGrid(grid)
   self.phaseGrid = grid
end

function VoronovIonization:createSolver(funcField)
   if (self.speciesName == self.elcNm) then 
      self.calcVoronovReactRate = Updater.VoronovIonization {
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

   self.coefM0 = DataStruct.Field {
      onGrid        = self.confGrid,
      numComponents = self.confBasis:numBasis(),
      ghost         = {1, 1},
   }
   
   self.voronovSrc = DataStruct.Field {
      onGrid        = self.phaseGrid,
      numComponents = self.phaseBasis:numBasis(),
      ghost         = {1, 1},
   }
end

function VoronovIonization:advance(tCurr, fIn, species, fRhsOut)
   
   local coefIz = species[self.elcNm]:getVoronovReactRate()

   -- Check whether particle is electron, neutral or ion species
   -- electrons
   if (self.speciesName == self.elcNm) then
      local neutM0   = species[self.neutNm]:fluidMoments()[1]
      local elcDistF = species[self.speciesName]:getDistF()

      self.confMult:advance(tCurr, {coefIz, neutM0}, {self.coefM0})
      self.collisionSlvr:advance(tCurr, {self.coefM0, elcDistF}, {self.voronovSrc})
      fRhsOut:accumulate(1.0,self.voronovSrc)
   -- neutrals   
   elseif (species[self.speciesName].charge == 0) then
      local elcM0  = species[self.elcNm]:fluidMoments()[1]
      local neutDistF = species[self.speciesName]:getDistF()

      self.confMult:advance(tCurr, {coefIz, elcM0}, {self.coefM0})
      self.collisionSlvr:advance(tCurr, {self.coefM0, neutDistF}, {self.voronovSrc})
      fRhsOut:accumulate(-1.0,self.voronovSrc)
   -- ions   
   else
      local elcM0  = species[self.elcNm]:fluidMoments()[1]
      local neutDistF = species[self.speciesName]:getDistF()

      self.confMult:advance(tCurr, {coefIz, elcM0}, {self.coefM0})
      self.collisionSlvr:advance(tCurr, {self.coefM0, neutDistF}, {self.voronovSrc})
      fRhsOut:accumulate(1.0,self.voronovSrc)
   end
end
   
function VoronovIonization:write(tm, frame)
end

function VoronovIonization:slvrTime()
   local time = self.confMult.totalTime
   time = time + self.collisionSlvr.totalTime
   return time
end

function VoronovIonization:momTime()
    if (self.speciesName == self.elcNm) then 
       return self.calcVoronovReactRate:evalMomTime()
    else
       return 0
    end
end

function VoronovIonization:projectMaxwellTime()
   local time = self.confMult.projectMaxwellTime()
   time = time + self.collisionSlvr.projectMaxwellTime
   return time
end

return VoronovIonization

