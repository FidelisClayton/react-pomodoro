module Views exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Messages exposing (Msg(Play, Stop))
import Model exposing (Model)


view : Model -> Html Msg
view model =
    div
        [ class "main" ]
        [ displayTimer
        , displayTypes
        , div
            [ class "container" ]
            [ controlsPlay
            ]
        ]


displayTimer : Html Msg
displayTimer =
    div
        [ class "container display timer" ]
        [ span
            [ class "time" ]
            [ text "15:00" ]
        , span
            [ class "timeType" ]
            [ text "The coffe time!" ]
        ]


displayTypes : Html Msg
displayTypes =
    div
        [ class "container display types" ]
        [ button
            [ class "btn code" ]
            [ text "Code" ]
        , button
            [ class "btn social" ]
            [ text "Social" ]
        , button
            [ class "btn coffe" ]
            [ text "Coffee" ]
        ]


controlsPlay : Html Msg
controlsPlay =
    div
        [ class "controlsPlay" ]
        [ button
            [ class "play btnIcon"
            , onClick Play
            ]
            []
        , button
            [ class "stop btnIcon"
            , onClick Stop
            ]
            []
        ]
