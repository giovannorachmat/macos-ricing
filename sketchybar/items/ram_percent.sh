#!/usr/bin/env bash

ram_percent=(
  script="$PLUGIN_DIR/ram_percent.sh"
  update_freq=15
  icon=$MEMORY
  click_script="kitty --single-instance -e btop; $POPUP_OFF"
)

sketchybar --add item ram_percent right \
  --set ram_percent "${ram_percent[@]}"
