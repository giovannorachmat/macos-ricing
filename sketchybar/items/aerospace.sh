#!bin/sh

sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
    space=(
      icon="$sid" 
      icon.color=$WHITE 
      icon.padding_left=12
      background.color=$BACKGROUND_2
      background.border_color=$MAGENTA
      background.border_width=1
      background.corner_radius=5 
      background.height=20 
      background.drawing=on
      click_script="aerospace workspace $sid" 
      script="$PLUGIN_DIR/aerospace.sh $sid"
    )

    sketchybar --add item space.$sid left \
               --subscribe space.$sid aerospace_workspace_change \
               --set space.$sid "${space[@]}"
done
