import Data.Char
encode :: Int -> String -> String
encode offset = map (chr . (+ offset) . ord)
