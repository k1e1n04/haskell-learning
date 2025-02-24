replicate' :: Int -> a -> [a]
replicate' x y
      | x <0 = []
      | otherwise = y:replicate' (x-1) y
