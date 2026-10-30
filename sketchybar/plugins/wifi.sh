#!/usr/bin/env bash

source "$CONFIG_DIR/icons.sh"

IFACE=$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}')

if ipconfig getsummary "$IFACE" | grep -q '^ *SSID : '; then
  sketchybar --set "$NAME" icon="$WIFI_CONNECTED" label=""
else
  sketchybar --set "$NAME" icon="$WIFI_DISCONNECTED" label=""
fi
