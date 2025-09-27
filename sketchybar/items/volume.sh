#!/usr/bin/env bash

volume=(
  script="$PLUGIN_DIR/volume.sh"
  icon.color="$MAGENTA"
)

sketchybar --add item volume right \
  --set volume "${volume[@]}" \
  --subscribe volume volume_change
