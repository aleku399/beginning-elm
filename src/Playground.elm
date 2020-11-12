module Playground exposing (main)

import Html



escapeEarth myVelocity mySpeed fuelStatus =
   let
        velocitySpeed = 
            11.86
        orbitSpeed =
            7.67
        whereToLand fuel = 
            if fuelStatus == "low" then
                "Land on droneship"
            else
                "Land on launchpad"

    in
    if myVelocity > velocitySpeed then
        "Godspeed"

    else if mySpeed == orbitSpeed then
        "Stay in orbit"

    else
        whereToLand fuelStatus

computeSpeed distance time =
    distance / time


computeTime startTime endTime =
    endTime - startTime

add a b =
    a + b


multiply c d =
    c * d


divide e f =
    e / f
main =
    escapeEarth 3 1 "low"
        |> Html.text
