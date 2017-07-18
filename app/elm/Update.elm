module Update exposing (update)

import Messages exposing (Msg(Play, Stop))
import Model exposing (Model)
import Ports


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Play ->
            { model | play = True } ! [ Ports.play () ]

        Stop ->
            { model | play = False } ! [ Ports.pause () ]

        _ ->
            model ! []
