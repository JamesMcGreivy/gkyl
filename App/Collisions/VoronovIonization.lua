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
   --self.ionNm       = tbl.ions
   self.neutOnNm    = tbl.neutralOn --Elc
   --self.neutOnIonNm = tbl.neutralOnIon
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
   self.collisionSlvr = Updater.VoronovIonization {
      onGrid     = self.confGrid, --species[self.elcNm].confGrid,
      confGrid   = self.confGrid, --species[self.elcNm].confGrid,
      confBasis  = self.confBasis, --species[self.elcNm].confBasis,
      phaseGrid  = self.phaseGrid, --species[self.elcNm].grid,
      phaseBasis = self.phaseBasis, --species[self.elcNm].basis,
      elcMass    = self.mass, --species[self.elcNm]:getMass(), 
      elemCharge = self.charge, --math.abs(species[self.elcNm]:getCharge()),  

      -- Voronov parameters
      A = self._A,
      E = self._E,
      K = self._K,
      P = self._P,
      X = self._X,
   }
end

-- NRM 11/13/18: this doesn't have the right signature...
function VoronovIonization:advance(tCurr, fIn, species, fRhsOut) --idxIn, outIdx, species)
   local elcMomFields = species[self.elcNm]:fluidMoments()
   local spOutFields  = {}
   -- for nm, sp in pairs(species) do
   --    spOutFields[nm] = sp:rkStepperFields()[outIdx]
   -- end
   spOutFields['fOut']        = species[self.speciesName]:getDistF()
   spOutFields['neutOnOut']   = species[self.neutOnNm]:getDistF()
   self.collisionSlvr:advance(tCurr, elcMomFields, spOutFields)
end

function VoronovIonization:write(tm, frame)
end

function VoronovIonization:slvrTime()
   return self.collisionSlvr.totalTime
end

function VoronovIonization:momTime()
   return self.collisionSlvr:evalMomTime()
end

function VoronovIonization:projectMaxwellTime()
   return self.collisionSlvr:projectMaxwellTime()
end

return VoronovIonization
