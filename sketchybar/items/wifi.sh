#!/usr/bin/env bash

wifi=(
  script="$PLUGIN_DIR/wifi.sh"
  icon.color=$BLUE
  icon.padding_right=0
  label.padding_right=0
)

sketchybar --add item wifi right \
  --subscribe wifi wifi_change \
  --set wifi "${wifi[@]}"
