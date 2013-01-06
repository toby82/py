#!/bin/bash
while read -p "What file do you want to test: " filename
do
if [ ! -e "$filename" ]; then
	echo "The file does not exist."
	continue
fi
ls -ld "$filename"
if  [ -L "$filename" ];then
	echo "$filename is a symbolic link"
elif [ -f "$filename" ];then
	echo "$filename is a regular file."
elif [ -d "$filename" ];then
	echo "$filename is a directory"
elif [ -b "$filename" ];then
	echo "$filename is a block device"
else
	echo "I don't know what kind of file that is. Is this a Linux system ?"
fi
done
