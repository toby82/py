#!/bin/bash
while read ip name alias
do
	if [ ! -z "$name" ];then
		echo -en "IP is $ip-its name is $name"
		if [ ! -z "$aliases" ];then
		echo "Aliases : $aliases"
		else
		echo 
		fi
	fi
done  < ./hosts
