#!/bin/sh

ram=(
  icon=$MEMORY
  update_freq=5
  script="$PLUGIN_DIR/memory.sh"
)

sketchybar --add item ram right \
           --set ram "${ram[@]}"
