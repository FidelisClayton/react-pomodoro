module Views exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Model exposing (Model)


view : Model -> Html msg
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


displayTimer : Html msg
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


displayTypes : Html msg
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


controlsPlay : Html msg
controlsPlay =
    div
        [ class "controlsPlay" ]
        [ button
            [ class "play btnIcon" ]
            []
        , button
            [ class "stop btnIcon" ]
            []
        ]
