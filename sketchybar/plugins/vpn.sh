#!/usr/bin/env bash

source "$CONFIG_DIR/icons.sh"

VPN=$(scutil --nc list | rg '\(Connected\)' | rg -o '"[^"]+"' | tr -d '"')

if [[ -z "$VPN" ]]; then
  sketchybar --set "$NAME" icon="VPN: " label="off"
else
  sketchybar --set "$NAME" icon="VPN: " label="$VPN"
fi
