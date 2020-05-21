-- Gkyl ------------------------------------------------------------------------
--
--
--------------------------------------------------------------------------------

local Basis = require "Basis"
local DataStruct = require "DataStruct"
local Grid = require "Grid"
local Lin = require "Lib.Linalg"
local Time = require "Lib.Time"
local Updater = require "Updater"
local ffi = require "ffi"
local xsys = require "xsys"

local _ = require "Proto.Fpo.fpoKernelsCdef"

return function(tbl)
   local numKeys, keysUsed = 0, 0
   for key, value in pairs(tbl) do
      numKeys = numKeys + 1
   end
   -- Simulation parameters
   local polyOrder = tbl.polyOrder -- polynomial order

   local dragKernelNm = string.format("fpoDragKernel3xP%d", polyOrder)
   local dragKernelFn = ffi.C[dragKernelNm]
   local diffKernelNm = string.format("fpoDiffKernelP%d", polyOrder)
   local diffKernelFn = ffi.C[diffKernelNm]
   local momsKernelNm = string.format("fpoMomsKernelP%d", polyOrder)
   local momsKernelFn = ffi.C[momsKernelNm]
   local diagKernelNm = string.format("fpoDiagKernelP%d", polyOrder)
   local diagKernelFn = ffi.C[diagKernelNm]

   local cflFrac = tbl.cflFrac and tbl.cflFrac or 1.0
   local fixedDt = tbl.fixedDt
   local tEnd = tbl.tEnd
   local nFrames = tbl.nFrames
   local updatePotentials = xsys.pickBool(tbl.updatePotentials, true)
   local doughertyPotentials = xsys.pickBool(tbl.doughertyPotentials, false)
   -- Not sure about this logic...
   if doughertyPotentials then updatePotentials = false end
   local writeDiagnostics = xsys.pickBool(tbl.writeDiagnostics, false)
   local cells = tbl.cells
   local lower = tbl.lower
   local upper = tbl.upper

   local periodicDirs = tbl.periodicDirs and tbl.periodicDirs or {}
   local periodicX, periodicY, periodicZ = false, false, false
   for i = 1, #periodicDirs do
      if periodicDirs[i] == 1 then periodicX = true end
      if periodicDirs[i] == 2 then periodicY = true end
      if periodicDirs[i] == 3 then periodicZ = true end
   end

   local tmRosen, tmFpo = 0.0, 0.0


   ----------------------
   -- Grids and Fields --
   ----------------------
   local grid = Grid.RectCart {
      lower = lower,
      upper = upper,
      cells = cells,
      periodicDirs = periodicDirs,
   }

   -- basis functions
   local basis = Basis.CartModalSerendipity {
      ndim = grid:ndim(),
      polyOrder = polyOrder
   }

   -- fields
   local function getField()
      return DataStruct.Field {
         onGrid = grid,
         numComponents = basis:numBasis(),
         ghost = {1, 1},
         metaData = {
            polyOrder = basis:polyOrder(),
            basisType = basis:id(),
         },
      }
   end
   local f = getField()
   local f1 = getField()
   local f2 = getField()
   local fe = getField()
   local fs = getField()
   local fNew = getField()
   local h = getField()
   local g = getField()

   local test = getField()

   local src = getField()

   local moms = DataStruct.DynVector { numComponents = 4 }
   local diag = DataStruct.DynVector { numComponents = 3 }


   --------------
   -- Updaters --
   --------------
   local function absorbFunc(dir, tm, idxIn, fIn, fOut)
      for i = 1, basis:numBasis() do
         fOut[i] = 0.0
      end
   end
   local function copyFunc(dir, tm, idxIn, fIn, fOut)
      for i = 1, basis:numBasis() do
         fOut[i] = fIn[i]
      end
   end
   local function openFunc(dir, tm, idxIn, fIn, fOut)
      basis:flipSign(dir, fIn, fOut)
   end

   local bcT = Updater.Bc {
      onGrid = grid,
      boundaryConditions = { copyFunc },
      dir = 2,
      edge = "upper",
   }
   local bcB = Updater.Bc {
      onGrid = grid,
      boundaryConditions = { copyFunc },
      dir = 2,
      edge = "lower",
   }
   local bcL = Updater.Bc {
      onGrid = grid,
      boundaryConditions = { copyFunc },
      dir = 1,
      edge = "lower",
   }
   local bcR = Updater.Bc {
      onGrid = grid,
      boundaryConditions = { copyFunc },
      dir = 1,
      edge = "upper",
   }

   local function applyBc(fld)
      -- bcT:advance(0.0, {}, {fld})
      -- bcB:advance(0.0, {}, {fld})
      -- bcL:advance(0.0, {}, {fld})
      -- bcR:advance(0.0, {}, {fld})
      fld:sync()

      -- need to manually sync corners for now
      local globalRange = fld:globalRange()
      local xlo, xup = globalRange:lower(1), globalRange:upper(1)
      local ylo, yup = globalRange:lower(2), globalRange:upper(2)
      local zlo, zup = globalRange:lower(3), globalRange:upper(3)
      
      local indexer = fld:indexer()
      local idxSkin, idxGhost
      
      -- lower-left
      -- idxSkin, idxGhost = fld:get(indexer(xup, yup)), fld:get(indexer(xlo-1, ylo-1))
      -- for k = 1, fld:numComponents() do
      --    idxGhost[k] = idxSkin[k]
      -- end
      
      -- -- lower-right
      -- idxSkin, idxGhost = fld:get(indexer(xlo, yup)), fld:get(indexer(xup+1, ylo-1))
      -- for k = 1, fld:numComponents() do
      --    idxGhost[k] = idxSkin[k]
      -- end
      
      -- -- upper-left
      -- idxSkin, idxGhost = fld:get(indexer(xup, ylo)), fld:get(indexer(xlo-1, yup+1))
      -- for k = 1, fld:numComponents() do
      --    idxGhost[k] = idxSkin[k]
      -- end
      
      -- -- upper-right
      -- idxSkin, idxGhost = fld:get(indexer(xlo, ylo)), fld:get(indexer(xup+1, yup+1))
      -- for k = 1, fld:numComponents() do
      --    idxGhost[k] = idxSkin[k]
      -- end
   end

   -- projection to apply ICs
   local initDist = Updater.ProjectOnBasis {
      onGrid = grid,
      basis = basis,
      evaluate = tbl.init,
   }

   -- local poisson = Updater.FemPerpPoisson {
   --    onGrid = grid,
   --    basis = basis,
   --    bcBottom = { T = "D", V = 0.0 },
   --    bcTop = { T = "D", V = 0.0 },
   --    bcLeft = { T = "D", V = 0.0 },
   --    bcRight = { T = "D", V = 0.0 },
   -- }

   local function updateRosenbluthDrag(fIn, hOut)
      local tmStart = Time.clock()
      fs:combine(-1.0, fIn)
      if updatePotentials then
         poisson:advance(0.0, {fs}, {hOut})
      end
      tmRosen = tmRosen + Time.clock()-tmStart
   end
   local function updateRosenbluthDiffusion(hIn, gOut)
      local tmStart = Time.clock()
      if updatePotentials then
         poisson:advance(0.0, {hIn}, {gOut})
      end
      tmRosen = tmRosen + Time.clock()-tmStart
   end

   -----------------
   -- Diagnostics --
   -----------------
   local function calcMoms(tCurr, fIn, momVec)
      local dv = Lin.Vec(3)
      dv[1], dv[2] = grid:dx(1), grid:dx(2)
      local vc = Lin.Vec(3)
      local localRange = fIn:localRange()
      local indexer = fIn:genIndexer()
      local out = Lin.Vec(4)
      out[1] = 0.0
      out[2] = 0.0
      out[3] = 0.0
      out[4] = 0.0

      for idxs in localRange:colMajorIter() do
         grid:setIndex(idxs)
         grid:cellCenter(vc)
         local fPtr = fIn:get(indexer(idxs))
         momsKernelFn(dv:data(), vc:data(), fPtr:data(), out:data())
      end
      momVec:appendData(tCurr, out)
      return out
   end

   local function calcDiag(tCurr, fIn, hIn, diagVec)
      local dv = Lin.Vec(3)
      dv[1], dv[2] = grid:dx(1), grid:dx(2)
      local vc = Lin.Vec(3)
      local localRange = fIn:localRange()
      local indexer = fIn:genIndexer()
      local out = Lin.Vec(3)
      out[1] = 0.0
      out[2] = 0.0
      out[3] = 0.0

      for idxs in localRange:colMajorIter() do
         grid:setIndex(idxs)
         grid:cellCenter(vc)
         local fPtr = fIn:get(indexer(idxs))
         local hPtr = hIn:get(indexer(idxs))
         diagKernelFn(dv:data(), vc:data(), fPtr:data(), hPtr:data(), out:data())
      end
      diagVec:appendData(tCurr, out)
   end

   local function writeData(fr, tm)
      f:write(string.format("f_%d.bp", fr), tm, fr)
      if updatePotentials then
         h:write(string.format('h_%d.bp', fr), tm, fr)
         g:write(string.format('g_%d.bp', fr), tm, fr)
      end
      if writeDiagnostics then
         moms:write(string.format("moms_%d.bp", fr), tm, fr)
         diag:write(string.format("diag_%d.bp", fr), tm, fr)
      end
   end


   --------------------
   -- Initialization --
   --------------------
   initDist:advance(0.0, {}, {f})
   applyBc(f)
   --local momVec = calcMoms(0, f, moms)

   -- Check if drag/diff functions are provided
   local initDragFunc = tbl.initDrag and tbl.initDrag or function(t, z) return 0.0 end
   local initDiffFunc = tbl.initDiff and tbl.initDiff or function(t, z) return 0.0 end

   -- Overwrite the init functions if the the Dougherty potentials are turned on
   if doughertyPotentials then
      initDragFunc = function (t, z)
         local ux = momVec[2]/momVec[1]
         local uy = momVec[3]/momVec[1]
         return -0.5*((z[1]-ux)^2 + (z[2]-uy)^2)
      end
      initDiffFunc = function (t, z)
         local ux = momVec[2]/momVec[1]
         local uy = momVec[3]/momVec[1]
         local dvth2 = momVec[4]/momVec[1] - (ux^2 + uy^2)
         return dvth2/2 * (z[1]^2 + z[2]^2) -- /2 is for dimensions
      end
   end

   local projectDrag = Updater.ProjectOnBasis {
      onGrid = grid,
      basis = basis,
      evaluate = initDragFunc,
      projectOnGhosts = true,
   }
   local projectDiff = Updater.ProjectOnBasis {
      onGrid = grid,
      basis = basis,
      evaluate = initDiffFunc,
      projectOnGhosts = true,
   }

   -- update Rosenbluth potentials
   if updatePotentials then
      updateRosenbluthDrag(f, h)
      updateRosenbluthDiffusion(h, g)
   else
      projectDrag:advance(0.0, {}, {h})
      projectDiff:advance(0.0, {}, {g})
   end

   -- write initial conditions
   if writeDiagnostics then
      calcDiag(0, f, h, diag)
   end
   writeData(0, 0.0)
   if updatePotentials == false then
      h:write(string.format('h_%d.bp', 0), 0.0, 0)
      g:write(string.format('g_%d.bp', 0), 0.0, 0)
   end

   -- source
   local hasConstSource = false
   if tbl.constSource then
      hasConstSource = true
      -- A wrapper to add time dependance for projectOnBasis
      local constSourceFn = function (t, z) return tbl.constSource(z) end
      local projectSource = Updater.ProjectOnBasis {
         onGrid = grid,
         basis = basis,
         evaluate = constSourceFn,
         projectOnGhosts = true,
      }
      projectSource:advance(0.0, {}, {src})
      if writeDiagnostics then
         src:write('src.bp', 0.0, 0)
      end
   end
   test:accumulate(1, src)
   test:write('test.bp', 0.0, 0)

   local function forwardEuler(dt, fIn, hIn, gIn, fOut)
      local tmStart = Time.clock()

      local dv = Lin.Vec(3)
      dv[1], dv[2], dv[3] = grid:dx(1), grid:dx(2), grid:dx(3)
      local localRange = fIn:localRange()
      local indexer = fIn:genIndexer()
      local idxs1L, idxs1U = {}, {}
      local idxs2L, idxs2U = {}, {}
      local idxs3L, idxs3U = {}, {}
      --local idxsTL, idxsTR, idxsBL, idxsBR = {}, {}, {}, {}
      local cflFreq, dragFreq, diffFrq = 0.0, 0.0, 0.0

      for idxs in localRange:colMajorIter() do
         idxs1L[1], idxs1L[2], idxs1L[3] = idxs[1]-1, idxs[2], idxs[3]
         idxs1U[1], idxs1U[2], idxs1U[3] = idxs[1]+1, idxs[2], idxs[3]
         idxs2L[1], idxs2L[2], idxs2L[3] = idxs[1], idxs[2]-1, idxs[3]
         idxs2U[1], idxs2U[2], idxs2U[3] = idxs[1], idxs[2]+1, idxs[3]
         idxs3L[1], idxs3L[2], idxs3L[3] = idxs[1], idxs[2], idxs[3]-1
         idxs3U[1], idxs3U[2], idxs3U[3] = idxs[1], idxs[2], idxs[3]+1
         
         --idxsTL[1], idxsTL[2] = idxs[1]-1, idxs[2]+1
         --idxsTR[1], idxsTR[2] = idxs[1]+1, idxs[2]+1
         --idxsBL[1], idxsBL[2] = idxs[1]-1, idxs[2]-1
         --idxsBR[1], idxsBR[2] = idxs[1]+1, idxs[2]-1

         local isTopEdge, isBotEdge = 0, 0
         local isLeftEdge, isRightEdge = 0, 0
         if periodicX == false then
            if idxs[1] == 1 then isLeftEdge = 1 end
            if idxs[1] == cells[1] then isRightEdge = 1 end
         end
         if periodicY == false then
            if idxs[2] == 1 then isBotEdge = 1 end
            if idxs[2] == cells[2] then isTopEdge = 1 end
         end

         local f = fIn:get(indexer(idxs))
         local f1L = fIn:get(indexer(idxs1L))
         local f1U = fIn:get(indexer(idxs1U))
         local f2L = fIn:get(indexer(idxs2L))
         local f2U = fIn:get(indexer(idxs2U))
         local f3L = fIn:get(indexer(idxs3L))
         local f3U = fIn:get(indexer(idxs3U))
         
         --local fTL = fIn:get(indexer(idxsTL))
         --local fTR = fIn:get(indexer(idxsTR))
         --local fBL = fIn:get(indexer(idxsBL))
         --local fBR = fIn:get(indexer(idxsBR))

         local h = hIn:get(indexer(idxs))
         local h1L = hIn:get(indexer(idxs1L))
         local h1U = hIn:get(indexer(idxs1U))
         local h2L = hIn:get(indexer(idxs2L))
         local h2U = hIn:get(indexer(idxs2U))
         local h3L = hIn:get(indexer(idxs3L))
         local h3U = hIn:get(indexer(idxs3U))

         --local gC = gIn:get(indexer(idxs))
         --local gR = gIn:get(indexer(idxsR))
         --local gL = gIn:get(indexer(idxsL))
         --local gT = gIn:get(indexer(idxsT))
         --local gB = gIn:get(indexer(idxsB))

         --local gTL = gIn:get(indexer(idxsTL))
         --local gTR = gIn:get(indexer(idxsTR))
         --local gBL = gIn:get(indexer(idxsBL))
         --local gBR = gIn:get(indexer(idxsBR))

         local srcP = src:get(indexer(idxs))

         local fOutP = fOut:get(indexer(idxs))

         dragFreq = dragKernelFn(dt, dv:data(),
				 f:data(),
				 f1L:data(), f1U:data(),
				 f2L:data(), f2U:data(),
                                 f3L:data(), f3U:data(),
				 h:data(),
				 h1L:data(), h1U:data(),
				 h2L:data(), h2U:data(),
                                 h3L:data(), h3U:data(),
				 isTopEdge, isBotEdge,
				 isLeftEdge, isRightEdge,
				 fOutP:data())
         -- diffFreq = diffKernelFn(dt, dv:data(),
	 --        		 fTL:data(), fT:data(), fTR:data(),
	 --        		 fL:data(), fC:data(), fR:data(),
	 --        		 fBL:data(), fB:data(), fBR:data(),
	 --        		 gTL:data(), gT:data(), gTR:data(),
	 --        		 gL:data(), gC:data(), gR:data(),
	 --        		 gBL:data(), gB:data(), gBR:data(),
	 --        		 isTopEdge, isBotEdge,
	 --        		 isLeftEdge, isRightEdge,
	 --        		 fOutP:data())
	 cflFreq = math.max(cflFreq, dragFreq) --diffFreq
      end

      if hasConstSource then
         fOut:accumulate(dt, src)
      end

      tmFpo = tmFpo + Time.clock()-tmStart
      return cflFreq
   end

   local function rk3(dt, fIn, fOut)
      local cflFreq = 0.0
      local localDt = dt
      -- Stage 1
      updateRosenbluthDrag(fIn, h)
      updateRosenbluthDiffusion(h, g)
      cflFreq = forwardEuler(dt, fIn, h, g, f1)
      localDt = cflFrac/cflFreq
      if localDt < 0.9*dt then
	 return false, localDt
      end
      applyBc(f1)

      -- Stage 2
      updateRosenbluthDrag(f1, h)
      updateRosenbluthDiffusion(h, g)
      cflFreq = forwardEuler(dt, f1, h, g, fe)
      localDt = cflFrac/cflFreq
      if localDt < 0.9*dt then
	 return false, localDt
      end
      f2:combine(3.0/4.0, fIn, 1.0/4.0, fe)
      applyBc(f2)

      -- Stage 3
      updateRosenbluthDrag(f2, h)
      updateRosenbluthDiffusion(h, g)
      cflFreq = forwardEuler(dt, f2, h, g, fe)
      localDt = cflFrac/cflFreq
      if localDt < 0.9*dt then
	 return false, localDt
      end
      fOut:combine(1.0/3.0, fIn, 2.0/3.0, fe)
      applyBc(fOut)

      return true, localDt
   end

   -- run simulation with RK3
   return function ()
      local tCurr = 0.0
      local step = 1
      local dt = tEnd
      local dynDt = dt
      if fixedDt then 
	 dt = fixedDt
      end

      local frameInt = tEnd/nFrames
      local nextFrame = 1
      local isDone = false

      local tmStart = Time.clock()
      while not isDone do
	 if (tCurr+dt >= tEnd) then
	    isDone = true
	    dt = tEnd-tCurr
         end
         print(string.format("Step %d at time %g with dt %g ...",
			     step, tCurr, dt))
         status, dynDt = rk3(dt, f, fNew)
	 if fixedDt then
	    if dynDt < fixedDt then
	       print("'fixedDt' is violating the stability condition, exiting")
	       break
	    end
	 else
	    dt = dynDt
	 end
	 if status then
	    f:copy(fNew)
	    
	    if writeDiagnostics then
	       calcMoms(tCurr+dt, f, moms)
	       updateRosenbluthDrag(f, h)
	       calcDiag(tCurr+dt, f, h, diag)
	    end
	    
	    tCurr = tCurr+dt
	    if tCurr >= nextFrame*frameInt or math.abs(tCurr-nextFrame*frameInt) < 1e-10 then
	       writeData(nextFrame, tCurr)
	       nextFrame = nextFrame+1
	    end
	    step = step+1
	 else 
	    isDone = false
	    print("dt too big, retaking")
	 end
      end
      local tmTotal = Time.clock()-tmStart

      print("")
      print(string.format("Poisson solver took %g secs", tmRosen))
      print(string.format("FPO solver took %g secs", tmFpo))
      print(string.format("Total run-time %g secs", tmTotal))
   end
end
