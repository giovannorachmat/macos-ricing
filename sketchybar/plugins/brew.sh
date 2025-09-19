#!bin/sh

sketchybar --set "$NAME" label="$(brew outdated | wc -l | tr -d ' ')"

