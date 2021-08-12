#!/bin/bash

# window name
game=NieR:Automata

# random down keys to check that window focus is active
xdotool search --name $game windowactivate --sync sleep 2 key --repeat 3 --delay 50 Down
# exit pause menu
xdotool search --name $game windowactivate --sync key --repeat 2 --delay 100 Escape
sleep 5

while true; do
    # move left, auto pickup item, move right back to access point
    echo "keydown a"
    xdotool search --name $game windowactivate --sync keydown --delay 50 a
    sleep 24
    echo "keyup a"
    xdotool search --name $game windowactivate --sync keyup --delay 50 a
    sleep 2
    echo "keydown d"
    xdotool search --name $game windowactivate --sync keydown --delay 50 d
    sleep 23
    echo "keyup d"
    xdotool search --name $game windowactivate --sync keyup --delay 50 d

    # open menu
    sleep 3
    echo "escape"
    xdotool search --name $game windowactivate --sync key --delay 100 Escape
    sleep 6

    # save
    echo "s"
    xdotool search --name $game windowactivate --sync key --delay 50 s
    sleep 2
    echo "Return"
    xdotool search --name $game windowactivate --sync key --delay 50 Return
    sleep 2

    # load the current save file
    echo "w"
    xdotool search --name $game windowactivate --sync key --delay 50 w
    sleep 2
    echo "a"
    xdotool search --name $game windowactivate --sync key --delay 50 a
    sleep 3
    echo "s"
    xdotool search --name $game windowactivate --sync key --delay 50 s
    sleep 3
    echo "s"
    xdotool search --name $game windowactivate --sync key --delay 50 s
    sleep 2
    echo "Return"
    xdotool search --name $game windowactivate --sync key --delay 50 Return
    sleep 2
    echo "Return"
    xdotool search --name $game windowactivate --sync key --delay 50 Return
    sleep 2
    echo "a"
    xdotool search --name $game windowactivate --sync key --delay 50 a
    sleep 2
    echo "Return"
    xdotool search --name $game windowactivate --sync key --delay 50 Return

    echo "waiting the game save load, you can safely stop the script here"
    sleep 30
done
