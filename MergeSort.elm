module MergeSort (mergesort, split) where

import Graphics.Element exposing (..)


mergesort : List comparable -> List comparable
mergesort list =
  case list of
    [] ->
      list

    [ _ ] ->
      list

    _ ->
      let
        ( xs, ys ) =
          split list
      in
        merge (mergesort xs) (mergesort ys)


split : List a -> ( List a, List a )
split list =
  case list of
    [] ->
      ( [], [] )

    x :: rest ->
      let
        ( xs, ys ) =
          split rest
      in
        ( ys, x :: xs )


merge list otherlist =
  []
