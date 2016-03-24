import List exposing (map)
import Html exposing (li, text, ul)
import Html.Attributes exposing (class)

listItems list = map (\t -> li [] [text t]) list
listItem itemName = li [] [text itemName]

items = ["grapes", "soda", "beverages", "milk", "eggs", "friendship"]
main =
  ul [class "grocery-list"]
    (listItems items)
