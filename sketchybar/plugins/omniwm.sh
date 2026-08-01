#!/usr/bin/env bash

FOCUSED_WORKSPACE=$(omniwmctl query active-workspace | jq -r '.result.payload.workspace.displayName')

if [ -z "$FOCUSED_WORKSPACE" ]; then
  FOCUSED_WORKSPACE="No Window"
fi

sketchybar --set space \
  icon="$FOCUSED_WORKSPACE" \
  background.drawing=on
