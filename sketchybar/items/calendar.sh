#!/usr/bin/env bash

calendar=(
  update_freq=45
  icon=$CALENDAR
  icon.color=$BLUE
  script="$PLUGIN_DIR/calendar.sh"
  background.color=$TRANSPARENT
)

sketchybar --add item calendar q \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke
