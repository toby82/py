#!/bin/bash
read -p "guess number:" n
case $n in
	1) echo "the number is one" ;;
	2) echo "the number is two" ;;
	3) echo "the number is three" ;;
	4) echo "the number is four" ;;
	*) echo "I don't know what you guess" ;;
esac

