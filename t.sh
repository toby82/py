#!/bin/bash
echo "hello,world"
var=12
var=`expr $var+21`
echo "12+21=$var"
sleep 1
echo $SECONDS
