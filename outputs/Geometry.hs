module Geometry (
  sphereVolume,
  sphereArea,
  cubeVolume,
  cubeArea,
  cuboidArea,
  cuboidVolume
) where

sphereVolume :: Float -> Float
sphereVolume r = (4.0 / 3.0) * pi * r^3

sphereArea :: Float -> Float
sphereArea r = 4 * pi * r^2

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume l w h = l * w * h

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea a b c = rectArea a b * 2 + rectArea a c * 2 + rectArea b c * 2

rectArea :: Float -> Float -> Float
rectArea l w = l * w

