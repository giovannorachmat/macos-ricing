#!/usr/bin/env bash

RAM_PERCENT="$(memory_pressure | grep "System-wide memory free percentage: " | awk '{print 100-$5}')"
NORMALIZED=$(echo "$RAM_PERCENT/100" | bc -l)

sketchybar --set $NAME label="$RAM_PERCENT%"
sketchybar --push $NAME "$NORMALIZED"
