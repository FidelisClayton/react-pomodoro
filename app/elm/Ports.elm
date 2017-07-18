port module Ports exposing (..)


port play : () -> Cmd msg


port pause : () -> Cmd msg


port setTime : Float -> Cmd msg


port elapseTime : (Float -> msg) -> Sub msg
