#!/bin/bash

function xconfig() {
	xmodmap .config/xmodrc
	xset r rate 150
	xsetroot -cursor_name left_ptr
}

function services() {
	dunst &
	picom -b
	polybar top &
	sxhkd &
	~/.fehbg &
	xidlehook --timer 300 lockgl "" --timer 300 "xset dpms force off" "" --socket /tmp/xidlehook &
	alacritty --option window.class.general=Alacritty --option window.class.instance=Workspace &
	firefox &
}

function main() {
	services
	xconfig

	exec bspwm
}

main
