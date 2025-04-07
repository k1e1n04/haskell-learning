data Vector a = Vector a a a 
  deriving (Show)

vplus :: Num a => Vector a -> Vector a -> Vector a
(Vector x1 y1 z1) `vplus` (Vector x2 y2 z2) = Vector (x1 + x2) (y1 + y2) (z1 + z2)

dotProd :: Num a => Vector a -> Vector a -> a
(Vector x1 y1 z1) `dotProd` (Vector x2 y2 z2) = x1 * x2 + y1 * y2 + z1 * z2

vmult :: Num a => Vector a -> a -> Vector a
(Vector x1 y1 z1) `vmult` k = Vector (k * x1) (k * y1) (k * z1)
