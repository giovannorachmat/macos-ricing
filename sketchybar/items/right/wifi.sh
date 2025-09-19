#!/bin/sh

SSID=$(system_profiler SPAirPortDataType | awk '/Current Network/ {getline;$1=$1; gsub(":",""); print;exit}')

sketchybar --add item wifi right \
  --set wifi \
    update_freq=10 \
    icon=􀙇  \
    icon.color=0xff58d1fc \
    label="$SSID"
