#!/bin/bash


# Assign command line arguments to variables

dir_name=$1
start_num=$2
end_num=$3

# Loop through the range of numbers specified and create directories

for (( i=$start_num; i<=$end_num; i++ ))
do
    mkdir "$dir_name$i"
    done

    echo "Directories created successfully!"
