#!/bin/bash

gcd=

GCD()
{
	a=$1
	b=$2
	if [ $a -lt $b ];then
	max=$b
	min=$a
	else
	max=$a
	min=$b
	fi
	if [ $(($max%$min)) -ne 0 ];then
	GCD $min $(($max%$min))
	fi
	gcd=$min
}

GCD $1 $2

echo "$min";

exit 0

