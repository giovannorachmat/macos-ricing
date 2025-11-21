#!/usr/bin/env bash

BREW_OUTDATED=$(brew outdated --greedy | wc -l | tr -su ' ')

sketchybar --set "$NAME" label="$BREW_OUTDATED"
