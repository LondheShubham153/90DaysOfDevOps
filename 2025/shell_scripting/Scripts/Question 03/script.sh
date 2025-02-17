#!/bin/bash

# Automating Backup of Configuration File

# Variables
BACKUP_DIR="/etc/backup/"
CONFIG_DIR="/etc/"
TIMESTAMP=$(date '+%Y-%m-%d-%H:%M')
ARCHIVE_FILE="etc-backup-$TIMESTAMP.tgz"

# Configuration
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR$ARCHIVE_FILE $CONFIG_DIR

# Check if Backup is Successful
if [ $? -eq 0 ]; then
    echo "Backup Successful"
else
    echo "Backup Failed"
fi