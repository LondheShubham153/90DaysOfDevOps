#!/bin/bash

source_dir=$1

timestamp=$(date '+%d-%m-%y')

backup_dir="${source_dir}/backup_${timestamp}"

zip -r "${backup_dir}.zip" "${source_dir}"

if [ $? -eq 0 ]; then
      echo "Backup Created Successfully"
else
      echo "Backup Not Created For $timestamp"

fi
