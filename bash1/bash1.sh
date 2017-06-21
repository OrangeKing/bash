#!/bin/bash
#Script changing names of every file with write permissions
#by adding '.old' extension; also remove every preexistent file with such extension.

if [ $# -ne 1 ]
then
	echo 'Wrong number of arguments'
	exit 1
fi 

if [ -d $1 ]
then
	rm $1/*.old -f 

	for file in $1/*
	do
		if [ -w $file ]
		then
			mv $file $file.old
		fi
	done
	exit 1
fi
