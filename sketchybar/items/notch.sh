#!/usr/bin/env bash

notch=(
  background.height=25
  background.padding_left=0
  background.padding_right=0
  label.padding_left=0
  label.padding_right=0
  icon.padding_left=0
  icon.padding_right=0
  padding_left=250
  padding_right=0
)

sketchybar --add item notch center \
  --set notch "${notch[@]}"
