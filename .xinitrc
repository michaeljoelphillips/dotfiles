#!/bin/bash

PATH=$PATH:/home/nomad/.bin

# Set the background
feh --bg-fill /home/nomad/Pictures/background.jpg &

# Set the keyboard delay
xset r rate 200

# Fix the "X" shaped cursor
xsetroot -cursor_name left_ptr

# Start desktop services
sxhkd &
dunst &
picom -b
polybar top &
xidlehook --timer 300 gllock "" --timer 60 "xset dpms force off" "" --socket /tmp/xidlehook &
sleep 2s && .bin/twitch-window-manager &
dapper -v -e /home/nomad/.config/autostart

# Load Xmodmap
xmodmap .Xmodmap

# Start the window manager
exec bspwm
