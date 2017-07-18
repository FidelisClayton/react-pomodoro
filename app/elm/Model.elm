module Model exposing (..)


type alias Model =
    { time : Float
    , timeType : Int
    , title : String
    , play : Bool
    }


type alias Flags =
    { time : Float
    , timeType : Int
    , title : String
    , play : Bool
    }


type alias TimeType =
    { type_ : String
    , time : Float
    }


initialModel : Flags -> Model
initialModel flags =
    { time = flags.time
    , timeType = flags.timeType
    , title = flags.title
    , play = flags.play
    }


init : Flags -> ( Model, Cmd msg )
init flags =
    initialModel flags ! []


timeTypes : List TimeType
timeTypes =
    [ { type_ = "code", time = 15000 }
    , { type_ = "social", time = 300 }
    , { type_ = "coffee", time = 900 }
    ]
