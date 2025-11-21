#!/usr/bin/env bash

ram_percent=(
  script="$PLUGIN_DIR/ram_percent.sh"
  update_freq=15
  icon=$MEMORY
)

sketchybar --add item ram_percent right \
  --set ram_percent "${ram_percent[@]}"
