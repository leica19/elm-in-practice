
import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import Browser

type alias Model = Int

init : Model
init = 
  0
  
type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model = 
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1
      
view: Model -> Html Msg
view model = 
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+"]
    ]

main : Program () Model Msg
main = 
  Browser.sandbox
    { init = init
    , update = update
    , view = view
    }
    
