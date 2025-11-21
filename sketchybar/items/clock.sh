#!/usr/bin/env bash

clock=(
  update_freq=60
  icon=$CLOCK
  icon.color=$GREEN
  script="$PLUGIN_DIR/clock.sh"
  background.color=$TRANSPARENT
  background.height=25
)

sketchybar --add item clock e \
  --set clock "${clock[@]}" \
  --subscribe clock system_woke
