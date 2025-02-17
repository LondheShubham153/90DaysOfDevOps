#!/bin/bash

# Monitoring Disk Usage

# Email Settings
EMAIL_MSG="Disk Usage Alert"
EMAIL="testing@gmail.com"
THRESHOLD=80

# Getting Disk Usage
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Checking Disk Usage
if [ $DISK_USAGE -gt $THRESHOLD ]; then
    echo "Disk Usage is greater than $THRESHOLD%"
    echo "Sending Email to $EMAIL"
    echo "$EMAIL_MSG" | mail -s "Disk Usage Alert" $EMAIL
else
    echo "Disk Usage is less than $THRESHOLD%"
fi