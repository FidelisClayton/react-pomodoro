module Subscriptions exposing (..)

import Messages exposing (Msg(SetTime))
import Model exposing (Model)
import Ports


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Ports.elapseTime SetTime
        ]
