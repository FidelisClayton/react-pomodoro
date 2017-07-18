module Pomodoro exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Messages exposing (Msg)
import Model exposing (Flags, Model, init, initialModel)
import Subscriptions exposing (subscriptions)
import Update exposing (update)
import Views exposing (view)


main : Program Flags Model Msg
main =
    Html.programWithFlags
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
