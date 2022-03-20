#!/usr/bin/env bash

WORD="${1}"

if [ -z "$WORD" ]; then
        WORD=$(rofi -dmenu -p "Lookup")

        if [ -z "$WORD" ]; then
                exit 1
        fi
fi

DEFINITIONS=$(dict -d english "$WORD" 2>&1)

rofi -location 2 -width -80 -lines 5 -e "$DEFINITIONS"
