take' :: Int -> [a] -> [a]
take' x _
      | x <= 0 = []
take' _ [] = []
take' x (y:ys) = y : take' (x - 1) ys
