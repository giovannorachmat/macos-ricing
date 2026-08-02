#!/usr/bin/env bash

SPACE="$(yabai -m query --spaces | jq -r '.[] | select(.["has-focus"] == true) | .label')"
DISPLAY="$(yabai -m query --spaces | jq -r '.[] | select(.["has-focus"] == true) | .display')"
FOCUSED="$SPACE | $DISPLAY"

[ -z "$FOCUSED" ] && exit 0

sketchybar --set yabai_space icon="$FOCUSED"
