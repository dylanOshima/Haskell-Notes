{- CHAPTER 3: SYNTAX IN FUNCTIONS
  Pattern Matching
  . Pattern Matching - Similar to "Method Overloading" it allows for polymorphism
      - It also creates a way where haskell will predict what you want it to do
  . '_' represents a generic variable
  . Haskell programmers use the x:xs pattern often, especially with recursive functions.
  . Cannot use '++' with pattern matching

  As-Patterns
  . As-Patterns - is a way to reference an entire list while still working with patterns
  > Var@(some:list) - You can use var to reference the entire list

  Guards
  > ' | (boolean expression) = Stuff to do if it's true' - A switch pattern
      . Use the 'otherwise' expression for default

  Where
  . Use where to define a set of variables that store data
  . Where variables have to be in the same column
  . Scope is limited to the function

  Let
  . Similar to where, except that it's a formal expression
  . You can use semicolon to separate bindings
  > let data = "binding"
        moreVar = 2
    in someFunction ++ data
  . Can be used in list comprehension

  Case Expressions
  . Syntactic sugar for the method overloading aspect of pattern matching
  > case "expression" of pattern -> result
                         pattern -> result
                         pattern -> result
                         ...
  . Can be used ANYWHERE
-}

-- Example of pattern matching
isSeven :: Int -> String
isSeven 7 = "This is a 7"
isSeven x = "This is not a 7" -- Known as a "catchall pattern", basically a default
-- Code is read from top to bottom
-- For special characters like 7, it will automatically evaluate

-- Example of Recursion
fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib x = (fib (x - 1)) + (fib (x - 2)) -- "catchall pattern"

-- Example of Pattern Matching with Lists
head' :: [a] -> a
head' [] = error "It's empty dumbass" -- Crashes the program and outputs an error
head' (x:_) = x

-- As-Patterns
firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- Guards
checkTemp :: Float -> String
checkTemp t
  | t < 0 = "The weather is literally freezing"
  | t < 15 = "The weather is slightly chilly"
  | t < 25 = "The weather is nice and warm"
  | otherwise = "Damn it's hot!"

-- Where
noCreativity :: Integer -> String
noCreativity s
  | s == 10 = "It's 10."
  | otherwise = "Cannot use the variable mutliple times in where statements"
  where thingA = 10

-- Let
squareShit :: [Int] -> [Int]
squareShit xs = [square | x <- xs, let square = x * x ]

-- Case
describeList :: [a] -> String
describeList ls = "The list is " ++ case ls of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."
