#!/usr/bin/env bash

BREW_OUTDATED=$(brew outdated | wc -l | tr -d ' ')

sketchybar --set "$NAME" label="$BREW_OUTDATED"

