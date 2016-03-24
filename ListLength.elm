import Html exposing (text)

length : List a -> Int
length list =
  case list of
    [] ->
      0
    first :: rest ->
      1 + length rest

main = text (toString (length [1..100]))
