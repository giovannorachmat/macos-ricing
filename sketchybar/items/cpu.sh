#!/usr/bin/env bash

cpu=(
  script="$PLUGIN_DIR/cpu.sh"
  update_freq=5
  label.color=$WHITE
  graph.color=$GREEN
  graph.fill_color=$GREEN
  graph.line_width=2
  background.height=20
  background.padding_left=0
  icon.padding_right=10
  icon.padding_left=0
  click_script="kitty --single-instance -e btop; $POPUP_OFF"
  icon=$CPU
)

sketchybar --add graph cpu e 40 \
  --subscribe system_woke \
  --set cpu "${cpu[@]}"
