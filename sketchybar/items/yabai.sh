#!/usr/bin/env bash

QUERY=$(yabai -m query --spaces)
SPACE_COUNT=$(echo "$QUERY" | jq 'length')

# Remove old space items to avoid duplicates on reload
for i in $(seq 1 $SPACE_COUNT); do
  sketchybar --remove "space.$i" 2>/dev/null
done

for sid in $(seq 0 $((SPACE_COUNT - 1))); do
  label=$(echo "$QUERY" | jq -r ".[$sid].label")
  has_focus=$(echo "$QUERY" | jq -r ".[$sid][\"has-focus\"]")

  [ "$label" = "null" ] && continue

  sid_num=$((sid + 1))

  if [ "$has_focus" = "true" ]; then
    icon_color=$WHITE
    background_color=$BACKGROUND_2
    background_border_color=$MAGENTA
  else
    icon_color=0xffaaaaaa
    background_color=0xff222222
  fi

  space=(
    space="$sid_num"
    icon="$label"
    icon.color="$icon_color"
    icon.padding_left=12
    background.color="$background_color"
    background.border_color="$background_border_color"
    background.border_width=1
    background.corner_radius=5
    background.height=20
    background.drawing=on
    click_script="yabai -m space --focus $sid_num; sketchybar --trigger yabai_space_change"
    script="$PLUGIN_DIR/yabai.sh"
  )

  sketchybar --add space "space.$sid_num" left \
    --subscribe "space.$sid_num" yabai_space_change \
    --set "space.$sid_num" "${space[@]}"
done

# SPACE="$(yabai -m query --spaces | jq -r '.[] | select(.["has-focus"] == true) | .label')"
# DISPLAY="$(yabai -m query --spaces | jq -r '.[] | select(.["has-focus"] == true) | .display')"
# FOCUSED="$SPACE-$DISPLAY"
#
# [ -z "$FOCUSED" ] && FOCUSED="-"
#
# sketchybar \
#   --add item yabai_space left \
#   --set yabai_space \
#   icon="$FOCUSED" \
#   icon.color=$WHITE \
#   icon.padding_left=12 \
#   background.color=$BACKGROUND_2 \
#   background.border_color=$MAGENTA \
#   background.border_width=1 \
#   background.corner_radius=5 \
#   background.height=20 \
#   background.drawing=on
