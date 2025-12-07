#!/usr/bin/env bash

sound=(
  script="$PLUGIN_DIR/sound.sh"
  click_script="SwitchAudioSource -a"
  label.padding_left=0
)

sketchybar --add item sound right \
  --set sound "${sound[@]}" \
  --subscribe sound volume_change
