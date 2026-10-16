#!/usr/bin/env bash

# ## Sonokai
# export BLACK=0xff181819
# export WHITE=0xffe2e2e3
# export RED=0xfffc5d7c
# export GREEN=0xff9ed072
# export BLUE=0xff76cce0
# export YELLOW=0xffe7c664
# export ORANGE=0xfff39660
# export MAGENTA=0xffb39df3
# export GREY=0xff7f8490
# export TRANSPARENT=0x00000000
# export BG0=0xff2c2e34
# export BG1=0xff363944
# export BG2=0xff414550

### Gruvbox
# export BLACK=0xff282828
# export WHITE=0xffebdbb2
# export RED=0xfffb4934
# export GREEN=0xffb8bb26
# export BLUE=0xff83a598
# export YELLOW=0xfffe8019
# export ORANGE=0xffd3869b
# export MAGENTA=0xffd3869b
# export GREY=0xff7c6f64
# export TRANSPARENT=0x00000000
# export BG0=0xff282828
# export BG1=0xff3c3836
# export BG2=0xff504945

### Nord kindof
# export BLACK=0xff2e3440
# export WHITE=0xffeceff4
# export RED=0xffbf616a
# export GREEN=0xffa3be8c
# export BLUE=0xff81a1c1
# export YELLOW=0xffebcb8b
# export ORANGE=0xffd08770
# export MAGENTA=0xffb48ead
# export GREY=0xff4c566a
# export TRANSPARENT=0x00000000
# export BG0=0xff2e3440
# export BG1=0x603b4252
# export BG2=0x60434c5e

# export BATTERY_1=0xffa3be8c
# export BATTERY_2=0xffebcb8b
# export BATTERY_3=0xffd08770
# export BATTERY_4=0xffbf616a
# export BATTERY_5=0xffbf616a

# ### Nord (Polar Night / Snow Storm / Frost / Aurora)
export BLACK=0xff2e3440   # nord0
export WHITE=0xffd8dee9   # nord4
export RED=0xffbf616a     # nord11
export GREEN=0xffa3be8c   # nord14
export BLUE=0xff88c0d0    # nord8
export YELLOW=0xffebcb8b  # nord13
export ORANGE=0xffd08770  # nord12
export MAGENTA=0xffb48ead # nord15
export GREY=0xffe5e9f0    # nord5 (see note on Polar Night above)
export TRANSPARENT=0x00000000
export BG0=0xff2e3440 # nord0
export BG1=0x603b4252 # nord1, 60% alpha
export BG2=0x604c566a # nord3, 60% alpha

export BATTERY_1=0xffa3be8c # nord14
export BATTERY_2=0xffebcb8b # nord13
export BATTERY_3=0xffd08770 # nord12
export BATTERY_4=0xffbf616a # nord11
export BATTERY_5=0xffbf616a # nord11 (same as 4, palette has no fifth warning tone)

# # ### Catppuccin (Macchiato)
# export BLACK=0xff181926
# export WHITE=0xffcad3f5
# export RED=0xffed8796
# export GREEN=0xffa6da95
# export BLUE=0xff8aadf4
# export YELLOW=0xffeed49f
# export ORANGE=0xfff5a97f
# export MAGENTA=0xffc6a0f6
# export GREY=0xff939ab7
# export TRANSPARENT=0x00000000
# export BG0=0xff24273a
# export BG1=0x60363a4f
# export BG2=0x60494d64
#
# export BATTERY_1=0xffa6da95
# export BATTERY_2=0xffeed49f
# export BATTERY_3=0xfff5a97f
# export BATTERY_4=0xffee99a0
# export BATTERY_5=0xffed8796

# General bar colors
export BAR_COLOR=$BG0
export BAR_BORDER_COLOR=$BG2
export BACKGROUND_1=$BG1
export BACKGROUND_2=$BG2
export ICON_COLOR=$WHITE  # Color of all icons
export LABEL_COLOR=$WHITE # Color of all labels
export POPUP_BACKGROUND_COLOR=$BAR_COLOR
export POPUP_BORDER_COLOR=$WHITE
export SHADOW_COLOR=$BLACK
