#!/usr/bin/env bash

FOCUSED="$(
  omniwmctl query active-workspace |
    jq -r '.result.payload.workspace.displayName'
)"

[ -z "$FOCUSED" ] && FOCUSED="-"

sketchybar \
  --add item omni_space left \
  --set omni_space \
  icon="$FOCUSED" \
  icon.color=$WHITE \
  icon.padding_left=12 \
  background.color=$BACKGROUND_2 \
  background.border_color=$MAGENTA \
  background.border_width=1 \
  background.corner_radius=5 \
  background.height=20 \
  background.drawing=on

# space=(
#   icon="$FOCUSED"
#   icon.color=$WHITE
#   icon.padding_left=12
#   background.color=$BACKGROUND_2
#   background.border_color=$MAGENTA
#   background.border_width=1
#   background.corner_radius=5
#   background.height=20
#   background.drawing=on
# )
#
# sketchybar \
#   --add item space left \
#   --set space "${space[@]}"
