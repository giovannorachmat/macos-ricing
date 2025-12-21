#!/usr/bin/env bash

sketchybar --add event aerospace_workspace_change

FOCUSED=$(aerospace list-workspaces --focused)

if [ -z "$FOCUSED" ]; then
  FOCUSED="No Window"
fi

space=(
  icon="$FOCUSED"
  icon.color=$WHITE
  icon.padding_left=12
  background.color=$BACKGROUND_2
  background.border_color=$MAGENTA
  background.border_width=1
  background.corner_radius=5
  background.height=20
  background.drawing=on
  script="$PLUGIN_DIR/aerospace.sh $FOCUSED"
)

sketchybar \
  --add item space left \
  --subscribe space aerospace_workspace_change \
  --set space "${space[@]}"

# for sid in $(aerospace list-workspaces --all); do
#   space=(
#     icon="$sid"
#     icon.color=$WHITE
#     icon.padding_left=12
#     background.color=$BACKGROUND_2
#     background.border_color=$MAGENTA
#     background.border_width=1
#     background.corner_radius=5
#     background.height=20
#     background.drawing=on
#     click_script="aerospace workspace $sid"
#     script="$PLUGIN_DIR/aerospace.sh $sid"
#   )
#
#   sketchybar --add item space.$sid left \
#     --subscribe space.$sid aerospace_workspace_change \
#     --set space.$sid "${space[@]}"
# done
