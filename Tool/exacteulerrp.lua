-- Gkyl ------------------------------------------------------------------------
--
-- Solves the exact Euler Riemann Problem in 1D for ideal gas law
--
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local argparse = require "Lib.argparse"
local DataStruct = require "DataStruct"
local Grid = require "Grid"
local lfs = require "Lib.lfs"
local ffi = require "ffi"

ffi.cdef [[
    typedef struct {
        double dl, ul, pl;
        double dr, ur, pr;
        double lower, upper;
        int ncell;
        double tEnd;
        double gas_gamma;
        double disLoc;
    } ProblemState;

    void solveRiemannProblem(ProblemState _ps,
      double *density, double *velocity, double *pressure, double *internalenergy);
]]

-- Create CLI parser to handle commands and options
local parser = argparse()
   :name("exacteulerrp")
   :description [[
Solves the exact Riemann problem for Euler equations on a 1D
grid. Given the left/right states, number of cells and time, outputs
density, velocity, pressure and internal energy at that time. Either
left/right state can be a vacuum.

You can get a example input file from the tool by doing:

  gkyl exacteulerrp -e > exacteulerinp.lua

(The above command will save the output to the file
"exacteulerinp.lua"). Modify it for your left/right states etc and run
it:

  gkyl exacteulerrp -i exacteulerinp.lua

This will produce the following files:

 exacteulerinp_density.bp, exacteulerinp_velocity.bp,
 exacteulerinp_pressure.bp, exacteulerinp_internalenergy.bp

These can be vizualized/postprocessed as usual with pgkyl.
]]

-- add flags and options
parser:flag("-e --example", "Fetch example input file", false)
parser:option("-i --input", "Input file")

-- parse command line parameters
local args = parser:parse(GKYL_COMMANDS)

if args.example then
   -- write out example to terminal
   io.write([[
-- Input file for exacteulerrp Tool

lower = -1.0 -- left-edge of domain
upper = 1.0 -- right-edge of domain
location = 0.0 -- location of shock
ncell = 100 -- Number of cells to use
tEnd = 0.2 -- Time at which to compute RP
gasGamma = 1.4 -- Gas adiabatic index

-- left/right states { density, velocity, pressure }
leftState = { 1.0, 0.0, 1.0 }
rightState = { 0.125, 0.0, 0.1 }

]]
   )
   
   return
end

-- open input file and read contents
local inpFile = assert(loadfile(args.input))
inpFile() -- load contents of input file

-- construct grid and allocate data for fields
local grid = Grid.RectCart {
   lower = {lower},
   upper = {upper},
   cells = {ncell},
}

local function makeField()
   return DataStruct.Field { onGrid = grid, numComponents = 1 }
end

local density = makeField()
local velocity = makeField()
local pressure = makeField()
local internalenergy = makeField()

GKYL_OUT_PREFIX = lfs.currentdir() .. "/" .. args.input:sub(1, args.input:len()-4)

local problemState = ffi.new("ProblemState")
problemState.dl, problemState.ul, problemState.pl = leftState[1], leftState[2], leftState[3]
problemState.dr, problemState.ur, problemState.pr = rightState[1], rightState[2], rightState[3]
problemState.disLoc = location
problemState.lower, problemState.upper = lower, upper
problemState.ncell = ncell
problemState.tEnd = tEnd
problemState.gas_gamma = gasGamma

ffi.C.solveRiemannProblem(
   problemState, density:getDataPtrAt(1), velocity:getDataPtrAt(1),
   pressure:getDataPtrAt(1), internalenergy:getDataPtrAt(1)
)

density:write("density.bp")
velocity:write("velocity.bp")
pressure:write("pressure.bp")
internalenergy:write("internalenergy.bp")
