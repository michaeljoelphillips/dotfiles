#!/bin/bash

if [ "$@" ]; then
	coproc ($@)
	
	exit
fi

cat << EOF
alacritty
calibre
firefox
pavucontrol
rofi-pass
rofi-steam
rofi-twitch
spotify
EOF
