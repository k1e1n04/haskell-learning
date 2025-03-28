import Data.Char (digitToInt)
digitSum :: Int -> Int
digitSum = sum . map digitToInt . show
