{-
Data types:
  - Start with a capital letter
  "Hello World"
      > You cannot use single quotes to define a string
      > A string is just a list of chars (i.e. ['h','e','l','l','o', ...])
      > You can concatenate strings using '++'
      > Use 'String !! #' to get the #th char in the list
  'c' -- Character

Declaring Functions:
  - Functions HAVE to return something
  - If a function has no input variable, it is called a definition or a name and cannot be changed
  - Functions cannot start with a capital letter
  - Add an apostrophe to a "functionName'" to specify:
      1. Strict version of a function
      2. Slightly modified version of a function with a similar name
  > functionName var1 var2 ... = {Code}
    > You can have functions within functions which is 大切
    > if CONDITION
      then CODE
      else CODE -- Mandatory

Functions:
  - Functions have a higher hiararchy then operations
  - We can convert a prefix function into an infix function by adding 'function'
  > succ # -- Gets the next succeedin number after #
  > min # # # ... -- Gets the smallest number out of a bunch of numbers
  > max # # # ... -- Gets the largest number out of a bunch of numbers
  > div # # -- Gets the integer division of two numbers

Lists:
  -- Lists are homogeneous and order is important
  > listName = [1,2,3,4]
  -- Concatenate two lists using the ++ operation
  -- Use 'let' in the REPL to define variables
  > var :[list_2] -- Adds an element to the front of the list
    > [1,2,3] == 1:2:3:[]
  > ['l','i','s','t'] !! 3 -- Returns the 3rd element in the list, i.e. t
  -- You can have lists of lists: [[1,2,3], [1,1,1], [0,4,8]]
  -- You can use '==', '>=', '<=', '>', '<' to compare lists in lecographic order
    > [3,4,2] < [3,4,3] -- returns true
    > [0] > [] -- returns true
  > head [some list] -- returns the first element in the list (the head)
  > last [some list] -- returns the last element in the list
  > tail [some list] -- returns every element in the list except the head
  > init [some list] -- returns every element in the list except the last one
  > length [some list] -- returns the length of the list
  > null [some list] -- returns true if the list is empty
  > reverse [some list] -- reverses the order of the list
    > reverse "some list" -- returns "tsil emos"
  > take # [some list] -- takes # elements from the head of the list
    > take 0 "hello" -- returns []
  > drop # [some list] -- drops # of elements from the head of the list
    > drop 0 "hello" -- returns "hello"
-- For strings, both Maximum and Minimum orders letters from their distance from 'a', capital letters are lower
  > maximum [list] -- returns the largest number
  > minimum [list] -- returns the smallest number

  > sum [numbers] -- gets the sum of all the numbers in a list
  > product [numbers] -- gets the product of all the numbers in a list
  > elem var [list] -- checks to see if the var is in the list
    > 'e' `elem` "hello" -- returns true

Ranges
  > [1..20] -- will start with 1, and increment infinitely until it reaches 20
    > ['a'..'z'] -- returns "abcdefghijklmnopqrstuvwxyz"
    > [2,4..10] -- will add a step of 2 to each number (i.e. [2,4,6,8,10])
    > [20..1] -- will not work, you need to specify a step of -1 thus:
      > [20,19..1] -- returns [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
  - You can have infinite lists that will only get enumerated upon request
    > [1..] -- will give the set of all natural numbers
    > take 6 [cycle [1,2,3]] -- creates a list that cycles through [1,2,3] infitely and returns the first 6 numbers
      > returns [1,2,3,1,2,3]

List Comprehension
  > [f(x) | var <- [list]] -- This will put each element in the list into the f(x) function
    -- You can add a predicate (condition) to the list by simply adding a condition to the end
    -- var <- [list] is called a "Generator"
    -- "<-" read as "drawn from"
    -- "," read as "such that"
    -- "|" read as "where"
    > [f(x) | var <- [list], condition]
  > [f(x,y) | var_x <- [list_x], var_y <- [list_y]]
    -- You can have multiple lists interact
    -- This will get every combination from list_x and list_y
  >

Tuples:
  > (1, 'a', "BIT") - A tuple is heterogeneous
  -- The number of elements in a tuple defines a 'type' for tuples
  -- Thus you cannot have a list of different sized tuples
  -- You also cannot have a list of different typed tuples
    > i.e. ((1,2), ("a",2)) -- returns an error

  Only for pairs:
  > fst (a,b) -- returns a
  > snd (a,b) -- returns b
  > zip [1..2] ["one","two",..] -- returns a list of pairs of each element in the lists
    -- If lists are different lengths, it will only go as far as the shorter list

  {-
    This is a common pattern in functional pro- gramming: you start with a
    certain set of candidate solutions, and succes- sively apply
    transformations and filters to them until you’ve narrowed the
    possibilities down to the one solution (or several solutions)
    that you’re after.
  -}
-}

module Main where

import Lib

main :: IO ()
main = putStr "WASSUP MA'BITCHEEEEZ"
