#!/usr/bin/env bash

brew_outdated=(
  update_freq=7200
  script="$PLUGIN_DIR/brew_outdated.sh"
)

sketchybar --add item brew_outdated right \
  --set brew_outdated "${brew_outdated[@]}"
