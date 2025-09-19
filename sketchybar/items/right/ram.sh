#!/bin/sh

ram_percent=(
  label="$(memory_pressure | grep "System-wide memory free percentage:" | awk '{print 100-$5"%"}')"
  icon=$MEMORY
  update_freq=5
)

sketchybar --add item ram_percent right \
           --set ram_percent "${ram_percent[@]}"
