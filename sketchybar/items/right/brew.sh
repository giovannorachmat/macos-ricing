#!/usr/bin/env bash

brew_outdated=(
  icon="􀺽"
  update_freq=120
  script="$PLUGIN_DIR/brew.sh"
)

sketchybar --add item brew_outdated right \
           --set brew_outdated "${brew_outdated[@]}"
