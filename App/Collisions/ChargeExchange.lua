-- Gkyl ------------------------------------------------------------------------
--
-- PlasmaOnCartGrid support code: Charge exchange operator 
-- For details of model see:
-- H. L. Pauls, G. P. Zank, and L. L. Williams. Interaction of the solar wind
-- with the local interstellar medium. J. Geophys. Research,
-- 100:21,595 – 21,604, 1995
--
-- Meier, E. T. Modeling Plasmas with Strong Anisotropy, Neutral Fluid Effects,
-- and Open Boundaries. PhD thesis, U. Washington (2011).
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

-- ChargeExchange  --------------------------------------------------------
--
-- Charge Exchange Operator
--------------------------------------------------------------------------------

local ChargeExchange = Proto(CollisionsBase)

-- This ctor simply stores what is passed to it and defers actual
-- construction to the fullInit() method below.
function ChargeExchange:init(tbl)
   self.tbl = tbl
end

-- Actual function for initialization. This indirection is needed as
-- we need the app top-level table for proper initialization.
function ChargeExchange:fullInit(speciesTbl)
   local tbl = self.tbl -- Previously store table.

   self.collKind = "CX"

   self.collidingSpecies = assert(tbl.collideWith, "App.ChargeExchange: Must specify names of species to collide with in 'collideWith'.")

   self.collideNm   = tbl.collideWith[1]

   self.plasma      = assert(tbl.plasma, "App.ChargeExchange: Must specify plasma species in 'plasma' ('H', 'D', or 'Ne')")
   
   self.ionNm       = tbl.ions
   self.neutNm      = tbl.neutrals
   self.iMass       = tbl.ionMass
   self.nMass       = tbl.neutMass

   -- Set these values to be consistent with other collision apps
   self.selfCollisions  = false
   self.crossCollisions = true              
   self.varNu           = false
   self.timeDepNu       = false
   self.collFreqs       = {1}

   if self.plasma=='H' then
      self.a = 1.12e-18
      self.b = 7.15e-20
   elseif self.plasma=='D' then 
      self.a = 1.09e-18
      self.b = 7.15e-20
   end

end

function ChargeExchange:setName(nm)
   self.name = nm
end
function ChargeExchange:setSpeciesName(nm)
   self.speciesName = nm
end

function ChargeExchange:setCfl(cfl)
   self.cfl = cfl
end

function ChargeExchange:setConfBasis(basis)
   self.confBasis = basis
end
function ChargeExchange:setConfGrid(grid)
   self.confGrid = grid
end

function ChargeExchange:setPhaseBasis(basis)
   self.phaseBasis = basis
end

function ChargeExchange:setPhaseGrid(grid)
   self.phaseGrid = grid
end

function ChargeExchange:createSolver(funcField) --species)

   self.calcVrelCX = Updater.RelativeVelocityCX {
	 onGrid     = self.phaseGrid,
	 confBasis  = self.confBasis,
	 phaseBasis = self.phaseBasis,
   }

   self.collisionSlvr = Updater.SigmaCXcalc {
         onGrid     = self.confGrid,
         confBasis  = self.confBasis,
	 phaseBasis = self.phaseBasis,
	 a          = self.a,
	 b          = self.b,
   }
end

function ChargeExchange:advance(tCurr, fIn, species, fRhsOut)
   -- get CX source term from Vlasov
   local sourceCX = species[self.ionNm]:getSrcCX()
   
   -- identify species and accumulate
   if (self.speciesName == self.ionNm) then
      fRhsOut:accumulate(1.0,sourceCX)
   elseif (self.speciesName == self.neutNm) then
      fRhsOut:accumulate(-self.iMass/self.nMass,sourceCX)
   end
   
end
   
function ChargeExchange:write(tm, frame)
end

function ChargeExchange:slvrTime()
   return self.collisionSlvr.totalTime
end

function ChargeExchange:momTime()
   return 0
end

function ChargeExchange:projectMaxwellTime()
   return self.collisionSlvr:projectMaxwellTime()
end

return ChargeExchange

