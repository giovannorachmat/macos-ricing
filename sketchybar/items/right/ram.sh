#!/usr/bin/env bash

ram_percent=(
  label="$(memory_pressure | grep "System-wide memory free percentage:" | awk '{print 100-$5"%"}')"
  update_freq=5
  icon=$MEMORY
)

sketchybar --add item ram_percent right \
           --set ram_percent "${ram_percent[@]}"
