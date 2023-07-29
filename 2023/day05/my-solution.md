# Day 5 Task: Advanced Linux Shell Scripting for DevOps Engineers with User management

If you noticed that there are total 90 sub directories in the directory '2023' of this repository. What did you think, how did I create 90 directories. Manually one by one or using a script, or a command ?

All 90 directories within seconds using a simple command.

` mkdir day{1..90}`

### Tasks 
1) You have to do the same using Shell Script i.e using either Loops or command with start day and end day variables using arguments -

 So Write a bash script createDirectories.sh that when the script is executed with three given arguments (one is directory name and second is start number of directories and third is the end number of directories ) it creates specified number of directories with a dynamic directory name.

Example 1: When the script is executed as

```./createDirectories.sh day 1 90```

then it creates 90 directories as ```day1 day2 day3 .... day90```

Example 2: When the script is executed as

```./createDirectories.sh Movie 20 50```
then it creates 50 directories as ```Movie20 Movie21 Movie23 ...Movie50```

Notes:
You may need to use loops or commands (or both), based on your preference .
```bash
#!/bin/bash

start=$2
end=$3
for ((i=start; i<=end; i++))
do
    mkdir $1$i
done
```
 2) Create a Script to backup all your work done till now.

 Backups are an important part of DevOps Engineers day to Day activities



 3) Read About Cron and Crontab, to automate the backup Script
> Cron is a time-based job scheduling daemon that runs in the background to execute scheduled tasks.
> 
> Crontab is the configuration file used to define individual user-specific cron jobs on Unix-like systems.
 


 4) Read about User Management and Let me know on Linkedin if you're ready for Day 6. 
> User management is the process of creating, modifying, and organizing user accounts on a computer system. It allows administrators to control user access, permissions, and settings to maintain a secure and well-organized computing environment.

 5) Create 3 users and just display their Usernames
```bash
sudo useradd raju
sudo useradd sham
sudo useradd baburao
```

 Post your daily work on Linkedin and le [me](https://www.linkedin.com/in/shubhamlondhe1996/) know , writing an article is the best :)
