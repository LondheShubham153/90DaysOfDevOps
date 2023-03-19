#!/bin/bash

# Check if 3 arguments were provided
if [ $# -ne 3 ]; then
    echo "Error: 3 arguments are required - directory name, start number, and end number, Process Unsuccessfull"
    exit 1
fi

dirname=$1
start=$2
end=$3

# Check if start number is less than end number, will show the error
if [ $start -gt $end ]; then
    echo "Error: Start number must be less than end number, Process Unsuccessfull"
    exit 1
fi

# Loop through the range of numbers and create directories
for i in $(seq $start $end)
do
   echo "$dirname$i"
done

# Confirmation for the directories that are done successfully
echo "Directories have been created successfully"

