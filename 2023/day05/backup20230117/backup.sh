#!/bin/bash

suffix=$(date +%Y%m%d)
echo $suffix

# setting up the backup directory
backupdir="backup${suffix}"

echo $backupdir

mkdir $backupdir

cp * $backupdir

echo "Congratulations... successfully created backup in $backupdir"