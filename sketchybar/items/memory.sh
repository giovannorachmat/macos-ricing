ram=(
  icon=$MEMORY
  update_freq=10
  script="$PLUGIN_DIR/memory.sh"
)

sketchybar --add item ram right \
           --set ram "${ram[@]}"
