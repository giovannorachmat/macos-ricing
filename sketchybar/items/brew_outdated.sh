#!/usr/bin/env bash

brew_outdated=(
  icon="􀺽"
  update_freq=300
  script="$PLUGIN_DIR/brew_outdated.sh"
)

sketchybar --add item brew_outdated right \
  --set brew_outdated "${brew_outdated[@]}"
