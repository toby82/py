#!/bin/bash
echo $RANDOM
for i in $(seq 10 -1 1)
do 
	echo -en "${i} ..."
done
echo  "boom"
