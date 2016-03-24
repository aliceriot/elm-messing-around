module Zip where

import Graphics.Element exposing (show)
import List exposing (map)

listOne = [1..4]
listTwo = map (\x -> x * x) [1..4]

zip : List a -> List b -> List (a,b)
zip xs ys =
  case (xs, ys) of
    ( x :: xs', y :: ys') ->
      (x,y) :: zip xs' ys'
    (_, _) ->
      []

listOfSquares list = map (\x -> x * x) list
numbersWithSquares n =
  zip [1..n] (listOfSquares [1..n])

otherZip = List.map2 (,)

otherNumbersWithSquares n =
  otherZip [1..n] map( (\x -> x* x) [1..n])
