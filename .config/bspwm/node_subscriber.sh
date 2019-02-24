#!/bin/sh

FLOAT_WIDTH=640
FLOAT_HEIGHT=360
FLOAT_X=1278
FLOAT_Y=718

# Helper function to get a jq node.
function json() {
	echo $1 | jq $2
}

# Get a bspwm node.
function getNode() {
	bspc query -T -n $1
}

# Resize the floating node according to FLOAT_WIDTH and FLOAT_HEIGHT
function resizeFloatingNode() {
	WINDOW_WIDTH=`json "$1" '.width'`
	WINDOW_HEIGHT=`json "$1" '.height'`

	X_DIFF=$(($FLOAT_WIDTH - $WINDOW_WIDTH))
	Y_DIFF=$(($FLOAT_HEIGHT - $WINDOW_HEIGHT))

	bspc node $NODE -z right $X_DIFF 0
	bspc node $NODE -z top 0 $(($Y_DIFF * -1))
}

# Position the floating node according to FLOW_X and FLOAT_X
function moveFloatingNode() {
	WINDOW_X=`json "$1" '.x'`
	WINDOW_Y=`json "$1" '.y'`

	X_DIFF=$(($FLOAT_X - $WINDOW_X))
	Y_DIFF=$(($FLOAT_Y - $WINDOW_Y))

	bspc node $NODE -v $X_DIFF $Y_DIFF
}

# Check if the node is currently focused
function isFocused() {
	TRANSFERRED_NODE=`json $1 '.id'`
	CURRENT_NODE=`getNode | jq '.id'`

	test "$TRANSFERRED_NODE" = "$CURRENT_NODE" && echo true || echo false
}

while read NAME SRC_MONITOR SRC_DESKTOP SRC_NODE DST_MONITOR DST_DESKTOP DST_NODE
do
	NODE_INFO=`getNode $SRC_NODE`
	NODE_CLASS=`json "$NODE_INFO" '.client.className'`
	NODE_DIMENSIONS=`json "$NODE_INFO" '.client.floatingRectangle'`

	if [[ $NODE_CLASS == '"Vlc"' ]]; then
		case $DST_DESKTOP in
			0x00C00004)
				bspc node $SRC_NODE -t tiled
				;;
			0x00C00005)
				# If our sticky node is focused, we want to fullscreen and
				# focus the terminal window instead.
				if [[ `isFocused $NODE_INFO` == true ]]; then
					bspc node -f next
					bspc node -t fullscreen -l above
				fi

				bspc node $SRC_NODE -t fullscreen -l below
				;;
			0x00C00006)
				bspc node $SRC_NODE -t floating -l above

				resizeFloatingNode "$NODE_DIMENSIONS"
				moveFloatingNode "$NODE_DIMENSIONS"
				;;
			0x00C00007)
				bspc node $SRC_NODE -t fullscreen
				;;
		esac
	fi
done < "/dev/stdin"
