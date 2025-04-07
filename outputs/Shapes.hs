module Shapes
  ( Point
  , Shpe
  , area
  , nudge
  , baseCircle
  , baseRect
  ) where


data Point = Point Float Float
            deriving (Show)
data Shpe = Circle Point Float
          | Rectangle Point Point
            deriving (Show)
area :: Shpe -> Float
area (Circle _ r) = pi * r^2
area (Rectangle (Point x1 y1) (Point x2 y2)) = abs ((x2 - x1) * (y2 - y1))

nudge :: Shpe -> Float -> Float -> Shpe
nudge (Circle (Point x y) r) a b = Circle (Point (x + a) (y + b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b
   = Rectangle (Point (x1 + a) (y1 + b)) (Point (x2 + a) (y2 + b))

baseCircle :: Float -> Shpe
baseCircle = Circle (Point 0 0)

baseRect :: Float -> Float -> Shpe
baseRect x y = Rectangle (Point 0 0) (Point x y)
