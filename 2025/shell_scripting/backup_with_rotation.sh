#!/bin/bash

<< comment
    This is a shell script solution for Task-2 for Week 3 challenge
comment

# Define destination and backup directory
dest=$1
backup_dir="/home/ubuntu/90DaysOfDevOps/2025/shell_scripting/backups"

# Ensure the backup directory exists
mkdir -p "$backup_dir"

# Generate backup filename
file_nm="backup_$(date +%Y-%m-%d_%H-%M-%S).zip"

# Create the backup zip
sudo zip -r "$backup_dir/$file_nm" "$dest"

# Change to backup directory
cd "$backup_dir" || exit

# Initialize counter
count=0

# Loop through sorted files and delete older backups
for file in $(ls -t); do
    count=$((count + 1))
    if [[ $count -gt 3 ]]; then
        rm -rf "$file"
    fi
done

