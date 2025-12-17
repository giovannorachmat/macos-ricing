#!/usr/bin/env bash

source "$CONFIG_DIR/icons.sh"

COUNT=$($(which zsh) -c "brew outdated --quiet | wc -l | tr -d ' '")

echo "$(date) | Count: $COUNT" >>/private/tmp/brew_debug.log

if ((COUNT > 0)); then
  sketchybar --set "$NAME" icon="$BREW_FULL" label="$COUNT"
else
  sketchybar --set "$NAME" icon="$BREW_EMPTY" label=""
fi
