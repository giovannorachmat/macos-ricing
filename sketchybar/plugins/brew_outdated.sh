#!/usr/bin/env bash

BREW_OUTPUT=$(brew outdated --greedy)
COUNT=$(echo "$BREW_OUTPUT" | wc -l | tr -d ' ')

# debugging
# echo "Brew output: '$BREW_OUTPUT'" >>/tmp/brew_debug.log
# echo "Count: $COUNT" >>/tmp/brew_debug.log

sketchybar --set "$NAME" label="$COUNT"
