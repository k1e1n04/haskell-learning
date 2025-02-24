reverse' :: [a] -> [a]
-- reverse' [] = []
-- reverse' (x:xs) = reverse' xs ++ [x]
reverse' = foldl (flip (:)) []
-- reverse' = foldl (\acc x -> x : acc) [] とも書けるが、flipを使うことで引数の順序を逆にすることができる
