#!/usr/bin/env bash

source "$CONFIG_DIR/icons.sh"

SSID=$(networksetup -listpreferredwirelessnetworks en0 | sed -n '2p' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

if [ "$SENDER" = "wifi_change" ]; then
  if [ -z "$SSID" ]; then
    sketchybar --set "$NAME" icon="$WIFI_DISCONNECTED" label=""
  else
    sketchybar --set "$NAME" icon="$WIFI_CONNECTED" label="$SSID"
  fi
fi
