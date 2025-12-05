#!/usr/bin/env bash

BREW_OUTPUT=$(brew outdated --greedy)
COUNT=$(echo "$BREW_OUTPUT" | wc -l | tr -d ' ')

# debugging
echo "Brew output: '$BREW_OUTPUT'" >>/private/tmp/brew_debug.log

sketchybar --set "$NAME" label="$BREW_OUTPUT"
