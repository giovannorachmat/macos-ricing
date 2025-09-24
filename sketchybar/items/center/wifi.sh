#!/usr/bin/env bash

SSID=$(system_profiler SPAirPortDataType | awk '/Current Network/ {getline;$1=$1; gsub(":",""); print;exit}')

wifi=(
  update_freq=10
  updates=on
  icon=􀙇
  label="$SSID"
  icon.color=0xff58d1fc
)

sketchybar --add item wifi center \
  --subscribe wifi_change \
  --set wifi "${wifi[@]}"
