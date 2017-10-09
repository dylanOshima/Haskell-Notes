import Test.QuickCheck

squares :: [Int] -> [Int]
squares xs = [x*x | x <- xs]

odds :: [Int] -> [Int]
odds xs = [x | x <- xs, odd x]

sumSqOdd :: [Int] -> Int
sumSqOdd xs = sum [x*x | x <- xs, odd x]

-- Change the name of the function to have "prop_functionName"
-- Function returns Boolean value
prop_sumSqOdd :: [Int] -> Bool
prop_sumSqOdd xs = sum [squares (odds xs)] === sumSqOdd xs

{-
  REPL> quickCheck prop_sumSqOdd
    -- It will test the function with a bunch of different values
    -- Check that the prop_sumSqOdd returns true
    -- If not, it will output the failed cases
-}
