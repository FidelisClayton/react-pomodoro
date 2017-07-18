module Model exposing (Model, initialModel)


type alias Model =
    { time : Float
    , timeType : Int
    , title : String
    , play : Bool
    }


initialModel : Model
initialModel =
    { time = 0
    , timeType = 0
    , title = ""
    , play = False
    }
