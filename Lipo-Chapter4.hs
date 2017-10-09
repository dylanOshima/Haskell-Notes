{- CHAPTER 3: RECURSION BABY
   . Haskell defines the solution, rather then how to solve the problem

-}

-- Finding the maximum of a list recursively
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Can't find maximum of an empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs) -- max returns the greater of two values
-- maximum' [4, 5, 1, 9, 2]
-- maximum' [4,5,1,9,2] = max 4 (maximum' [5,1,9,2])
-- maximum' [5,1,9,2] = max 5 (maximum' [1,9,2])
-- maximum' [1,9,2] = max 1 (maximum' [9,2])
-- maximum' [9,2] = max 9 (maximum' [2])
-- maximum' [2] = 2
-- maximum' [9,2] = max 9 2 = 9
-- maximum' [1,9,2] = max 1 9 = 9
-- maximum' [5,1,9,2] = max 5 9 = 9
-- etc..

-- replicate - takes an Int and a value, and returns a
-- list that has several repetitions of that value
-- (namely, however many the Int specifies)
replicate' :: Int -> Int -> [Int]
replicate' x y
  | x <= 0    = []
  | otherwise = y : replicate' (x-1) y


-- take - gets n number of elements from a list
take' :: Int -> [Int] -> [Int]
take' n list@(x:xs)
  | n <= 0     = []
  | list == [] = []
  | otherwise  = x : take' (n-1) xs

-- zip - Gets the combination of two lists
zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = [] -- In this case _ represents anything
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

-- quickSort - Orders the elements
--           - Checks the first element, and puts all elements greater than it
--           - on the right side and all emlements less than it to the left
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      larger = [b | b <- xs, b > x]
  in quickSort smallerOrEqual ++ [x] ++ quickSort larger
-- quickSort [5,1,8,3,2,6]
-- quickSort 5:[1,3,2,5]
--    smallerOrEqual = [1,3,2]
--    larger = [6,8]
--    quickSort [1,3,2] ++ [5] ++ quickSort [6,8]
-- quickSort 1:[3,2]
--    smallerOrEqual = []
--    larger = [3,2]
--    quickSort [] ++ [1] ++ quickSort [3,2]
-- quickSort 3:[2]
--    smallerOrEqual = [2]
--    larger = []
--    quickSort [2] ++ [3] ++ quickSort []
-- quickSort 2:[]
--    smallerOrEqual = []
--    larger = []
--    quickSort [] ++ [2] ++ quickSort []
-- quickSort [] = []
-- quickSort [2] = [] ++ [2] ++ [] = [2]
-- quickSort [3,2] = quickSort [2] ++ [3] ++ quickSort []
--                 = [2,3]
-- quickSort [1,3,2] = quickSort[] ++ [1] ++ quickSort [3,2]
--                   = [1,2,3]
-- quickSort [5,1,3,2,5] = quickSort [1,3,2] ++ [5] ++ quickSort [6,8]
--                       = [1,2,3] ++ [5] ++ [6,8] -- skipped quickSort [6,8] cause c'mon...
-- quickSort [5,1,3,2,5] = [1,2,3,5,6,8]
