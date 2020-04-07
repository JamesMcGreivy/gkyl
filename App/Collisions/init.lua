-- Gkyl ------------------------------------------------------------------------
--
-- For accessing collisions objects
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local CollisionsBase   = require "App.Collisions.CollisionsBase"
local FluidDiffusion   = require "App.Collisions.FluidDiffusion"
local GkBGKCollisions  = require "App.Collisions.GkBGKCollisions"
local GkChargeExchange = require "App.Collisions.GkChargeExchange"
local GkLBOCollisions  = require "App.Collisions.GkLBOCollisions"
local GkIonization     = require "App.Collisions.GkIonization"
local VmBGKCollisions  = require "App.Collisions.VmBGKCollisions"
local VmChargeExchange = require "App.Collisions.VmChargeExchange"
local VmLBOCollisions  = require "App.Collisions.VmLBOCollisions"
local VmIonization     = require "App.Collisions.VmIonization"

return {
  CollisionsBase   = CollisionsBase,
  FluidDiffusion   = FluidDiffusion,
  GkBGKCollisions  = GkBGKCollisions,
  GkChargeExchange = GkChargeExchange,
  GkLBOCollisions  = GkLBOCollisions,
  GkIonization     = GkIonization,
  VmBGKCollisions  = VmBGKCollisions,
  VmChargeExchange = VmChargeExchange,
  VmLBOCollisions  = VmLBOCollisions,
  VmIonization     = VmIonization,
}
