#!/bin/bash

# Define variables
DIRECTORY=$1
BACKUP_DIR="/var/lib/backup"
DATE=$(date +%Y-%m-%d:%H:%M)
BACKUP_FILE="$DIRECTORY-$DATE.tar.gz"
USER=$(whoami)

# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Create backup directory
mkdir -p $BACKUP_DIR

# Function to log messages
log_message() {
    local message=$1
    echo -e "$message" >> $BACKUP_DIR/backup.log
}

# Function to create a backup
backup() {
    if [ -d $DIRECTORY ]; then
        echo -e "${BLUE}Creating backup of $DIRECTORY...${NC}"
        tar -czf $BACKUP_DIR/$BACKUP_FILE $DIRECTORY
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}Backup of $DIRECTORY completed successfully!${NC}"
            echo -e "${GREEN}Backup file is located at $BACKUP_DIR/$BACKUP_FILE${NC}"
            log_message "Backup of $DIRECTORY by $USER completed at $(date)..."
            log_message "Backup path: $BACKUP_DIR/$BACKUP_FILE"
        else
            echo -e "${RED}Backup of $DIRECTORY failed!${NC}"
            log_message "Backup of $DIRECTORY by $USER failed at $(date)..."
        fi
    else
        echo -e "${RED}Directory $DIRECTORY does not exist!${NC}"
        log_message "Directory $DIRECTORY does not exist! Attempted by $USER at $(date)..."
    fi
}

# Call the backup function
backup