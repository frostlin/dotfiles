#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Pictures/Wallpapers/best"

# Get a random wallpaper from the directory
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

# Set wallpaper using swww
if [[ -n "$RANDOM_WALLPAPER" ]]; then
    swww img "$RANDOM_WALLPAPER" --transition-type simple --transition-fps 240
    # Alternative (if using feh):
    # feh --bg-fill "$RANDOM_WALLPAPER"
else
    echo "No wallpapers found in $WALLPAPER_DIR"
fi
