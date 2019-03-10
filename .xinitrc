# Set the background
feh --bg-center /home/nomad/Pictures/background.jpg &

# Set the keyboard delay
xset r rate 200

# Start desktop services
sxhkd &
light-locker &
compton -b
polybar top &
sleep 2s && .bin/twitch-window-manager &

# Load Xmodmap
xmodmap .Xmodmap

# Start the window manager
exec bspwm
