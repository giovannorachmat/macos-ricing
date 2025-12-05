#!/usr/bin/env bash

front_app=(
  icon.drawing=on
  script="$PLUGIN_DIR/front_app.sh"
  background.color=$TRANSPARENT
  background.border_color=$ORANGE
  background.border_width=1
  background.corner_radius=5
  background.height=23
  label.padding_left=10
  label.padding_right=10
)

sketchybar --add item chevron left \
  --set chevron icon=􀆊 \
  label.drawing=off \
  background.padding_right=10

sketchybar --add item front_app left \
  --subscribe front_app front_app_switched \
  --set front_app ${front_app[@]}
