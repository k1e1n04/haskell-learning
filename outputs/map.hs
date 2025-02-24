map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs
-- map' f xs = foldl (\acc x -> acc ++ [f x]) [] xs とも書けるが++は:よりも処理が重いため、foldrを使う
-- またfoldrは無限リストに対しても適用できるが、foldlは無限リストに対して適用すると無限ループに陥る
