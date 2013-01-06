#!/bin/bash
MAX=50
guess=-1
let answer=($RANDOM % "$MAX")
let answer+=1
ceiling=$MAX
floor=0
guesses=0
while [ "$guess" -ne "$answer" ] 
do
	echo "The magic number is between $floor and $ceiling."
	echo -en "make your guess:"
	read guess
	guesses=`expr $guesses + 1`
	if [ "$guess" -lt "$answer" ]; then
		echo "$guess is too low"
		if [ "$guess" -ge "$floor" ]; then
			floor=`expr $guess + 1`
		fi
	fi
	if [ "$guess" -ge "$answer" ]; then
		echo "$guess is too high"
		if [ "$guess" -lt "$ceiling" ]; then
			ceiling=`expr $guess - 1`
		fi
	fi
done
echo "you got it in $guesses guesses!"
