findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key = foldr
  (\(k, v) acc -> if k == key then Just v else acc) Nothing
