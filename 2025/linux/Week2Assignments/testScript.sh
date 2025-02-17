#!/bin/bash

<< comment
This scritp will take the back up the file and upload it to S3 
This Script inclue these steps
step 1:- Get destination path where i need to take the backup
step 2:- Provide the source path from where i need to take backup
step 3:- Get the current date time stamp for unique file creation.
step 4:- use zip command to make a zip folder 
comment

source="/home/ubuntu/Source_Folder"
destination="/home/ubuntu/Dest_Folder"
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
numberoffile=$(ls $destination | wc -l)
if [ $numberoffile -ge 3 ]
then
    echo "inside if"
    find $destination/backup* -maxdepth 1 | sort -r | awk "NR>3" | xargs rm -rf
    ls $destination
    zip -r "$destination/backup-$timestamp.zip" $source
else
    echo "inside else"
    zip -r "$destination/backup-$timestamp.zip" $source
fi

