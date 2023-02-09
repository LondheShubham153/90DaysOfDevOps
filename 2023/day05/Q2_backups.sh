#!/bin/bash

function backups() {
    echo "backuping now..."
    rsync -avzh ~/lab /etc/backups 
    echo "backup done.."
}

backups