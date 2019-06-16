#!/bin/bash

# Set the background
feh --bg-center /home/nomad/Pictures/background.jpg &

# Set the keyboard delay
xset r rate 200

# Fix the "X" shaped cursor
xsetroot -cursor_name left_ptr

# Start desktop services
sxhkd &
dunst &
compton -b
polybar top &
xautolock -time 5 -locker "gllock" &
sleep 2s && .bin/twitch-window-manager &
dapper -v -e /home/nomad/.config/autostart

# Load Xmodmap
xmodmap .Xmodmap

# Start the window manager
exec bspwm
