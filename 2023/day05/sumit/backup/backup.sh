#!/bin/bash


# Set backup directory name and location

backup_dir="/home/mobaxterm/MyDocuments/sumit/backup"  #path to backup directory`
backup_date="$(date +%Y-%m-%d_%H%M%S)"
backup_name="backup_${backup_date}"
backup_path="${backup_dir}/${backup_name}"


# Create the backup

tar -czvf "$backup_path.tar.gz" .

echo "Backup created successfully at: $backup_path.tar.gz"

