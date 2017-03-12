#!/bin/bash

#skrypt nr 7
#Przeniesienie plików z ustawionym prawem wykonywania do katalogu docelowego

if [ $# -ne 2 ]
then
        echo 'Wrong args number'
        exit 1
fi

if [[ -d $1 ]]&&[[ -d $2 ]]
then
        currentCatalog=`pwd`
        cd $1
        for file in *
        do
                if [ -d $file ]
                then
                        continue
                else
                        if [ -x $file ]
                        then
                                mv $file $currentCatalog/$2
                        fi
                fi
        done
        cd $currentCatalog
else
        echo 'Args are not catalogs'
        exi
fi