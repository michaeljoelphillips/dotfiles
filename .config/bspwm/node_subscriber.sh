#!/bin/sh

while read line
do
	if echo "$line" | grep -q "node_transfer"; then
		MONITOR=`echo $line | awk '{print $6}'`
		NODE=`echo $line | awk '{print $4}'`

		case $MONITOR in
			0x00C00004)
				bspc node $NODE -t tiled
				;;
			0x00C00005)
				bspc node $NODE -t tiled
				bspc node next -t fullscreen
				;;
			0x00C00006)
				bspc node $NODE -t floating
				;;
			0x00C00007)
				bspc node $NODE -t fullscreen
				;;
		esac
	fi
done < "/dev/stdin"
