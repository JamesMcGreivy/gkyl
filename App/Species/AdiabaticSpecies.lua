local Proto = require "Lib.Proto"
local FluidSpecies = require "App.Species.FluidSpecies"

local AdiabaticSpecies = Proto(FluidSpecies)

function AdiabaticSpecies:fullInit(appTbl)
   AdiabaticSpecies.super.fullInit(self, appTbl)

   self.nMoments = 1

   self._temp = self.tbl.temp

   assert(self.evolve==false, "AdiabaticSpecies: cannot evolve an adiabatic species")
end

function AdiabaticSpecies:createSolver(hasE, hasB)
   -- compute density in center of domain
   local gridCenter = {}
   for d = 1, self.ndim do
      gridCenter[d] = (self.grid:upper(d) + self.grid:lower(d))/2
   end
   self._dens0 = self.initFunc(0, gridCenter)
end

-- nothing to calculate, just copy
function AdiabaticSpecies:calcCouplingMoments(tCurr, dt, fIn)
   self.couplingMoments:copy(fIn)
end

function AdiabaticSpecies:fluidMoments()
   return { self.couplingMoments }
end

-- for interfacing with GkField
function AdiabaticSpecies:getDens()
   return self.couplingMoments
end

function AdiabaticSpecies:temp()
   return self._temp
end

function AdiabaticSpecies:dens0()
   return self._dens0
end

-- this is factor on potential in qneut equation
function AdiabaticSpecies:qneutFac()
   return self._dens0*self.charge^2/self._temp
end

return AdiabaticSpecies
