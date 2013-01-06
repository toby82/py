#!/bin/bash
if [ ! -r "$1" ]; then
	echo "Error: $1 is not a readable file."
	echo "Quitting."
	exit 1
else
	cat "$1"
fi
if [ "$?" -ne "0" ]; then
	echo "Error:Reading $1 failed."
fi
