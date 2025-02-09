#!/bin/bash

# Validate input
if [[ -z "$1" ]]; then
    echo "Usage: $0 <target_directory>"
    exit 1
fi

TARGET_DIR="$1"

if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Error: Directory '$TARGET_DIR' does not exist"
    exit 1
fi

# Create timestamped backup directory
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="${TARGET_DIR}/backup_${TIMESTAMP}"
mkdir -p "$BACKUP_DIR" || exit 1

# Copy contents (excluding existing backups)
rsync -a --exclude='backup_*' "$TARGET_DIR/" "$BACKUP_DIR/" || {
    echo "Backup failed - removing incomplete backup"
    rm -rf "$BACKUP_DIR"
    exit 1
}

echo "Backup created: $BACKUP_DIR"

# Rotation mechanism
mapfile -t BACKUPS < <(find "$TARGET_DIR" -maxdepth 1 -type d -name "backup_*" | sort -r)

if [[ ${#BACKUPS[@]} -gt 3 ]]; then
    echo "Rotating backups..."
    for ((i=3; i<${#BACKUPS[@]}; i++)); do
        echo "Removing old backup: ${BACKUPS[$i]}"
        rm -rf "${BACKUPS[$i]}"
    done
fi

exit 0

