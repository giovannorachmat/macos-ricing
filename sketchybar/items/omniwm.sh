#!/usr/bin/env bash

sketchybar --add event omniwm_workspace_change

FOCUSED_WORKSPACE=$(omniwmctl subscribe active-workspace --no-send-initial | jq -r '.result.payload.workspace.number // empty')

space=(
  icon="$FOCUSED_WORKSPACE"
  icon.color=$WHITE
  icon.padding_left=12
  background.color=$BACKGROUND_2
  background.border_color=$MAGENTA
  background.border_width=1
  background.corner_radius=5
  background.height=20
  background.drawing=on
)

sketchybar \
  --add item space left \
  --subscribe space omniwm_workspace_change \
  --set space "${space[@]}"

#sketchybar --add event omniwm_workspace_change
#
#FOCUSED=$(omniwmctl query active-workspace | jq -r '.result.payload.workspace.number // empty')
#
#space=(
#  icon="$FOCUSED"
#  icon.color=$WHITE
#  icon.padding_left=12
#  background.color=$BACKGROUND_2
#  background.border_color=$MAGENTA
#  background.border_width=1
#  background.corner_radius=5
#  background.height=20
#  background.drawing=on
#)
#
#sketchybar \
#  --add item space left \
#  --subscribe space omniwm_workspace_change \
#  --set space "${space[@]}"
