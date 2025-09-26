#!/usr/bin/env bash

front_app=(
  icon.drawing=off
  script="$PLUGIN_DIR/front_app.sh"
  background.color=$TRANSPARENT
  background.border_color=$ORANGE
  background.border_width=1
  background.corner_radius=5
  background.height=25
)

sketchybar --add item chevron left \
  --set chevron icon=􀆊 \
  label.drawing=off

sketchybar --add item front_app left \
  --subscribe front_app front_app_switched \
  --set front_app ${front_app[@]}
