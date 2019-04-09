import Html exposing (Html, a, text, div, h1, ul, li)
import Html.Attributes exposing (href)

linkItem : String -> String -> Html msg
linkItem url text_ = 
  li [] [ a [ href url ] [ text text_ ] ]

main : Html msg

main = 
  div []
    [ h1 [] [ text "Useful Links" ]
    , ul []
      [ linkItem "https://elm-lang.org" "Homepage"
      , linkItem "https://package.elm-lang.org" "Packages"
      , linkItem "https://ellie-app.com" "Playground"
      ]
    ]
  
