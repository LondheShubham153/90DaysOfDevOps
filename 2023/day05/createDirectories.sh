#!/bin/bash

echo $1
echo $2
echo $3
x=$2
y=$3

if [ $# -ne 3 ]; then
    echo "Error: Incorrect number of arguments"
    echo "Please provide arguments in this format: ./createDirectories.sh dir_Name start end "
    exit
fi

if [ $y -lt $x ]; then
    echo "Error: start number must be greater than end number"
    exit 0
fi

for i in `seq $x $y`; do
    mkdir "${1}${i}"
done
