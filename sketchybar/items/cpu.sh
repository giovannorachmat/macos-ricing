#!bin/sh

cpu=(
  script="$PLUGIN_DIR/cpu.sh"   
  click_script="btop" 
  update_freq=2
  background.height=25
  icon=$CPU
  updates=on
)

sketchybar --add item cpu right \
           --set cpu "${cpu[@]}"
