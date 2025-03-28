import qualified Data.Map as Map

phoneBook :: Map.Map String String
phoneBook = Map.fromList
  [ ("betty", "555-1234")
  , ("bonnie", "555-4321")
  , ("patsy", "555-5432")
  , ("lucille", "555-8765")
  , ("wendy", "555-6789")
  , ("sam", "555-0000")
  ]
