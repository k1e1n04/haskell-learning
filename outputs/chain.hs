chain :: Integer -> [Integer]
chain 1 = [1]
chain n
   | odd n = n : chain (n `div` 2)
   | even n = n : chain (n * 3 + 1)
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))
