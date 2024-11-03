#!/bin/bash

swww query
if [ $? -eq 1 ]; then
  swww-daemon --format xrgb &

  swww img ~/Pictures/Wallpapers/current.set \
    --transition-type "wipe" \
    --transition-duration 2
fi
