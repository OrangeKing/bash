#!/bin/bash

#skrypt nr 3
#Kasowanie wszystkich plików w zadanym katalogu (parametr wywolania skryptu)
#poza plikami wykonywalnymi mającymi ustawiony bit dostępu typu 'execute'

if [ $# -ne 1 ]
then
        echo 'Wrong args number'
        exit 1
fi

if [ -d $1 ]
then 
        for file in $1/*
        do
                if [ -x $file ]
                then
                        continue
                else
                       	rm $file -f
                fi
        done
else
        echo 'Argument is not a catalog'
        exit 1
fi