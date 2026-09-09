#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"

QUERY=$(yabai -m query --spaces)
SPACE_COUNT=$(echo "$QUERY" | jq 'length')

for sid in $(seq 0 $((SPACE_COUNT - 1))); do
  has_focus=$(echo "$QUERY" | jq -r ".[$sid][\"has-focus\"]")
  label=$(echo "$QUERY" | jq -r ".[$sid].label")
  sid_num=$((sid + 1))

  [ "$label" = "null" ] && continue

  if [ "$has_focus" = "true" ]; then
    sketchybar --set "space.$sid_num" \
      icon="$label" \
      icon.color=$WHITE \
      background.color=$BACKGROUND_2 \
      background.border_color=$MAGENTA
  else
    sketchybar --set "space.$sid_num" \
      icon="$label" \
      icon.color=0xffaaaaaa \
      background.color=0xff222222 \
      background.border_color=0xff333333
  fi
done
