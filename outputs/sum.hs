-- sum' xs = foldl (\acc x -> acc + x) 0 xs
-- (+) は2つの引数を取って足し合わせる関数であるため、(\acc x -> acc + x)と同義
-- foldlに対して(+),0 を部分適用するとxsを受け取る関数が得られる
-- これはsum'と同義であるため、sum'を以下のように書き換えることができる
sum' :: Num a => [a] -> a
sum' = foldl (+) 0
