#!/bin/bash

# Define the source and backup directories
SOURCE="/home/ubuntu/Source_Folder"
BACKUP_DIR="/home/ubuntu/Dest_Folder"
BACKUP_FILE="backup_$(date +%F).tar.gz"

#Create new Backup Directory
mkdir -p $BACKUP_DIR

# Create a tar.gz backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE" .

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo -e "\e[32mBackup successful: $BACKUP_DIR/$BACKUP_FILE\e[0m"
else
    echo -e "\e[31mBackup failed!\e[0m"

fi


