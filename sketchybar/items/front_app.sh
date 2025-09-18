#!bin/sh

sketchybar --add item chevron left \
           --set chevron icon=􀆊 \
                 label.drawing=off

sketchybar --add item front_app left \
           --subscribe front_app front_app_switched \
           --set front_app icon.drawing=off \
                 script="$PLUGIN_DIR/front_app.sh" \
                 background.color=$TRANSPARENT \
                 background.height=25 \
                 # background.padding_left=7 \
                 # background.padding_right=7 \
                 # label.padding_left=7 \
                 # label.padding_right=7
