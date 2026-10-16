#!/usr/bin/env bash

calendar=(
  update_freq=45
  icon=$CALENDAR
  icon.color=$GREEN
  script="$PLUGIN_DIR/calendar.sh"
  background.color=$TRANSPARENT
)

sketchybar --add item calendar e \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke
