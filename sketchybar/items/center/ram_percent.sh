#!/usr/bin/env bash

ram_percent=(
  script="$PLUGIN_DIR/ram_percent.sh"
  update_freq=5
  icon=$MEMORY
)

sketchybar --add item ram_percent center \
  --set ram_percent "${ram_percent[@]}"
