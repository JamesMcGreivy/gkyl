local Proto = require "Lib.Proto"
local KineticSpecies = require "GkylApp.Species.KineticSpecies"
local Eq = require "Eq"
local Updater = require "Updater"
local DataStruct = require "DataStruct"

local VlasovSpecies = Proto(KineticSpecies)

function VlasovSpecies:alloc(nRkDup)
   -- allocate distribution function
   VlasovSpecies.super.alloc(self, nRkDup)

   -- allocate fields to store coupling moments (for use in coupling
   -- to field and collisions)
   self.numDensity = self:allocMoment()
   self.momDensity = self:allocVectorMoment(self.vdim)
   self.ptclEnergy = self:allocMoment()
end

function VlasovSpecies:allocMomCouplingFields()
   -- only need currents for coupling to fields (returning a table
   -- with single entry, i.e. space to store currents)
   return {self:allocVectorMoment(self.vdim)}
end

function VlasovSpecies:createSolver(hasE, hasB)
   -- create updater to advance solution by one time-step
   local vlasovEqn = Eq.Vlasov {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      charge = self.charge,
      mass = self.mass,
      hasElectricField = hasE,
      hasMagneticField = hasB,
   }
 
   -- must apply zero-flux BCs in velocity directions
   local zfd = { }
   for d = 1, self.vdim do zfd[d] = self.cdim+d end

   self.solver = Updater.HyperDisCont {
      onGrid = self.grid,
      basis = self.basis,
      cfl = self.cfl,
      equation = vlasovEqn,
      zeroFluxDirections = zfd,
   }
   
   -- create updaters to compute various moments
   self.numDensityCalc = Updater.DistFuncMomentCalc {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      moment = "M0",
   }
   self.momDensityCalc = Updater.DistFuncMomentCalc {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      moment = "M1i",
   }
   self.ptclEnergyCalc = Updater.DistFuncMomentCalc {
      onGrid = self.grid,
      phaseBasis = self.basis,
      confBasis = self.confBasis,
      moment = "M2",
   }   
end

function VlasovSpecies:createDiagnostics()
   VlasovSpecies.super.createDiagnostics(self)

   -- function to check if moment name is correct
   local function isMomentNameGood(nm)
      if nm == "M0" or nm == "M1i" or nm == "M2ij" or nm == "M2" or nm == "M3i" then
         return true
      end
      return false
   end

   local numComp = {}
   numComp["M0"] = 1
   numComp["M1i"] = self.vdim
   numComp["M2ij"] = self.vdim*(self.vdim+1)/2
   numComp["M2"] = 1
   numComp["M3i"] = self.vdim
   
   self.diagnosticMomentFields = { }
   self.diagnosticMomentUpdaters = { } 
   -- allocate space to store moments and create moment updater
   for i, mom in ipairs(self.diagnosticMoments) do
      if isMomentNameGood(mom) then
         self.diagnosticMomentFields[i] = DataStruct.Field {
            onGrid = self.confGrid,
            numComponents = self.confBasis:numBasis()*numComp[mom],
            ghost = {1, 1}
         }
         self.diagnosticMomentUpdaters[i] = Updater.DistFuncMomentCalc {
            onGrid = self.grid,
            phaseBasis = self.basis,
            confBasis = self.confBasis,
            moment = mom,
         }
      else
         assert(false, string.format("Moment %s not valid", mom))
      end
   end
end

function VlasovSpecies:calcCouplingMoments(tCurr, dt, fIn)
   -- compute moments needed in coupling to fields and collisions
   self.numDensityCalc:advance(tCurr, dt, {fIn}, { self.numDensity })
   self.momDensityCalc:advance(tCurr, dt, {fIn}, { self.momDensity })
   self.ptclEnergyCalc:advance(tCurr, dt, {fIn}, { self.ptclEnergy })
end

function VlasovSpecies:incrementCouplingMoments(tCurr, dt, momOut)
   momOut[1]:accumulate(self.charge, self.momDensity)
end

function VlasovSpecies:fluidMoments()
   return { self.numDensity, self.momDensity, self.ptclEnergy } 
end

function VlasovSpecies:getNumDensity()
   return self.numDensity
end

function VlasovSpecies:getMomDensity()
   return self.momDensity
end

function VlasovSpecies:momCalcTime()
   local tm = self.momDensityCalc.totalTime
   for i, mom in ipairs(self.diagnosticMoments) do
      tm = tm + self.diagnosticMomentUpdaters[i].totalTime
   end
   return tm
end

return VlasovSpecies
