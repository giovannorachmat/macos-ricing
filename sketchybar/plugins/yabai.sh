FOCUSED_WORKSPACE=$(yabai -m space --focus recent)

# if [ "$AEROSPACE_SERVICE_MODE_ENABLED" = true ]; then
#   sketchybar --set workspaces_service_mode_indicator \
#     label.drawing=on
# else
#   sketchybar --set workspaces_service_mode_indicator \
#     label.drawing=off
# fi

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on
else
  sketchybar --set $NAME background.drawing=off
fi
