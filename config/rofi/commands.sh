#!/bin/bash

PATH=$PATH:/home/nomad/.bin

if [ "$@" ]; then
	coproc ($@)
	
	exit
fi

cat << EOF
alacritty
calibre
define
firefox
news
pavucontrol
rofi-pass
rofi-calibre
rofi-steam
rofi-twitch
spotify
EOF
