#!bin/sh

cpu=(
  script="$PLUGIN_DIR/cpu.sh"
  update_freq=5
  background.height=25
  icon=$CPU
  updates=on
)

sketchybar --add item cpu right \
  --set cpu "${cpu[@]}"
