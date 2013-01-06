#!/bin/bash 
#set -x
echo "my name is `basename $0`---- I was called as $0"
count=1
while [ "$#" -ge "1" ];do
	echo "parameter number $count is: $1"
	let count=$count+1
	shift
done
set +x
