#!/bin/bash

<<Note
To automate backups, add a cron job:
crontab -e
Add this line to schedule it at 2 AM daily:
0 2 * * * /path/to/backup_script.sh /path/to/your/source_directory /path/to/your/destination_directory

Note

# Check if the user provided two directory paths
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

# Assign the directory paths to variables
source_dir="$1"
dest_dir="$2"

# Check if the provided source directory is valid
if [ ! -d "$source_dir" ]; then
    echo "Error: '$source_dir' is not a valid directory."
    exit 1
fi

# Check if the provided destination directory is valid
if [ ! -d "$dest_dir" ]; then
    echo "Error: '$dest_dir' is not a valid directory."
    exit 1
fi

# Create a backup directory inside the destination directory
backup_dir="$dest_dir/backups"
mkdir -p "$backup_dir"

# Generate a timestamp for the backup file
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_file="$backup_dir/backup_$timestamp.zip"

# Create a zip archive of the source directory
zip -r "$backup_file" "$source_dir"/* > /dev/null

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
