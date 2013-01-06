#!/bin/bash
echo dolllar star is $*
echo Dollar at is $@
for i in $*
do
	echo "Parameter is $i"
done
for i in $@
do 
	echo "Parameter at $i"
done

for i in "$@"
do 
	echo "Parameter at $i"
done
echo "xxx is parameter at "$@""
