#!/bin/bash

for (( i=1;i<=$2;i++))
do
        mkdir $1-$i
done

ls

#you have to  pass 2 arguments when you run file
# Example : bash createDirectories.sh Day 90 , bash createDirectories.sh Movie 50
