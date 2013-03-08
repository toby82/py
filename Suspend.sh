#!/bin/bash

function usage(){
	echo "Usage: $0 username password project command<suspend resume>"	
	exit 1
}

[[ $# -eq 0 ]] && usage
if [ ! $# -eq 4 ]
then
	usage
fi
username="--os_username $1"
pw="--os_password $2"
project="--os_tenant_name $3"
id=`nova ${username} ${pw} ${project} list | awk '{print $2}' | tail -n 4 | grep -v ID | grep -v '^$'`  
echo $id
for i in ${id}
do
nova ${username} ${pw} ${project} $4 $i
sleep 5
done

