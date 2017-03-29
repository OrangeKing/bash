#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Wrong number of arguments"
	exit 1
fi

if [ -d $1 ]
then
	echo "$1 is not a regular file!"
	exit 1

fi 

cat $1 | while read i
do
	sum=0
	for num in $i
	do
		sum=$(($sum + $num))
	done
	echo "$i Sum: $sum"
done
