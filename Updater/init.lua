-- Gkyl ------------------------------------------------------------------------
--
-- Dispatch into the updater modules
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

-- Gkyl modules
local Bc = require "Updater.Bc"
local BgkCollisions = require "Updater.BgkCollisions"
local CartFieldBinOp = require "Updater.CartFieldBinOp"
local CartFieldIntegratedQuantCalc = require "Updater.CartFieldIntegratedQuantCalc"
local CartFieldInterpolate = require "Updater.CartFieldInterpolate"
local ConfToPhase = require "Updater.ConfToPhase"
local CrossPrimMoments = require "Updater.CrossPrimMoments"
local DiscontGenPoisson = require "Updater.DiscontGenPoisson"
local DiscontPoisson = require "Updater.DiscontPoisson"
local DistFuncMomentCalc = require "Updater.DistFuncMomentCalc"
local EvalOnNodes = require "Updater.EvalOnNodes"
local FemGyroaverage = require "Updater.FemGyroaverage"
local FemParPoisson = require "Updater.FemParPoisson"
local FemPerpPoisson = require "Updater.FemPerpPoisson"
local FemPoisson = require "Updater.FemPoisson"
local FiveMomentSrc = require "Updater.FiveMomentSrc"
local HyperDisCont = require "Updater.HyperDisCont"
local HyperDisContCellBased = require "Updater.HyperDisContCellBased"
local IntegratedDGMoment = require "Updater.IntegratedDGMoment"
local LagrangeFix = require "Updater.LagrangeFix"
local MGpoisson = require "Updater.MGpoisson"
local MappedPoisson = require "Updater.MappedPoisson"
local MaxwellianOnBasis = require "Updater.MaxwellianOnBasis"
local PositivityCheck = require "Updater.PositivityCheck"
local PositivityRescale = require "Updater.PositivityRescale"
local ProjectOnBasis = require "Updater.ProjectOnBasis"
local SelfPrimMoments = require "Updater.SelfPrimMoments"
local SolidSurface = require "Updater.SolidSurface"
local SpitzerCollisionality = require "Updater.SpitzerCollisionality"
local StairSteppedBc = require "Updater.StairSteppedBc"
local TenMomentRelax = require "Updater.TenMomentRelax"
local TenMomentSrc = require "Updater.TenMomentSrc"
local VoronovIonization = require "Updater.VoronovIonization"
local WavePropagation = require "Updater.WavePropagation"

return {
   Bc = Bc,
   BgkCollisions = BgkCollisions,
   CartFieldBinOp = CartFieldBinOp,
   CartFieldIntegratedQuantCalc = CartFieldIntegratedQuantCalc,
   CartFieldInterpolate = CartFieldInterpolate,
   ConfToPhase = ConfToPhase,
   CrossPrimMoments = CrossPrimMoments,
   DiscontGenPoisson = DiscontGenPoisson,
   DiscontPoisson = DiscontPoisson,
   DistFuncMomentCalc = DistFuncMomentCalc,
   EvalOnNodes = EvalOnNodes,
   FemGyroaverage = FemGyroaverage,
   FemParPoisson = FemParPoisson,
   FemPerpPoisson = FemPerpPoisson,
   FemPoisson = FemPoisson,
   FiveMomentSrc = FiveMomentSrc,
   HyperDisCont = HyperDisCont,
   HyperDisContCellBased = HyperDisContCellBased,
   IntegratedDGMoment = IntegratedDGMoment,
   LagrangeFix = LagrangeFix,
   MGpoisson = MGpoisson,
   MappedPoisson = MappedPoisson,
   MaxwellianOnBasis = MaxwellianOnBasis,
   PositivityCheck = PositivityCheck,
   PositivityRescale = PositivityRescale,
   ProjectOnBasis = ProjectOnBasis,
   SelfPrimMoments = SelfPrimMoments,
   SolidSurface = SolidSurface,
   SpitzerCollisionality = SpitzerCollisionality,
   StairSteppedBc = StairSteppedBc,
   TenMomentRelax = TenMomentRelax,
   TenMomentSrc = TenMomentSrc,
   VoronovIonization = VoronovIonization,
   WavePropagation = WavePropagation,
}
