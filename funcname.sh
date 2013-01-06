#!/bin/bash
func1()
{
	echo "func1:FUNCNAME0 IS ${FUNCNAME[0]}"
	echo "func1:FUNCNAME1 IS ${FUNCNAME[1]}"
	echo "func1:FUNCNAME2 IS ${FUNCNAME[2]}"
	echo "func1:FUNCNAME3 IS ${FUNCNAME[3]}"
	echo "func1:FUNCNAME4 IS ${FUNCNAME[4]}"
	echo "func1:LINENO IS ${LINENO}"
	func2
}
func2()
{
	echo "func2:FUNCNAME0 IS ${FUNCNAME[0]}"
	echo "func2:FUNCNAME1 IS ${FUNCNAME[1]}"
	echo "func2:FUNCNAME2 IS ${FUNCNAME[2]}"
	echo "func2:FUNCNAME3 IS ${FUNCNAME[3]}"
	echo "func2:FUNCNAME4 IS ${FUNCNAME[4]}"
	echo "func2:LINENO IS ${LINENO}"
}

func1
