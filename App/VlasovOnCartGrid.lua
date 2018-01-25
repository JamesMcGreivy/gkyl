-- Gkyl ------------------------------------------------------------------------
--
-- Vlasov solver on a Cartesian grid. Works in arbitrary CDIM/VDIM
-- (VDIM>=CDIM) with either Maxwell, Poisson or specified EM fields.
--
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local AdiosCartFieldIo = require "Io.AdiosCartFieldIo"
local Basis = require "Basis"
local BoundaryCondition = require "Updater.BoundaryCondition"
local DataStruct = require "DataStruct"
local DecompRegionCalc = require "Lib.CartDecomp"
local Field = require "App.VlasovOnCartGridField"
local Grid = require "Grid"
local Lin = require "Lib.Linalg"
local LinearTrigger = require "LinearTrigger"
local Logger = require "Lib.Logger"
local Mpi = require "Comm.Mpi"
local Proto = require "Lib.Proto"
local Species = require "App.VlasovOnCartGridSpecies"
local Time = require "Lib.Time"
local Updater = require "Updater"
local date = require "Lib.date"
local xsys = require "xsys"

-- function to create basis functions
local function createBasis(nm, ndim, polyOrder)
   if nm == "serendipity" then
      return Basis.CartModalSerendipity { ndim = ndim, polyOrder = polyOrder }
   elseif nm == "maximal-order" then
      return Basis.CartModalMaxOrder { ndim = ndim, polyOrder = polyOrder }
   end   
end

-- top-level method to build application "run" method
local function buildApplication(self, tbl)
   -- create logger
   local log = Logger {
      logToFile = xsys.pickBool(tbl.logToFile, true)
   }

   log(date(false):fmt()) -- time-stamp for sim start

   -- function to warn user about default values
   local function warnDefault(varVal, varNm, default)
      if varVal then return varVal end
      log(string.format(" ** WARNING: %s not specified, assuming %s", varNm, tostring(default)))
      return default
   end

   log("Initializing VlasovOnCartGrid simulation ...")
   local tmStart = Time.clock()

   local cdim = #tbl.lower -- configuration space dimensions
   assert(cdim == #tbl.upper, "upper should have exactly " .. cdim .. " entries")
   assert(cdim == #tbl.cells, "cells should have exactly " .. cdim .. " entries")

   -- basis function name
   local basisNm = warnDefault(tbl.basis, "basis", "serendipity")
   if basisNm ~= "serendipity" and basisNm ~= "maximal-order" then
      assert(false, "Incorrect basis type " .. basisNm .. " specified")
   end

   -- polynomial order
   local polyOrder = tbl.polyOrder

   -- create basis function for configuration space
   local confBasis = createBasis(basisNm, cdim, polyOrder)

   -- I/O method
   local ioMethod = tbl.ioMethod and tbl.ioMethod or "MPI"
   if ioMethod ~= "POSIX" and ioMethod ~= "MPI" then
      assert(false, "ioMethod must be one of 'MPI' or 'POSIX'. Provided '" .. ioMethod .. "' instead")
   end

   -- time-stepper
   local timeStepperNm = warnDefault(tbl.timeStepper, "timeStepper", "rk3")
   if timeStepperNm ~= "rk1" and timeStepperNm ~= "rk2" and timeStepperNm ~= "rk3" and timeStepperNm ~= "rk3s4" then
      assert(false, "Incorrect timeStepper type " .. timeStepperNm .. " specified")
   end

   -- CFL fractions for various steppers
   local stepperCFLFracs = { rk1 = 1.0, rk2 = 1.0, rk3 = 1.0, rk3s4 = 2.0 }

   local cflFrac = tbl.cflFrac
   -- Compute CFL fraction if not specified
   if  cflFrac == nil then
      cflFrac = stepperCFLFracs[timeStepperNm]
   end

   -- Number of fields needed for each stepper type
   local stepperNumFields = { rk1 = 3, rk2 = 3, rk3 = 3, rk3s4 = 4 }

   -- parallel decomposition stuff
   local decompCuts = tbl.decompCuts
   if tbl.decompCuts then
      assert(cdim == #tbl.decompCuts, "decompCuts should have exactly " .. cdim .. " entries")
   else
      -- if not specified, use 1 processor
      decompCuts = {}
      for d = 1, cdim do decompCuts[d] = 1 end
   end
   local useShared = xsys.pickBool(tbl.useShared, false)

   -- extract periodic directions
   local periodicDirs = {}
   if tbl.periodicDirs then
      for i, d in ipairs(tbl.periodicDirs) do
	 if d<1 and d>3 then
	    assert(false, "Directions in periodicDirs table should be 1 (for X), 2 (for Y) or 3 (for Z)")
	 end
	 periodicDirs[i] = d
      end
   end

   -- read in information about each species
   local species = {}
   for nm, val in pairs(tbl) do
      if Species.is(val) then
	 val:fullInit(tbl) -- initialize species
	 species[nm] = val
	 species[nm]:setName(nm)
	 species[nm]:setIoMethod(ioMethod)
      end
   end

   local cflMin = GKYL_MAX_DOUBLE
   -- compute CFL numbers
   for _, s in pairs(species) do
      local ndim = cdim+s:ndim()
      local myCfl = tbl.cfl and tbl.cfl or cflFrac/(ndim*(2*polyOrder+1))
      cflMin = math.min(cflMin, myCfl)
      s:setCfl(cflMin)
   end

   -- setup each species
   for _, s in pairs(species) do
      s:createGrid(tbl.lower, tbl.upper, tbl.cells, decompCuts, periodicDirs)
      s:setConfBasis(confBasis)
      s:createBasis(basisNm, polyOrder)
   end
   
   -- configuration space decomp object (eventually, this will be
   -- slaved to the phase-space decomp)
   local decomp = DecompRegionCalc.CartProd {
      cuts = decompCuts,
      useShared = useShared,
   }

   -- setup configuration space grid
   local grid = Grid.RectCart {
      lower = tbl.lower,
      upper = tbl.upper,
      cells = tbl.cells,
      periodicDirs = periodicDirs,
      decomposition = decomp,
   }

   -- set conf grid for each species
   for _, s in pairs(species) do
      s:setConfGrid(grid)
      s:alloc(stepperNumFields[timeStepperNm])
   end   

   -- setup information about fields: if this is not specified, it is
   -- assumed there are no force terms (neutral particles)
   local field = tbl.field and tbl.field or Field.NoField {}
   field:fullInit(tbl) -- complete initialization
   field:setIoMethod(ioMethod)
   field:setBasis(confBasis)
   field:setGrid(grid)
   do
      local myCfl = tbl.cfl and tbl.cfl or cflFrac/(cdim*(2*polyOrder+1))
      cflMin = math.min(cflMin, myCfl)
      field:setCfl(myCfl)
   end
   log(string.format("Using CFL number %g", cflMin))
   
   -- allocate field data
   field:alloc(stepperNumFields[timeStepperNm])

   -- initialize species solvers and diagnostics
   for _, s in pairs(species) do
      local hasE, hasB = field:hasEB()
      s:createSolver(hasE, hasB)
      s:createDiagnostics()
   end

   -- initialize field solvers and diagnostics
   field:createSolver()
   field:createDiagnostics()

   -- initialize species distributions and field
   for _, s in pairs(species) do
      s:initDist()
   end
   field:initField()

   -- function to write data to file
   local function writeData(tCurr)
      for _, s in pairs(species) do s:write(tCurr) end
      field:write(tCurr)
   end

   writeData(0.0) -- write initial conditions
   
   -- store fields used in RK time-stepping for each species
   local speciesRkFields = { }
   for nm, s in pairs(species) do
      speciesRkFields[nm] = s:rkStepperFields()
   end
   -- store fields from EM field for RK time-stepper
   local emRkFields = field:rkStepperFields()

   local momCouplingFields = {}
   -- store fields needed in coupling particles and fields (only a
   -- single set is needed)
   do 
      local c = 0
      for _, s in pairs(species) do
	 if c == 0 then
	    momCouplingFields = s:allocMomCouplingFields()
	 end
	 c = c+1
      end
   end

   -- function to set all coupling fields to 0.0
   local function clearMomCouplingFields()
      for _, f in ipairs(momCouplingFields) do
	 f:clear(0.0)
      end
   end

   -- function to take a single forward-euler time-step
   local function fowardEuler(tCurr, dt, inIdx, outIdx)
      local status, dtSuggested = true, GKYL_MAX_DOUBLE
      clearMomCouplingFields()
      -- update species
      for nm, s in pairs(species) do
	 local myStatus, myDtSuggested = s:forwardEuler(
	    tCurr, dt, speciesRkFields[nm][inIdx], emRkFields[inIdx], speciesRkFields[nm][outIdx])
	 
	 status = status and myStatus
	 dtSuggested = math.min(dtSuggested, myDtSuggested)
	 s:applyBc(tCurr, dt, speciesRkFields[nm][outIdx])

	 -- increment charges/currents needed in coupling with fields
	 -- (we need to use inIdx here and not outIdx as in an explict
	 -- scheme, things that go into the forward Euler must be from
	 -- the previous time-step
	 s:incrementCouplingMoments(tCurr, dt, speciesRkFields[nm][inIdx], momCouplingFields)
      end
      -- update EM field
      local myStatus, myDtSuggested = field:forwardEuler(
	 tCurr, dt, emRkFields[inIdx], momCouplingFields, emRkFields[outIdx])
      
      status = status and myStatus
      dtSuggested = math.min(dtSuggested, myDtSuggested)
      field:applyBc(tCurr, dt, emRkFields[outIdx])
      
      return status, dtSuggested
   end

   -- various functions to copy/increment fields
   local function copy1(aIdx, outIdx)
      for nm, s in pairs(species) do
	 speciesRkFields[nm][outIdx]:copy(speciesRkFields[nm][aIdx])
      end
      if emRkFields[aIdx] then -- only increment EM fields if there are any
	 emRkFields[outIdx]:copy(emRkFields[aIdx])
      end
   end
   local function combine2(a, aIdx, b, bIdx, outIdx)
      for nm, s in pairs(species) do
	 speciesRkFields[nm][outIdx]:combine(a, speciesRkFields[nm][aIdx], b, speciesRkFields[nm][bIdx])
      end
      if emRkFields[aIdx] then -- only increment EM fields if there are any
	 emRkFields[outIdx]:combine(a, emRkFields[aIdx], b, emRkFields[bIdx])
      end
   end
   local function combine3(a, aIdx, b, bIdx, c, cIdx, outIdx)
      for nm, s in pairs(species) do
	 speciesRkFields[nm][outIdx]:combine(
	    a, speciesRkFields[nm][aIdx], b, speciesRkFields[nm][bIdx], c, speciesRkFields[nm][cIdx])
      end
      if emRkFields[aIdx] then -- only increment EM fields if there are any
	 emRkFields[outIdx]:combine(
	    a, emRkFields[aIdx], b, emRkFields[bIdx], c, emRkFields[cIdx])
      end
   end
  
   local timeSteppers = {} -- various time-steppers

   -- function to advance solution using RK1 scheme (UNSTABLE! Only for testing)
   function timeSteppers.rk1(tCurr, dt)
      local status, dtSuggested
      status, dtSuggested = fowardEuler(tCurr, dt, 1, 2)
      if status == false then return status, dtSuggested end
      copy1(2, 1)

      return status, dtSuggested      
   end

   -- function to advance solution using SSP-RK2 scheme
   function timeSteppers.rk2(tCurr, dt)
      local status, dtSuggested
      -- RK stage 1
      status, dtSuggested = fowardEuler(tCurr, dt, 1, 2)
      if status == false then return status, dtSuggested end

      -- RK stage 2
      status, dtSuggested = fowardEuler(tCurr, dt, 2, 3)
      if status == false then return status, dtSuggested end
      combine2(1.0/2.0, 1, 1.0/2.0, 3, 2)
      copy1(2, 1)
      
      return status, dtSuggested
   end

   -- function to advance solution using SSP-RK3 scheme
   function timeSteppers.rk3(tCurr, dt)
      local status, dtSuggested
      -- RK stage 1
      status, dtSuggested = fowardEuler(tCurr, dt, 1, 2)
      if status == false then return status, dtSuggested end

      -- RK stage 2
      status, dtSuggested = fowardEuler(tCurr, dt, 2, 3)
      if status == false then return status, dtSuggested end
      combine2(3.0/4.0, 1, 1.0/4.0, 3, 2)

      -- RK stage 3
      status, dtSuggested = fowardEuler(tCurr, dt, 2, 3)
      if status == false then return status, dtSuggested end
      combine2(1.0/3.0, 1, 2.0/3.0, 3, 2)
      copy1(2, 1)

      return status, dtSuggested
   end

   -- function to advance solution using 4-stage SSP-RK3 scheme
   function timeSteppers.rk3s4(tCurr, dt)
      local status, dtSuggested
      -- RK stage 1
      status, dtSuggested = fowardEuler(tCurr, dt, 1, 2)
      if status == false then return status, dtSuggested end
      combine2(1.0/2.0, 1, 1.0/2.0, 2, 3)

      -- RK stage 2
      status, dtSuggested = fowardEuler(tCurr, dt, 3, 4)
      if status == false then return status, dtSuggested end
      combine2(1.0/2.0, 3, 1.0/2.0, 4, 2)

      -- RK stage 3
      status, dtSuggested = fowardEuler(tCurr, dt, 2, 3)
      if status == false then return status, dtSuggested end
      combine3(2.0/3.0, 1, 1.0/6.0, 2, 1.0/6.0, 3, 4)

      -- RK stage 4
      status, dtSuggested = fowardEuler(tCurr, dt, 4, 3)
      if status == false then return status, dtSuggested end
      combine2(1.0/2.0, 4, 1.0/2.0, 3, 1)

      return status, dtSuggested
   end   

   local tmEnd = Time.clock()
   log(string.format("Initializing completed in %g sec\n", tmEnd-tmStart))

   -- return function that runs main simulation loop   
   return function(self)
      log("Starting main loop of VlasovOnCartGrid simulation ...\n")
      local tStart, tEnd = 0, tbl.tEnd
      local initDt =  tbl.suggestedDt and tbl.suggestedDt or tEnd-tStart -- initial time-step
      local frame = 1
      local step = 1
      local tCurr = tStart
      local myDt = initDt

      -- for logging every 10% of sim
      local logTrigger = LinearTrigger(tStart, tEnd, 10)
      local tenth = 0      

      -- for writing out log messages
      local function writeLogMessage(tCurr, myDt)
	 if logTrigger(tCurr) then
	    log (string.format(
		    " Step %5d at time %g. Time step %g. Completed %g%s", step, tCurr, myDt, tenth*10, "%"))
	    tenth = tenth+1
	 end	 
      end

      local tmSimStart = Time.clock()
      -- main simulation loop
      while true do
	 -- if needed adjust dt to hit tEnd exactly
	 if tCurr+myDt > tEnd then myDt = tEnd-tCurr end
	 -- take a time-step
	 local status, dtSuggested = timeSteppers[timeStepperNm](tCurr, myDt)
	 -- check if step was successful
	 if status then
	    writeLogMessage(tCurr, myDt)
	    writeData(tCurr+myDt) -- give chance to everyone to write data
	    tCurr = tCurr + myDt
	    myDt = dtSuggested
	    step = step + 1
	    if (tCurr >= tEnd) then
	       break
	    end	    
	 else
	    log (string.format(" ** Time step %g too large! Will retake with dt %g", myDt, dtSuggested))
	    myDt = dtSuggested
	 end 
      end -- end of time-step loop
      writeLogMessage(tCurr, myDt)
      local tmSimEnd = Time.clock()
      
      local tmVlasovSlvr = 0.0 -- total time in Vlasov solver
      for _, s in pairs(species) do
	 tmVlasovSlvr = tmVlasovSlvr+s:totalSolverTime()
      end

      local tmVlasovStream, tmVlasovForce, tmVlasovIncr = 0.0, 0.0, 0.0
      local tmVlasovMom, tmVlasovIntMom = 0.0, 0.0
      for _, s in pairs(species) do
	 tmVlasovStream = tmVlasovStream + s:streamTime()
	 tmVlasovForce = tmVlasovForce + s:forceTime()
	 tmVlasovIncr = tmVlasovIncr + s:incrementTime()
	 tmVlasovMom = tmVlasovMom + s:momCalcTime()
	 tmVlasovIntMom = tmVlasovIntMom + s:intMomCalcTime()
      end

      log(string.format("\nVlasov solver took %g sec", tmVlasovSlvr))
      log(string.format(
	     "  [Streaming updates %g sec. Force updates %g sec]",
	     tmVlasovStream, tmVlasovForce))
      log(string.format("Field solver took %g sec", field:totalSolverTime()))
      log(string.format("Moment calculations took %g sec", tmVlasovMom))
      log(string.format("Integrated moment calculations took %g sec", tmVlasovIntMom))
      log(string.format("Main loop completed in %g sec\n", tmSimEnd-tmSimStart))
      log(date(false):fmt()) -- time-stamp for sim end
   end
end

-- VlasovOnCartGrid application object
local App = Proto()

function App:init(tbl)
   self._runApplication = buildApplication(self, tbl)
end

function App:run()
   return self:_runApplication()
end

return {
   App = App,
   Species = Species,
   EmField = Field.EmField,
}
