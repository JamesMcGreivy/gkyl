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

   self.selfCollisions = false
   
   self.elcNm       = tbl.electrons
   self.neutInNm    = tbl.collideWith[1]
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

function VoronovIonization:createSolver(funcField) --species)
   -- will need to fetch information when neutrals have different grid than elc/ion
   -- could grab grid from current neutral species
   -- print('Creating Voronov solver for ', self.speciesName, 'in Collisions App')
   if (self.speciesName == "elc") then 
      self.calcVoronovReactRate = Updater.VoronovIonization {
	 onGrid     = self.confGrid,
	 confBasis  = self.confBasis,
	 phaseGrid  = self.phaseGrid, 
	 phaseBasis = self.phaseBasis,
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

   self.phaseMul = Updater.CartFieldBinOp {
         onGrid     = self.phaseGrid,
         weakBasis  = self.phaseBasis,
         fieldBasis = self.confBasis,
         operation  = "Multiply",
   }

   self.voronovSrc = DataStruct.Field {
      onGrid        = self.phaseGrid,
      numComponents = self.phaseBasis:numBasis(),
      ghost         = {1, 1},
   }
end

function VoronovIonization:advance(tCurr, fIn, species, fRhsOut)

   local nuIz       = species[self.elcNm]:getVoronovReactRate()
   local neutDistF  = species[self.neutInNm]:getDistF()

   self.phaseMul:advance(tCurr, {nuIz, neutDistF}, {self.voronovSrc})

   fRhsOut:accumulate(1.0,self.voronovSrc) -- HARDCODED for evolving ion/elc (not neut)
end

function VoronovIonization:write(tm, frame)
end

function VoronovIonization:slvrTime()
   return self.calcVoronovReactRate.totalTime
end

function VoronovIonization:momTime()
   return 0 -- self.calcVoronovReactRate:evalMomTime() -- HARDCODED cause I'm not sure what to do
end

function VoronovIonization:projectMaxwellTime()
   return 0 -- self.calcVoronovReactRate:projectMaxwellTime()  -- HARDCODED cause I'm not sure what to do
end

return VoronovIonization
