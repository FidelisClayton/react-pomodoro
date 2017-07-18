module Update exposing (update)

import Messages exposing (Msg(..))
import Model exposing (Model, timeTypes)
import Ports


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Play ->
            { model | play = True } ! [ Ports.play () ]

        Stop ->
            { model | play = False } ! [ Ports.pause () ]

        SetTime time ->
            { model | time = time } ! []

        SetTimeType type_ ->
            let
                newTimeType =
                    List.filter (\t -> t.type_ == type_) timeTypes
                        |> List.head
                        |> Maybe.withDefault model.timeType
            in
            { model | timeType = newTimeType, time = newTimeType.time } ! [ Ports.setTime newTimeType.time ]
