module Flatten (flatten) where

import List exposing (concat)
import Graphics.Element exposing (show)


-- flatten : List a


flatten xs =
  case (xs) of
    (x :: xs') :: xs'' ->
      x :: flatten xs' :: flatten xs''

    x :: xs' ->
      x :: flatten xs'

    [] ->
      []
