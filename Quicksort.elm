module Quicksort where

import Graphics.Element exposing (show)
import List exposing (filter)

quickSort : List comparable -> List comparable
quickSort xs =
  case xs of
    [] -> []
    pivot :: rest ->
      let
        lower = filter (\n -> n <= pivot) rest
        higher = filter (\n -> n > pivot) rest
      in
        quickSort lower ++ [ pivot ] ++ quickSort higher
