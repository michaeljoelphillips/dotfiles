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
}

function main() {
	services
	xconfig

	exec bspwm
}

main
