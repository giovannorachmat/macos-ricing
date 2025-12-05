#!/usr/bin/env bash

source "$CONFIG_DIR/icons.sh"

SSID=$(system_profiler SPAirPortDataType | awk '/Current Network/ {getline;$1=$1; gsub(":",""); print;exit}')

if [ "$SENDER" = "wifi_change" ]; then
  if [ -z "$SSID" ]; then
    sketchybar --set "$NAME" icon="$WIFI_DISCONNECTED" label="Disconnected"
  else
    sketchybar --set "$NAME" icon="$WIFI_CONNECTED" label="$SSID"
  fi
fi
