local Proto = require "Lib.Proto"
local KineticSpecies = require "PlasmaApp.Species.KineticSpecies"
local GkEq = require "Eq.Gyrokinetic"
local Updater = require "Updater"
local DataStruct = require "DataStruct"

local GkSpecies = Proto(KineticSpecies)

function GkSpecies:alloc(nRkDup)
   -- allocate distribution function
   GkSpecies.super.alloc(self, nRkDup)

   -- allocate fields to store coupling moments (for use in coupling
   -- to field and collisions)
   self.dens = self:allocMoment()
   self.upar = self:allocMoment()
   self.ppar = self:allocMoment()
   self.pperp = self:allocMoment()
end

function GkSpecies:allocMomCouplingFields()
   -- this will become total charge density and current density
   return {self:allocMoment(), self:allocMoment()}
end

function GkSpecies:createSolver(hasPhi, hasApar)
   -- create updater to advance solution by one time-step
   local gkEqn = GkEq {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      charge = self.charge,
      mass = self.mass,
      hasPhi = hasPhi,
      hasApar = hasApar,
   }

   -- must apply zero-flux BCs in velocity directions
   local zfd = { }
   for d = 1, self.vdim do zfd[d] = self.cdim+d end

   self.solver = Updater.HyperDisCont {
      onGrid = self.grid,
      basis = self.basis,
      cfl = self.cfl,
      equation = gkEqn,
      zeroFluxDirections = zfd,
   }
   
   -- create updaters to compute various moments
   self.calcDens = Updater.DistFuncMomentCalc {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      moment = "GkDens",
   }
   self.calcUpar = Updater.DistFuncMomentCalc {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      moment = "GkUpar",
   }
   self.calcPpar = Updater.DistFuncMomentCalc {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      moment = "GkPpar",
   }
   self.calcPperp = Updater.DistFuncMomentCalc {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      moment = "GkPperp",
   }
end

function GkSpecies:createDiagnostics()
   GkSpecies.super.createDiagnostics(self)
   
   -- function to check if moment name is correct
   local function isMomentNameGood(nm)
      if nm == "GkDens" or nm == "GkUpar" or nm == "GkPpar" or nm == "GkPperp" then
         return true
      end
      return false
   end

   self.diagnosticMomentFields = { }
   self.diagnosticMomentUpdaters = { } 
   -- allocate space to store moments and create moment updater
   for i, mom in ipairs(self.diagnosticMoments) do
      if isMomentNameGood(nm) then
         self.diagnosticMomentFields[i] = DataStruct.Field {
            onGrid = self.confGrid,
            numComponents = self.confBasis:numBasis(),
            ghost = {1, 1}
         }
         self.diagnosticMomentUpdaters[i] = Updater.DistFuncMomentCalc {
            onGrid = self.grid,
            phaseBasis = self.basis,
            confBasis = self.confBasis,
            moment = mom,
         }
      else
         assert(false, string.format("Moment %s not valid", nm))
      end
   end
end

function GkSpecies:calcCouplingMoments(tCurr, dt, fIn)
   -- compute moments needed in coupling to fields and collisions
   self.calcDens:advance(tCurr, dt, {fIn}, { self.dens })
   self.calcUpar:advance(tCurr, dt, {fIn}, { self.upar })
end

function GkSpecies:incrementCouplingMoments(tCurr, dt, momOut)
   momOut[1]:accumulate(self.charge, self.dens)
   momOut[2]:accumulate(self.charge, self.upar)
end

function GkSpecies:fluidMoments()
   return { self.dens, self.upar, self.ppar, self.pperp } 
end

function GkSpecies:getDens()
   return self.dens
end

function GkSpecies:getUpar()
   return self.upar
end

function GkSpecies:momCalcTime()
   local tm = self.calcDens.totalTime
   tm = tm + self.calcUpar.totalTime
   for i, mom in ipairs(self.diagnosticMoments) do
      tm = tm + self.diagnosticMomentUpdaters[i].totalTime
   end
   return tm
end