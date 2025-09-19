#!bin/sh

battery=(
  script="$PLUGIN_DIR/battery.sh" 
  icon.font="$FONT:Regular:19.0" 
  label.drawing=on  
  label.font="$FONT:Regular:13.0" 
  label.padding_left=$PADDINGS
  label.padding_right=$PADDINGS
  background.color=$TRANSPARENT 
  background.height=25 
  background.padding_left=$PADDINGS
  background.padding_right=$PADDINGS
  update_freq=120
  updates=on
)

sketchybar --add item battery right \
  --set battery "${battery[@]}" \
  --subscribe battery system_woke power_source_change
