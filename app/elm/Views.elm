module Views exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Messages exposing (Msg(..))
import Model exposing (Model, TimeType(..))


view : Model -> Html Msg
view model =
    div
        [ class "main" ]
        [ displayTimer model
        , displayTypes
        , div
            [ class "container" ]
            [ controlsPlay
            ]
        ]


displayTimer : Model -> Html Msg
displayTimer model =
    div
        [ class "container display timer" ]
        [ span
            [ class "time" ]
            [ text <| formatTime model.time ]
        , span
            [ class "timeType" ]
            [ text <| "The " ++ model.timeType.displayText ++ " time!" ]
        ]


displayTypes : Html Msg
displayTypes =
    div
        [ class "container display types" ]
        [ button
            [ class "btn code"
            , onClick <| SetTimeType Code
            ]
            [ text "Code" ]
        , button
            [ class "btn social"
            , onClick <| SetTimeType Social
            ]
            [ text "Social" ]
        , button
            [ class "btn coffe"
            , onClick <| SetTimeType Coffee
            ]
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


formatTime : Float -> String
formatTime time =
    let
        parsedTime =
            round time

        minutes =
            (parsedTime % 3600 // 60)
                |> toFloat
                |> floor

        seconds =
            (parsedTime % 3600 % 60)
                |> toFloat
                |> floor
    in
    paddNumber minutes ++ ":" ++ paddNumber seconds


paddNumber : Int -> String
paddNumber value =
    if value < 10 then
        "0" ++ toString value
    else
        "" ++ toString value
