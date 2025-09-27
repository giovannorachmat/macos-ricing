#!/usr/bin/env bash

wifi=(
  script="$PLUGIN_DIR/wifi.sh"
  icon.color=$BLUE
)

sketchybar --add item wifi right \
  --subscribe wifi wifi_change \
  --set wifi "${wifi[@]}"
