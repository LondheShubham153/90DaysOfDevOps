#!/bin/bash

Backup_directory="/home/ubuntu/90daysofdevops/*"
Backups="/home/ubuntu/BackupFolder"
date=$(date +"%d-%b-%Y")

mkdir $Backups/$date
cp -r $Backup_directory $Backups/$date

echo "Backup created in $Backups/$date"


#you must have to create BackupFolder in /home/ubuntu then you can run this script.
