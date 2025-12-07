#!/usr/bin/env bash

SOUND=$(SwitchAudioSource -c)

sketchybar -m --set "$NAME" label="$SOUND"
