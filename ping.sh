#!/bin/bash
uphosts=./uphosts.`date +%m%d%Y`
downhost=./downhosts.`date +%m%d%Y`
#profix=$1
read -p "please input(example:192.168.1): " profix
for i in `seq 1 254`
do
	echo -en "pinging ${profix}.${i}......"
	trap 'exit 0' 2 15
	ping -c1 -w1 ${profix}.${i} > /dev/null 2>&1
	if [ "$?" -eq "0" ]; then
		echo " ok"
		echo "${profix}.${i}" >> $uphosts
	else
		echo " failed"
		echo "${profix}.${i}" >> $downhost
	fi
done
