#!/bin/bash

# Always restart Waybar cleanly
pkill waybar
sleep 0.2
waybar &
sleep 0.2

# Settings
WAYBAR_VISIBLE=0
TRIGGER_Y=2
HIDE_DELAY=0.4
LAST_SHOW_TIME=0

# Function to toggle Waybar
toggle_waybar() {
    pkill -SIGUSR1 waybar
}

# Initially hide Waybar
toggle_waybar

while true; do
    y_pos=$(hyprctl cursorpos -j | jq '.y')
    now=$(date +%s.%3N)

    if (( y_pos < TRIGGER_Y )); then
        if (( WAYBAR_VISIBLE == 0 )); then
            toggle_waybar
            WAYBAR_VISIBLE=1
            TRIGGER_Y=45
        fi
        LAST_SHOW_TIME=0
    else
        if (( WAYBAR_VISIBLE == 1 )); then
            if (( $(echo "$LAST_SHOW_TIME == 0" | bc -l) )); then
                LAST_SHOW_TIME=$now
            elif (( $(echo "$now - $LAST_SHOW_TIME >= $HIDE_DELAY" | bc -l) )); then
                toggle_waybar
                WAYBAR_VISIBLE=0
                LAST_SHOW_TIME=0
                TRIGGER_Y=2
            fi
        fi
    fi

    sleep 0.2
done
set +x
