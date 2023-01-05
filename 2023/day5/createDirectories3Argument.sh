#!/bin/bash

for (( i=$2;i<=$3;i++))
do
        mkdir $1-$i
done

ls


#bash script createDirectories.sh that when the script is executed with three given arguments (one is directory name and second is start number of directories and third is the end number of directories ) it creates specified number of directories with a dynamic directory name.
#Example 1: When the script is executed as
# ./createDirectories3Argument.sh day 1 90
#then it creates 90 directories as day1 day2 day3 .... day90

