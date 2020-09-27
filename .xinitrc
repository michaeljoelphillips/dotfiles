#!/bin/bash

PATH=$PATH:/home/nomad/.bin

function environment() {
	feh --bg-fill /home/nomad/Pictures/background.jpg &

	xset r rate 200
	xmodmap .Xmodmap
	xsetroot -cursor_name left_ptr
}

function services() {
	sxhkd &
	dunst &
	picom -b
	polybar top &
	dapper -v -e /home/nomad/.config/autostart
	xidlehook --timer 300 gllock "" --timer 60 "xset dpms force off" "" --socket /tmp/xidlehook &
}

function windowManager() {
	exec bspwm
}

function main() {
	environment
	services
	windowManager
}

main
