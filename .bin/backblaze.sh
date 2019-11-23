#!/usr/bin/env bash

CONFIG_DIRECTORY=$XDG_CONFIG_HOME/backblaze
FOLDER_LIST=$CONFIG_DIRECTORY/folders
source $CONFIG_DIRECTORY/config

function backup() {
	FOLDERS=`cat $FOLDER_LIST`

	for FOLDER in $FOLDERS; do
		push $FOLDER
	done
}

function pull() {
	FOLDER=$1

	duplicity $REMOTE/$FOLDER $FOLDER
}

function push() {
	FOLDER=$1

	duplicity $FOLDER $REMOTE/$FOLDER --encrypt-key $GPG_KEY $ARGS
}

function main() {
	case $1 in
		push)
			push $2
			;;
		pull)
			pull $2
			;;
		backup)
			backup
			;;
	esac
}

main "$@"
