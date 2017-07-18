module Pomodoro exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Model exposing (Model, initialModel)
import Update exposing (update)
import Views exposing (view)


main : Program Never Model msg
main =
    Html.beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
