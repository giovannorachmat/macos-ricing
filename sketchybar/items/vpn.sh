#!/usr/bin/env bash

vpn=(
  script="$PLUGIN_DIR/vpn.sh"
  update_freq=3
)

sketchybar --add item vpn q \
  --set vpn "${vpn[@]}"
