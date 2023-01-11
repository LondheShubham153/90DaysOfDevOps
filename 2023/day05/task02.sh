#!/bin/bash
#author:Mohit K
#purpose: create folders as per command arguments
#date: 06-01-2023
#assignment:05

dirname=$1

if [ $# = 1 ]; then
        mkdir $1


elif [ $# = 2 ]; then
        firstarg=$2

for ((n=1;n<=$firstarg;n++));

do
        mkdir $dirname$n
done

elif [ $# = 3 ]; then
        secarg=$3
        for((n=firstarg;n<=secarg;n++));
        do
                mkdir $dirname$n
        done
else
        echo "Invalid arguments"
fi
