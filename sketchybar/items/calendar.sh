#!/bin/sh

calendar=(
  update_freq=10
  icon=$CALENDAR
  icon.color=$BLUE
  script="$PLUGIN_DIR/calendar.sh" 
  background.color=$TRANSPARENT 
  background.height=25 
  background.padding_left=$PADDINGS
  background.padding_right=$PADDINGS 
  label.padding_left=$PADDINGS 
  label.padding_right=$PADDINGS
)

sketchybar --add item calendar center \
           --set calendar "${calendar[@]}"
