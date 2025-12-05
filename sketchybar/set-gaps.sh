#!/usr/bin/env bash

# Get the Mac model
MODEL=$(system_profiler SPHardwareDataType | grep "Model Name" | awk -F': ' '{print $2}')

# Get display resolution to help identify which machine
RESOLUTION=$(system_profiler SPDisplaysDataType | grep "Resolution" | head -n1)

# Determine gaps based on model or resolution
if [[ "$RESOLUTION" == *"3024 x 1964"* ]]; then
  # MBP 14" M1 Pro
  BUILTIN_TOP_GAP=10
elif [[ "$MODEL" == *"MacBook Pro"* ]] && [[ "$RESOLUTION" == *"2560 x 1600"* ]]; then
  # MBP 13" M1 (adjust resolution if different)
  BUILTIN_TOP_GAP=35
else
  # Default
  BUILTIN_TOP_GAP=35
fi

echo "Detected: $MODEL"
echo "Resolution: $RESOLUTION"
echo "Setting built-in display top gap to: $BUILTIN_TOP_GAP"
