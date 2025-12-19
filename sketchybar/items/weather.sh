#!/usr/bin/env bash

weather=(
  script="$PLUGIN_DIR/weather.sh"
  update_freq=3600
  click_script="open -a Weather.app"
)

sketchybar --add item weather e \
  --set weather "${weather[@]}"
