-- for accessing any collisions object
local CollisionsBase    = require "App.Collisions.CollisionsBase"
local BgkCollisions     = require "App.Collisions.BgkCollisions"
local VmLBOCollisions   = require "App.Collisions.VmLBOCollisions"
local GkLBOCollisions   = require "App.Collisions.GkLBOCollisions"
local VoronovIonization = require "App.Collisions.VoronovIonization"

return {
  CollisionsBase    = CollisionsBase,
  BgkCollisions     = BgkCollisions,
  VmLBOCollisions   = VmLBOCollisions,
  GkLBOCollisions   = GkLBOCollisions,
  VoronovIonization = VoronovIonization,
}
