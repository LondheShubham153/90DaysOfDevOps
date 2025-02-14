#!/bin/bash

# Log File Rotation

function check_done {
    if [ $? -eq 0 ]; then
        echo "Success"
    else
        echo "Failed"
    fi
}

# Declaring Variables
TIMESTAMP=$(date '+%d%m%Y-%H:%M')
LOG_PATH="/var/log/myapp"
ARCHIVE_PATH="/var/log/myapp/archive"
ARCHIVE_FILE="myapp-$TIMESTAMP.tar.gz"

# Finding files
FILES_OLDER_THAN_7_DAYS=$(find $LOG_PATH -type f -mtime +7)
ARCHIVE_FILE_OLDER_THAN_30_DAYS=$(find $ARCHIVE_PATH -type f -mtime +30)

# Archiving files older than 7 days
tar -czf $ARCHIVE_PATH/$ARCHIVE_FILE $FILES_OLDER_THAN_7_DAYS
check_done

# Deleting 30 Days old Archive Files
rm -f $ARCHIVE_FILE_OLDER_THAN_30_DAYS
check_done
