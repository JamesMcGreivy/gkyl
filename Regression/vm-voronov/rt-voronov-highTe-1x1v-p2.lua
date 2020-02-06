-- Gkyl --------------------------------------------------------------
-- Basic sheath simulation -------------------------------------------
local Plasma    = require("App.PlasmaOnCartGrid").VlasovMaxwell
local Constants = require "Lib.Constants"

-- SI units.
local elemCharge      = Constants.ELEMENTARY_CHARGE
local epsilon_0, mu_0 = Constants.EPSILON0, 1.257e-6

local q_e, q_i      = -elemCharge, elemCharge
local m_e, m_i      = 9.109383e-31, 1.6726218e-27
local n_0           = 1.0e17
local n_e, n_i, n_n = n_0, n_0, 100*n_0
local vd_e, vd_i    = 0.0, 0.0
local T_e, T_i      = 20*elemCharge, 1*elemCharge

local vth_e, vth_i = math.sqrt(T_e/m_e), math.sqrt(T_i/m_i)
local uB           = math.sqrt(T_e/m_i)
local omega_pe     = math.sqrt((n_e * q_e^2)/(epsilon_0*m_e))
local lambda_D     = math.sqrt((epsilon_0 * T_e)/(n_e * q_e^2))
-- Artificially decrease the speed of light.
mu_0 = 1.0/(epsilon_0 * (10*vth_e)^2)

-- Initialization function.
local function maxwellian(n, vd, vth, v)
   return n / math.sqrt(2*math.pi*vth*vth) * 
      math.exp(-(v-vd)^2/(2*vth*vth))
end

sim = Plasma.App {
   logToFile = false,

   tEnd        = 10/omega_pe,  --1000/omega_pe,    -- End time.
   nFrame      = 1,                -- Number of output frames.
   lower       = {0.0},            -- Configuration space lower left.
   upper       = {128.0*lambda_D}, -- Configuration space upper right.
   cells       = {128},            -- Configuration space cells.
   basis       = "serendipity",    -- One of "serendipity" or "maximal-order".
   polyOrder   = 2,                -- Polynomial order.
   cflFrac     = 1,                -- CFL "fraction". Usually 1.0.
   timeStepper = "rk3",            -- One of "rk2" or "rk3".

   -- Decomposition for configuration space.
   decompCuts = {1},   -- Cuts in each configuration direction.
   useShared  = false, -- If to use shared memory.

   -- Boundary conditions for configuration space.
   periodicDirs = {1}, -- Periodic directions.
      
    -- Electrons.
   elc = Plasma.Species {
      charge = q_e, mass = m_e,
      -- Velocity space grid.
      lower = {-6.0*vth_e},
      upper = {6.0*vth_e},
      cells = {32},
      decompCuts = {1},
      -- Initial conditions.
      init = function (t, xn)
         local x, v = xn[1], xn[2]
         return maxwellian(n_e, uB, vth_e, v)
      end,
      evolve = true, -- Evolve species?
      diagnosticMoments = { "M0", "M1i", "M2", "vtSq"},
      diagnosticIntegratedMoments = {"intM0", "intM1i",
				     "intM2Flow", "intM2Thermal" },
      ionization = Plasma.VoronovIonization {
      	 collideWith  = {"neutOnIon"},
      	 electrons    = "elc",
	 neutrals     = "neutOnIon",
      	 elemCharge   = elemCharge, 
      	 elcMass      = m_e,
      	 plasma       = "H",         
      }
   },

      -- Ions
   ion = Plasma.Species {
      charge = q_i, mass = m_i,
      -- Velocity space grid.
      lower = {-6.0*uB},
      upper = {6.0*uB},
      cells = {32},
      decompCuts = {1},
      -- Initial conditions.
      init = function (t, xn)
         local x, v = xn[1], xn[2]
         return maxwellian(n_i, uB, vth_i, v)
      end,
      evolve = true,
      diagnosticMoments = { "M0", "M1i", "M2" },
      diagnosticIntegratedMoments = {"intM0", "intM1i",
      				     "intM2Flow", "intM2Thermal" },
      ionization = Plasma.VoronovIonization {
      	 collideWith  = {"neutOnIon"},
      	 electrons    = "elc",
	 neutrals     = "neutOnIon",
      	 elemCharge   = elemCharge,
      	 elcMass      = m_e,
      	 plasma       = "H",
      }
   },

   neutOnIon = Plasma.Species {
      charge = 0.0, mass = m_i,
      -- Velocity space grid
      lower = {-6.0*uB},
      upper = {6.0*uB},
      cells = {32},
      decompCuts = {1},
      -- Initial conditions.
      init = function (t, xn)
         local x, v = xn[1], xn[2]
         return maxwellian(n_n, 0.0, vth_i, v)
      end,
      evolve = false, -- Evolve species?
   },
   
   -- Field solver.
   field = Plasma.Field {
      epsilon0 = epsilon_0, mu0 = mu_0,
      init = function (t, xn)
         return 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
      end,
      evolve = true, -- Evolve field?
   },
}
-- Run application.
sim:run()