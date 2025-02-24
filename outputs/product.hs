product' :: Num a => [a] -> a
-- product' xs = foldl (\acc x -> acc * x) 1 xs
-- (*) は2つの引数を取って掛け合わせる関数であるため、(\acc x -> acc * x)と同義
-- foldlに対して(*),1 を部分適用するとxsを受け取る関数が得られる
-- これはproduct'と同義であるため、product'を以下のように書き換えることができる
product' = foldl (*) 1
