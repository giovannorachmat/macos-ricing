#!/usr/bin/env bash

cpu=(
  script="$PLUGIN_DIR/cpu.sh"
  update_freq=10
  background.height=25
  icon=$CPU
)

sketchybar --add item cpu right \
  --subscribe system_woke \
  --set cpu "${cpu[@]}"
