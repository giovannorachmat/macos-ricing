SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7")
for i in "${!SPACE_ICONS[@]}"; do
  sid="$(($i + 1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.color=$WHITE
    icon.padding_left=12
    background.color=$BACKGROUND_2
    background.border_color=$MAGENTA
    background.border_width=1
    background.corner_radius=5
    background.height=20
    background.drawing=on
    background.height=25
    script="$PLUGIN_DIR/space.sh"
    click_script="yabai -m space --focus $sid"
  )
  sketchybar --add space space."$sid" left --set space."$sid" "${space[@]}"
done
