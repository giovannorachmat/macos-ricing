#!/usr/bin/env bash

PADDINGS=0

weather=(
  script="$PLUGIN_DIR/weather.sh"
  update_freq=30
  click_script="open -a Weather.app"
  icon.padding_left=$PADDINGS
  label.padding_left=$PADDINGS
)

sketchybar --add item weather q \
  --set weather "${weather[@]}"
