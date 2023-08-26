#!/bin/bash
# Define backup file
backup_file="/home/ubuntu/backup.txt"
# Get current timestamp
timestamp=$(date +"%Y-%m-%d %H:%M:%S")
# Execute the command and append output with timestamp to the backup file
echo "[$timestamp] $(echo "Learned crontab")" >> "$backup_file"