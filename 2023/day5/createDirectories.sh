#!/bin/bash
#Author: Ganesh Dandavate
#Create multiple directories using three given arguments 
# example: ./createDirectories day 1 6  ---> this will create 6 directories named day1 day2 ..day6

name=$1
startnumber=$2
endnumber=$3

while [[ $startnumber -le $endnumber  ]];
do
        mkdir $name$startnumber
        startnumber=$(($startnumber+1))
done
