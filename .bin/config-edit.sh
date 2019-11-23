#!/bin/sh
# A helper command for editing desktop configuration.

case $1 in
	sxhkd)
		CONFIG_FILE=~/.config/sxhkd/sxhkdrc
		;;
	bspwm)
		CONFIG_FILE=~/.config/bspwm/bspwmrc
		;;
	nvim)
		CONFIG_FILE=~/.config/nvim/init.vim
		;;
	bash)
		CONFIG_FILE=~/.bashrc
		;;
	newsboat)
		CONFIG_FILE=~/.config/newsboat
		;;
	polybar)
		CONFIG_FILE=~/.config/polybar/config
		;;
	dunst)
		CONFIG_FILE=~/.config/dunst/dunstrc
		;;
	*)
		CONFIG_FILE=~/.config/
esac

vim $CONFIG_FILE
