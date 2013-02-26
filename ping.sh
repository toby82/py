#!/bin/bash
TMOUT=10
uphosts=./uphosts.`date +%m%d%Y`
downhost=./downhosts.`date +%m%d%Y`
#profix=$1
read -p "please input(example:192.168.1.1-100): " p
[ -z "$p" ] && exit 0
ip=${p%-*}
pre=${ip%.*}
begin=${ip##*.}
end=${p#*-}
echo
for i in `seq $begin $end`
do
	echo -en "pinging ${pre}.${i}......"
	trap 'exit 0' 2 15
	ping -c1 -w1 ${pre}.${i} > /dev/null 2>&1
	if [ "$?" -eq "0" ]; then
		echo " ok"
		echo "${pre}.${i}" >> $uphosts
	else
		echo " failed"
		echo "${pre}.${i}" >> $downhost
	fi
done
