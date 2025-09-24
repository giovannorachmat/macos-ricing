#!bin/sh

cpu=(
  script="$PLUGIN_DIR/cpu.sh"
  update_freq=5
  background.height=25
  icon=$CPU
)

sketchybar --add item cpu center \
  --set cpu "${cpu[@]}"
