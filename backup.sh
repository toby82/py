#!/bin/bash
for file in /tmp/*
do
	if [ -f ${file} ]; then
		if [ -e "${file}.bak" ];then
			echo "Error:Skinpping ${file}.bak as it already exists"
			break
		else
			echo "Backing up $file"
			cp "${file}" "${file}.bak"
		fi
	fi

done
