#!/bin/bash

#if [ $# -ne 1 ]
#then
#	echo "Wrong no of args"
#	exit 1
#fi

dir_a=$(readlink -f $0)
files_a=$(dirname $dir_a)

#echo $(readlink -f $0)

cat $files_a/file1
cat $files_a/file2