#!/bin/sh

FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)

# sketchybar --set space label="$FOCUSED_WORKSPACE"

# if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
#   sketchybar --set $NAME background.drawing=on space label="$FOCUSED_WORKSPACE"
# else
#   sketchybar --set $NAME background.drawing=off space label="$FOCUSED_WORKSPACE"
# fi

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi
