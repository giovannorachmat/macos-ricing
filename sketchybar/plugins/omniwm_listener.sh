#!/usr/bin/env bash

exec >>/tmp/listener.log 2>&1

echo "===== listener started ====="

stdbuf -oL omniwmctl subscribe active-workspace |
  jq -r --unbuffered '
  select(.kind=="event" and .channel=="active-workspace")
  | .result.payload.workspace.displayName
' |
  while IFS= read -r workspace; do
    echo "workspace=$workspace"

    sketchybar \
      --set omni_space icon="$workspace"

    sketchybar \
      --query omni_space |
      jq -r '.icon.value'
  done

echo "===== listener exited ====="
