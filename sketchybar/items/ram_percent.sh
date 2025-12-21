#!/usr/bin/env bash

ram_percent=(
  script="$PLUGIN_DIR/ram_percent.sh"
  update_freq=5
  label.color=$WHITE
  graph.color=$RED
  graph.fill_color=$RED
  graph.line_width=2
  background.height=20
  icon.padding_right=10
  icon.padding_left=0
  click_script="kitty --single-instance -e btop; $POPUP_OFF"
  icon=$MEMORY
)

sketchybar --add graph ram_percent e 40 \
  --set ram_percent "${ram_percent[@]}"
