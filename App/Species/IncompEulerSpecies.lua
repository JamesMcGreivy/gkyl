-- Gkyl ------------------------------------------------------------------------
--
-- Incompressible Euler equation in 2D.
--
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local DataStruct    = require "DataStruct"
local FluidSpecies  = require "App.Species.FluidSpecies"
local IncompEulerEq = require "Eq.IncompEuler"
local LinearDecomp  = require "Lib.LinearDecomp"
local Updater       = require "Updater"
local Mpi           = require "Comm.Mpi"
local Proto         = require "Lib.Proto"

local IncompEulerSpecies = Proto(FluidSpecies)

local SP_BC_ABSORB    = 1
local SP_BC_COPY      = 2
local SP_BC_ZEROFLUX  = 3
--local SP_BC_WALL      = 4  -- Not yet available for IncompEulerSpecies.
local SP_BC_DIRICHLET = 5    -- Specify the value (currently only for diffusion term).
local SP_BC_NEUMANN   = 6    -- Specify the derivative (currently only for diffusion term).
IncompEulerSpecies.bcAbsorb    = SP_BC_ABSORB       -- Absorb.
IncompEulerSpecies.bcCopy      = SP_BC_COPY         -- Copy skin-cell values.
IncompEulerSpecies.bcZeroFlux  = SP_BC_ZEROFLUX     -- Zero flux.
IncompEulerSpecies.bcDirichlet = SP_BC_DIRICHLET    -- Specify the value (currently only for diffusion term).
IncompEulerSpecies.bcNeumann   = SP_BC_NEUMANN      -- Specify the derivative (currently only for diffusion term).

function IncompEulerSpecies:fullInit(appTbl)
   IncompEulerSpecies.super.fullInit(self, appTbl)

   self.nMoments = 1
end

function IncompEulerSpecies:appendBoundaryConditions(dir, edge, bcType)
   -- Need to wrap member functions so that self is passed.
   local function bcAbsorbFunc(...)    return self:bcAbsorbFunc(...) end
   local function bcCopyFunc(...)      return self:bcCopyFunc(...) end
   local function bcDirichletFunc(...) return self:bcDirichletFunc(...) end
   local function bcNeumannFunc(...)   return self:bcNeumannFunc(...) end

   if bcType == SP_BC_ABSORB then
      table.insert(self.boundaryConditions, self:makeBcUpdater(dir, edge, { bcAbsorbFunc }, "pointwise"))
   elseif bcType == SP_BC_COPY then
      table.insert(self.boundaryConditions, self:makeBcUpdater(dir, edge, { bcCopyFunc }, "pointwise"))
   elseif bcType == SP_BC_ZEROFLUX then
      table.insert(self.zeroFluxDirections, dir)
   elseif bcType[1] == SP_BC_DIRICHLET then
      table.insert(self.boundaryConditions, self:makeBcUpdater(dir, edge, { bcDirichletFunc, bcType[1] }, "pointwise"))
   elseif bcType[1] == SP_BC_NEUMANN then
      table.insert(self.boundaryConditions, self:makeBcUpdater(dir, edge, { bcNeumannFunc, bcType[1] }, "pointwise"))
   else
      assert(false, "IncompEulerSpecies: Unsupported BC type!")
   end
end

function IncompEulerSpecies:createSolver(hasE, hasB)
   -- Run the FluidSpecies 'createSolver()' to initialize the
   -- collisions (diffusion) solver.
   IncompEulerSpecies.super.createSolver(self)

   if self.evolveCollisionless then
      -- Create updater to advance solution by one time-step.
      self.equation = IncompEulerEq {
         onGrid     = self.grid,
         basis      = self.basis,
         charge     = self.charge,
         positivity = self.positivity,
      }

      self.solver = Updater.HyperDisCont {
         onGrid             = self.grid,
         basis              = self.basis,
         cfl                = self.cfl,
         equation           = self.equation,
         zeroFluxDirections = self.zeroFluxDirections,
      }
   end
end

-- Nothing to calculate, just copy.
function IncompEulerSpecies:calcCouplingMoments(tCurr, rkIdx)
   local fIn = self:rkStepperFields()[rkIdx]
   self.couplingMoments:copy(fIn)
end

function IncompEulerSpecies:fluidMoments()
   return { self.couplingMoments }
end

-- For interfacing with GkField.
function IncompEulerSpecies:getNumDensity(rkIdx)
   if rkIdx == nil then return self.couplingMoments 
   else 
      self.couplingMoments:copy(self:rkStepperFields()[rkIdx])
      return self.couplingMoments
   end
end

function IncompEulerSpecies:suggestDt()
   return math.min(self.cfl/self.cflRateByCell:reduce('max')[1], GKYL_MAX_DOUBLE)
end

function IncompEulerSpecies:clearCFL()
   -- Clear cflRateByCell for next cfl calculation,
   self.cflRateByCell:clear(0.0)
end

return IncompEulerSpecies
