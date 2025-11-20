#!/usr/bin/env bash

FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)

if [ "$SENDER" = "aerospace_service_mode_enabled_changed" ]; then
  if [ "$AEROSPACE_SERVICE_MODE_ENABLED" = true ]; then
    sketchybar --set workspaces_service_mode_indicator \
      label.drawing=on
  else
    sketchybar --set workspaces_service_mode_indicator \
      label.drawing=off
  fi
fi

if [ "$SENDER" = "aerospace_workspace_change" ]; then
  if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
  else
    sketchybar --set $NAME background.drawing=off
  fi
fi
