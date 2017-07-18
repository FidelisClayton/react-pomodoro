module Model exposing (..)


type TimeType
    = Code
    | Social
    | Coffee


type alias Model =
    { time : Float
    , timeType : TimeTypeModel
    , title : String
    , play : Bool
    }


type alias Flags =
    { time : Float
    , timeType : Int
    , title : String
    , play : Bool
    }


type alias TimeTypeModel =
    { type_ : TimeType
    , time : Float
    , displayText : String
    }


initialModel : Flags -> Model
initialModel flags =
    { time = timeCode.time
    , timeType = timeCode
    , title = flags.title
    , play = flags.play
    }


init : Flags -> ( Model, Cmd msg )
init flags =
    initialModel flags ! []


timeCode : TimeTypeModel
timeCode =
    { type_ = Code, time = 1500, displayText = "code" }


timeSocial : TimeTypeModel
timeSocial =
    { type_ = Social, time = 300, displayText = "social" }


timeCoffee : TimeTypeModel
timeCoffee =
    { type_ = Coffee, time = 900, displayText = "coffee" }


timeTypes : List TimeTypeModel
timeTypes =
    [ timeCode
    , timeSocial
    , timeCoffee
    ]
