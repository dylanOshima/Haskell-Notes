{- CHAPTER 2: BELIEVE THE TYPE
  . In the REPL use ':t Var' to check its type
  . '::' is read as "has type of.."
  . Explicit types are denoted with a uppercase first letter
  . Tuples have a different type depending on its' inputs and length

  Functions
  . Functions also have type. It's good practice to declare it
  . In a function type declaration the last declaration is the return type

  Common Data Types
  . All standard Haskell types are instances of the 'Eq' typeclass
  * Int - Integers that are bounded
  * Integer - Integers that are NOT bounded thus handle big numbers
  * Float - Real floating-point numbers. Single precision
  * Double - Real floating-point numbers with double the precision
  * Bool - Boolean type
  * Char - Represents a unicode character and is denoted using "''"

  Type Classes
  * Eq - a type class that supports equality testing
      REPL> :t (==)
      REPL> (==) :: Eq a => a -> a -> Bool -- States that a and a have to be of type Eq
  * Ord - a type class for types whose values can be put in some order
      REPL> :t compare
      REPL> compare :: Ord a => a -> a -> Ordering
      . Ordering is a type that can be either: GT (greater than), LT (less than), or Eq (equal)
  * Show - a type class that lets instances be represnted as strings
      > show 3 -- Converts its input into a string, thus outputs: "3"
  * Read - a type class that takes a String and returns a value whose type is an instance of Read (a.k.a. most native types)
      > Use "type annotations" to tell Haskell what type to read it as
      REPL> read "5" :: Double -- Outputs: 5.0
  * Enum - Sequentially ordered types whose values can be enumerated
      > Ex. (), Bool, Char, Ordering, Int, Integer, Float, & Double
  * Bounded - Instances have an upper and lower bound
      REPL> maxBound :: Int -- outputs:9223372036854775807
  * Num - represents a number type. Show and Eq are child types of Num
  * Floating - Represents the Double and Float types.
  * Integral - Only whole numbers. Includes Int and Integer types.
      > fromIntegral :: (Num b, Integral a) => a -> b

  Type Variables
  . Functions that use type variables are called "Polymorphic functions"
  . '=>' things before this symbol are called "class constraints"
    REPL> (+) :: Num a => a -> a -> a
      . They dictate the parent-type of the inputs
  . One type can be an instance of many other types
      . The properties of types are simply functions
  . There is a 'prerequisite' for some classes, which means that one class needs to be one type, in order to be another class.
-}

-- Takes in a char list and outputs a char list
removeNonUppercase :: [Char] -> [Char] -- Why not String -> String
removeNonUppercase st = [c | c <- st, elem c ['A'..'Z']]
