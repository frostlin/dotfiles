#!/bin/bash

SHADER_FILE="${1:-/home/paul/.config/hypr/shaders/blue_light_shader_v2.frag}"
CURRENT_SHADER=$(hyprctl getoption decoration:screen_shader -j | jq -r '.str')

if [[ "$CURRENT_SHADER" == "$SHADER_FILE" ]]; then
    hyprctl keyword decoration:screen_shader ''
else
    hyprctl keyword decoration:screen_shader "$SHADER_FILE"
fi
