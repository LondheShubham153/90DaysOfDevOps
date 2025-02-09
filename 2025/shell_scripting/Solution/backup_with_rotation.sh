#!/bin/bash

<<Note
To automate backups, add a cron job:
crontab -e
Add this line to schedule it at 2 AM daily:
0 2 * * * /path/to/backup_script.sh /path/to/your/directory

Note

# Check if the user provided a directory path
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Assign the directory path to a variable
target_dir="$1"

# Check if the provided path is a valid directory
if [ ! -d "$target_dir" ]; then
    echo "Error: '$target_dir' is not a valid directory."
    exit 1
fi

# Create a backup directory inside the target directory
backup_dir="$target_dir/backups"
mkdir -p "$backup_dir"

# Generate a timestamp for the backup file
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_file="$backup_dir/backup_$timestamp.zip"

# Create a zip archive of the target directory
zip -r "$backup_file" "$target_dir"/* > /dev/null


echo "Backup created: $backup_file"

# List existing backup files sorted by creation time (oldest first)
backups=($(ls -t "$backup_dir"/backup_*.zip))

# Keep only the last 3 backups, delete older ones
while [ "${#backups[@]}" -gt 3 ]; do
    oldest_backup="${backups[-1]}"
    rm -f "$oldest_backup"
    backups=($(ls -t "$backup_dir"/backup_*.zip))
    echo "Removed old backup: $oldest_backup"
done