#!/bin/bash

printf "Create multiple files in a folder\nEnter starting file name:"
read name
printf "Enter starting count:"
read start
printf "Enter ending count:"
read end
for ((i=$start; i<=$end; i++))
do
        touch $name-$i
done
#show files in folder
printf "\nLong List of newly made files\n"
ls -l | grep $name