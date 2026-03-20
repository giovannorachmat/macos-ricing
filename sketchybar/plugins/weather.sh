#!/usr/bin/env bash

WEATHER=$(curl -s 'wttr.in/Jakarta+Selatan?format=1')

sketchybar --set "$NAME" label="$WEATHER"
