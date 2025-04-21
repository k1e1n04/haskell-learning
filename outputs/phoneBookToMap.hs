import qualified Data.Map as Map

phoneBook =
  [ ("betty", "555-1234")
  , ("betty", "342-2492")
  , ("bonnie", "555-4321")
  , ("patsy", "555-5432")
  , ("patsy", "943-1234")
  , ("lucille", "555-8765")
  , ("wendy", "555-6789")
  , ("sam", "555-0000")
  ]

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap = Map.fromListWith add
  where add number1 number2 = number2 ++ ", " ++ number1
