#!bin/sh

clock=(
  update_freq=10
  icon=$CLOCK
  icon.color=$GREEN
  script="$PLUGIN_DIR/clock.sh" 
  background.color=$TRANSPARENT 
  background.height=25 
  background.padding_left=$PADDINGS 
  background.padding_right=$PADDINGS 
  label.padding_left=$PADDINGS 
  label.padding_right=$PADDINGS
)

sketchybar --add item clock right \
           --set clock "${clock[@]}" \
           --subscribe calendar system_woke
