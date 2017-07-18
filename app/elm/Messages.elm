module Messages exposing (Msg(..))

import Model exposing (TimeType)


type Msg
    = Play
    | Stop
    | SetTimeType TimeType
    | SetTime Float
