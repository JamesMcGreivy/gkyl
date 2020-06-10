-- Gkyl ------------------------------------------------------------------------
--
-- Test for fields on cartesian grids
--    _______     ___
-- + 6 @ |||| # P ||| +
--------------------------------------------------------------------------------

local ffi = require "ffi"
local Unit = require "Unit"
local Grid = require "Grid"
local DataStruct = require "DataStruct"

local assert_equal = Unit.assert_equal
local stats = Unit.stats

function test_1()
   local grid = Grid.RectCart {
      lower = {0.0},
      upper = {1.0},
      cells = {10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 1},
   }

   assert_equal(1, field:ndim(), "Checking dimensions")
   assert_equal(1, field:lowerGhost(), "Checking lower ghost")
   assert_equal(1, field:upperGhost(), "Checking upper ghost")
   assert_equal((10+2)*3, field:size(), "Checking size")

   assert_equal(field:defaultLayout(), field:layout(), "Checking layout")

   local localRange = field:localRange()
   assert_equal(1, localRange:lower(1), "Checking range lower")
   assert_equal(10, localRange:upper(1), "Checking range upper")

   local localExtRange = field:localExtRange()
   assert_equal(0, localExtRange:lower(1), "Checking range lower")
   assert_equal(11, localExtRange:upper(1), "Checking range upper")

   local indexer = field:indexer()
   for i = localExtRange:lower(1), localExtRange:upper(1) do
      local fitr = field:get(indexer(i))
      fitr[1] = i+1
      fitr[2] = i+2
      fitr[3] = i+3
   end

   for j = 1, field:numComponents() do
      for i = localExtRange:lower(1), localExtRange:upper(1) do
         local idx = indexer(i)
         assert_equal(i+j, field._data[idx-1 + localExtRange:volume()*(j-1)], "Checking values by indexing _data directly")
         assert_equal(i+j, field:get(idx)[j], "Checking values by using get()")         
      end
   end
end

function test_2()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }

   assert_equal(2, field:ndim(), "Checking dimensions")
   assert_equal(1, field:lowerGhost(), "Checking lower ghost")
   assert_equal(2, field:upperGhost(), "Checking upper ghost")
   assert_equal((10+3)*(10+3)*3, field:size(), "Checking size")

   assert_equal(field:defaultLayout(), field:layout(), "Checking layout")

   local localRange = field:localRange()
   assert_equal(1, localRange:lower(1), "Checking range lower")
   assert_equal(1, localRange:lower(2), "Checking range lower")

   assert_equal(10, localRange:upper(1), "Checking range upper")
   assert_equal(10, localRange:upper(2), "Checking range upper")

   local localExtRange = field:localExtRange()
   assert_equal(0, localExtRange:lower(1), "Checking range lower")
   assert_equal(0, localExtRange:lower(2), "Checking range lower")

   assert_equal(12, localExtRange:upper(1), "Checking range upper")
   assert_equal(12, localExtRange:upper(2), "Checking range upper")

   local indexer = field:indexer()
   for i = localRange:lower(1), localRange:upper(1) do
      for j = localRange:lower(2), localRange:upper(2) do
	 local fitr = field:get(indexer(i,j))
	 fitr[1] = i+2*j+1
	 fitr[2] = i+2*j+2
	 fitr[3] = i+2*j+3
      end
   end

   for i = localRange:lower(1), localRange:upper(1) do
      for j = localRange:lower(2), localRange:upper(2) do
	 local fitr = field:get(indexer(i,j))
	 assert_equal(i+2*j+1, fitr[1], "Checking field value")
	 assert_equal(i+2*j+2, fitr[2], "Checking field value")
	 assert_equal(i+2*j+3, fitr[3], "Checking field value")
      end
   end
end

function test_3()
   local grid = Grid.RectCart {
      lower = {0.0},
      upper = {1.0},
      cells = {10},
   }
   local EulerField = DataStruct.new_field_ct(ffi.typeof("struct {double rho, rhou, E;}"))
   local field = EulerField {
      onGrid = grid,
      ghost = {1, 1},
      createDeviceCopy = false,
   }

   local localRange = field:localRange()
   local indexer = field:indexer()
   for i = localRange:lower(1), localRange:upper(1) do
      local fitr = field:get(indexer(i))
      fitr[i].rho = i+1
      fitr[i].rhou = i+2
      fitr[i].E = i+3
   end

   for i = localRange:lower(1), localRange:upper(1) do
      local fitr = field:get(indexer(i))
      assert_equal(i+1, fitr[i].rho, "Testing Field of struct")
      assert_equal(i+2, fitr[i].rhou, "Testing Field of struct")
      assert_equal(i+3, fitr[i].E, "Testing Field of struct")
   end
   
end

function test_4()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }

   local localRange = field:localRange()
   local indexer = field:genIndexer()
   for idx in localRange:colMajorIter() do
      local fitr = field:get(indexer(idx))
      fitr[1] = idx[1]+2*idx[2]+1
      fitr[2] = idx[1]+2*idx[2]+2
      fitr[3] = idx[1]+2*idx[2]+3
   end

   for idx in localRange:colMajorIter() do
      local fitr = field:get(indexer(idx))
      assert_equal(idx[1]+2*idx[2]+1, fitr[1], "Checking field value")
      assert_equal(idx[1]+2*idx[2]+2, fitr[2], "Checking field value")
      assert_equal(idx[1]+2*idx[2]+3, fitr[3], "Checking field value")
   end
end

function test_5()
   local grid = Grid.RectCart {
      lower = {0.0},
      upper = {1.0},
      cells = {10},
   }
   local field1 = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
   }
   local field2 = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
   }

   local localRange, indexer = field1:localRange(), field1:indexer()
   for i = localRange:lower(1), localRange:upper(1) do
      local fitr = field1:get(indexer(i))
      fitr[1] = i+1
      fitr[2] = i+2
      fitr[3] = i+3
   end
   -- copy and test
   field2:copy(field1)
   for i = localRange:lower(1), localRange:upper(1) do
      local fitr1 = field1:get(indexer(i))
      local fitr2 = field2:get(indexer(i))

      assert_equal(fitr1[1], fitr2[1], "Checking if copy worked")
      assert_equal(fitr1[2], fitr2[2], "Checking if copy worked")
      assert_equal(fitr1[3], fitr2[3], "Checking if copy worked")
   end   
   
end

function test_6()
   local grid = Grid.RectCart {
      lower = {0.0},
      upper = {1.0},
      cells = {10},
   }
   local field1 = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
   }

   local field2 = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
   }

   local fitr = field1:get(1)
   local localRange, indexer = field1:localRange(), field1:indexer()
   for i = localRange:lower(1), localRange:upper(1) do
      field1:fill(indexer(i), fitr)
      fitr[1] = i+1
      fitr[2] = i+2
      fitr[3] = i+3
   end
   -- copy and test
   field2:copy(field1)
   for i = localRange:lower(1), localRange:upper(1) do
      local fitr1 = field1:get(indexer(i))
      local fitr2 = field2:get(indexer(i))

      assert_equal(fitr1[1], fitr2[1], "Checking if copy worked")
      assert_equal(fitr1[2], fitr2[2], "Checking if copy worked")
      assert_equal(fitr1[3], fitr2[3], "Checking if copy worked")
   end
end

function test_7()
   local grid = Grid.RectCart {
      lower = {0.0},
      upper = {1.0},
      cells = {10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
   }

   local localRange, indexer = field:localExtRange(), field:indexer()

   -- clear it
   field:clear(1.5)
   for i = localRange:lower(1), localRange:upper(1) do
      local fitr = field:get(indexer(i))

      assert_equal(1.5, fitr[1], "Checking if clear worked")
      assert_equal(1.5, fitr[2], "Checking if clear worked")
      assert_equal(1.5, fitr[3], "Checking if clear worked")
   end

   field:clear(2.5)
   for i = localRange:lower(1), localRange:upper(1) do
      local fitr = field:get(indexer(i))

      assert_equal(2.5, fitr[1], "Checking if clear worked")
      assert_equal(2.5, fitr[2], "Checking if clear worked")
      assert_equal(2.5, fitr[3], "Checking if clear worked")
   end

   field:clear(0.0)
   for i = localRange:lower(1), localRange:upper(1) do
      local fitr = field:get(indexer(i))

      assert_equal(0.0, fitr[1], "Checking if clear worked")
      assert_equal(0.0, fitr[2], "Checking if clear worked")
      assert_equal(0.0, fitr[3], "Checking if clear worked")
   end
end

function test_8()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }

   local indexer = field:genIndexer()
   for idx in field:localRangeIter() do
      local fitr = field:get(indexer(idx))
      fitr[1] = idx[1]+2*idx[2]+1
      fitr[2] = idx[1]+2*idx[2]+2
      fitr[3] = idx[1]+2*idx[2]+3
   end

   for idx in field:localRangeIter() do
      local fitr = field:get(indexer(idx))
      assert_equal(idx[1]+2*idx[2]+1, fitr[1], "Checking field value")
      assert_equal(idx[1]+2*idx[2]+2, fitr[2], "Checking field value")
      assert_equal(idx[1]+2*idx[2]+3, fitr[3], "Checking field value")
   end
end

function test_9()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }
   field:clear(10.0)

   local field1 = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }

   local indexer = field1:genIndexer()
   for idx in field1:localExtRangeIter() do
      local fitr = field1:get(indexer(idx))
      fitr[1] = idx[1]+2*idx[2]+1
      fitr[2] = idx[1]+2*idx[2]+2
      fitr[3] = idx[1]+2*idx[2]+3
   end

   -- accumulate stuff
   field:accumulate(1.0, field1, 2.0, field1)

   for idx in field:localExtRangeIter() do
      local fitr = field:get(indexer(idx))
      assert_equal(10+3*(idx[1]+2*idx[2]+1), fitr[1], "Checking field value")
      assert_equal(10+3*(idx[1]+2*idx[2]+2), fitr[2], "Checking field value")
      assert_equal(10+3*(idx[1]+2*idx[2]+3), fitr[3], "Checking field value")
   end

   -- combine stuff
   field:combine(1.0, field1, 2.0, field1)

   for idx in field:localExtRangeIter() do
      local fitr = field:get(indexer(idx))
      assert_equal(3*(idx[1]+2*idx[2]+1), fitr[1], "Checking field value")
      assert_equal(3*(idx[1]+2*idx[2]+2), fitr[2], "Checking field value")
      assert_equal(3*(idx[1]+2*idx[2]+3), fitr[3], "Checking field value")
   end   
end

function test_10()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }
   field:clear(10.0)
   field:scale(2.5)

   local indexer = field:genIndexer()
   for idx in field:localExtRangeIter() do
      local fitr = field:get(indexer(idx))
      assert_equal(25.0, fitr[1], "Checking scaled field value")
      assert_equal(25.0, fitr[2], "Checking scaled field value")
      assert_equal(25.0, fitr[3], "Checking scaled field value")
   end   
end

-- test_11 has been removed. it will not be supported.

function test_12()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
      metaData = {
	 polyOrder = 2, basisType = "ms"
      }
   }
   field:clear(10.25)

   -- write field
   field:write("CartFieldTest_field.bp", 2.5, 50)

   local fieldIn = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }
   fieldIn:clear(0.0)

   local tm, fr = fieldIn:read("CartFieldTest_field.bp")

   assert_equal(2.5, tm, "Checking time-stamp")
   assert_equal(50, fr, "Checking frame")
   
   -- check if fields are identical
   local indexer = field:genIndexer()
   for idx in field:localRangeIter() do
      local fitr, fitrIn = field:get(indexer(idx)), fieldIn:get(indexer(idx))
      for k = 1, field:numComponents() do
	 assert_equal(fitr[k], fitrIn[k], "Checking if field read correctly")
      end
   end
end

function test_13()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
      periodicDirs = {1, 2},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 1,
      ghost = {1, 1},
      syncCorners = false,
   }
   field:clear(10.5)

   -- set corner cells
   local indexer = field:indexer()
   local fItr = field:get(indexer(1,1)); fItr[1] = 1.0
   fItr = field:get(indexer(10,1)); fItr[1] = 2.0
   fItr = field:get(indexer(1,10)); fItr[1] = 3.0
   fItr = field:get(indexer(10,10)); fItr[1] = 4.0

   field:sync() -- sync field

   -- check if periodic dirs are sync()-ed properly
   local fItr = field:get(indexer(11,1))
   assert_equal(1.0, fItr[1], "Checking non-corner periodic sync")
   local fItr = field:get(indexer(11,10))
   assert_equal(3.0, fItr[1], "Checking non-corner periodic sync")
   local fItr = field:get(indexer(0,1))
   assert_equal(2.0, fItr[1], "Checking non-corner periodic sync")
   local fItr = field:get(indexer(0,10))
   assert_equal(4.0, fItr[1], "Checking non-corner periodic sync")

   -- corner cells
--   local fItr = field:get(indexer(11,11))
--   assert_equal(1.0, fItr[1], "Checking corner periodic sync")
--   local fItr = field:get(indexer(11,0))
--   assert_equal(3.0, fItr[1], "Checking corner periodic sync")
--   local fItr = field:get(indexer(0,0))
--   assert_equal(4.0, fItr[1], "Checking corner periodic sync")
--   local fItr = field:get(indexer(0,11))
--   assert_equal(2.0, fItr[1], "Checking corner periodic sync")
end

function test_14()
   local grid = Grid.RectCart {
      lower = {0.0, 0.0},
      upper = {1.0, 1.0},
      cells = {10, 10},
   }
   local field = DataStruct.Field {
      onGrid = grid,
      numComponents = 3,
      ghost = {1, 2},
   }
   local scalar = DataStruct.Field {
      onGrid = grid,
      numComponents = 1,
      ghost = {1, 2},
   }
   field:clear(10.0)
   scalar:clear(2.5)
   field:scaleByCell(scalar)

   local indexer = field:genIndexer()
   for idx in field:localExtRangeIter() do
      local fitr = field:get(indexer(idx))
      assert_equal(25.0, fitr[1], "Checking scaled field value")
      assert_equal(25.0, fitr[2], "Checking scaled field value")
      assert_equal(25.0, fitr[3], "Checking scaled field value")
   end   

   for idx in scalar:localExtRangeIter() do
      local sitr = scalar:get(indexer(idx))
      sitr[1] = idx[1]
   end   

   field:scaleByCell(scalar)

   for idx in field:localExtRangeIter() do
      local fitr = field:get(indexer(idx))
      assert_equal(25.0*idx[1], fitr[1], "Checking scaled field value")
      assert_equal(25.0*idx[1], fitr[2], "Checking scaled field value")
      assert_equal(25.0*idx[1], fitr[3], "Checking scaled field value")
   end   

   -- Initialize fields to random numbers.
   math.randomseed(1000*os.time())
   local localRange = scalar:localRange()
   local fldIdxr    = field:genIndexer()
   local scaIdxr    = scalar:genIndexer()
   for idx in localRange:rowMajorIter() do
      local fldItr = field:get(fldIdxr( idx ))
      local scaItr = scalar:get(scaIdxr( idx ))
      for k = 1, field:numComponents() do
         fldItr[k] = math.random()
      end
      for k = 1, scalar:numComponents() do
         scaItr[k] = math.random()
      end
   end
   -- Get the maximum by stepping through the scalar.
   fldMax, fldMin, fldSum =  {}, {}, {}
   for k = 1, field:numComponents() do
      fldMax[k] = GKYL_MIN_DOUBLE
      fldMin[k] = GKYL_MAX_DOUBLE
      fldSum[k] = 0.0
   end
   scaMax, scaMin, scaSum = GKYL_MIN_DOUBLE, GKYL_MAX_DOUBLE, 0.0
   for idx in localRange:rowMajorIter() do
      local fldItr = field:get(fldIdxr( idx ))
      local scaItr = scalar:get(scaIdxr( idx ))
      for k = 1, field:numComponents() do
         fldMax[k] = math.max(fldMax[k],fldItr[k])
         fldMin[k] = math.min(fldMin[k],fldItr[k])
         fldSum[k] = fldSum[k] + fldItr[k]
      end
      scaMax = math.max(scaMax,scaItr[1])
      scaMin = math.min(scaMin,scaItr[1])
      scaSum = scaSum + scaItr[1]
   end
   cartFldMax, cartFldMin, cartFldSum = field:reduce("max"), field:reduce("min"), field:reduce("sum")
   cartScaMax, cartScaMin, cartScaSum = scalar:reduce("max"), scalar:reduce("min"), scalar:reduce("sum")
   for k = 1, field:numComponents() do
      assert_equal(fldMax[k], cartFldMax[k], "Checking reduce('max')")
      assert_equal(fldMin[k], cartFldMin[k], "Checking reduce('min')")
      assert_equal(fldSum[k], cartFldSum[k], "Checking reduce('sum')")
   end
   assert_equal(scaMax, cartScaMax[1], "Checking scalar reduce('max')")
   assert_equal(scaMin, cartScaMin[1], "Checking scalar reduce('min')")
   assert_equal(scaSum, cartScaSum[1], "Checking scalar reduce('sum')")
end

test_1()
test_2()
test_3()
test_4()
test_5()
test_6()
test_7()
test_8()
test_9()
test_10()
test_12()
test_13()
test_14()

if stats.fail > 0 then
   print(string.format("\nPASSED %d tests", stats.pass))
   print(string.format("**** FAILED %d tests", stats.fail))
else
   print(string.format("PASSED ALL %d tests!", stats.pass))
end
