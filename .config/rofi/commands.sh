#!/bin/bash

if [ "$@" ]; then
	coproc ($@)
	
	exit
fi

cat << EOF
define
spotify
calibre
firefox
rofi-pass
alacritty
rofi-steam
rofi-twitch
pavucontrol
EOF
