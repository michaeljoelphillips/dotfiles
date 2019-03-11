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
	*)
		CONFIG_FILE=~/.config/
esac

vim $CONFIG_FILE
