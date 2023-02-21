1) You have to do the same using Shell Script i.e using either Loops or command with start day and end day variables using arguments -
### So Write a bash script createDirectories.sh that when the script is executed with three given arguments (one is directory name and second is start number of directories and third is the end number of directories ) it creates specified number of directories with a dynamic directory name.

 Example 1: When the script is executed as

 ./createDirectories.sh day 1 90

 then it creates 90 directories as day1 day2 day3 .... day90

 Example 2: When the script is executed as

 ./createDirectories.sh Movie 20 50 then it creates 50 directories as Movie20 Movie21 Movie23 ...Movie50

### Notes: You may need to use loops or commands (or both), based on your preference . Check out this reference: https://www.geeksforgeeks.org/bash-scripting-for-loop/

### ANSWER :- 

             #!/bin/bash

             #First code --->

             #for n in {$2..$3}
             #do
             #       eval "mkdir $1$n";
             #done
             #---->

             #Second Code --->
             day=$1;
             num1=$2;
             num2=$3;

             eval " mkdir  $1{$num1..$num2} ";
             #---->




### 2) Create a Script to backup all your work done till now.
 Backups are an important part of DevOps Engineers day to Day activities The video in References will help you to understand How a DevOps Engineer takes backups (it can feel a bit difficult but keep trying, Nothing is impossible.) Watch this video

 In case of Doubts, post it in Discord Channel for #90DaysOfDevOps

### ANSWER:-

            #!/bin/bash

            src=/home/ec2-user/scripts;
            trg=/home/ec2-user/backups;

            curr_time=$(date "+%d-%m-%Y");

            #echo "$curr_time";

            filename=BackupOfScripts_$curr_time.tgz;
            echo "Taking Backup on $curr_time";
            sleep 2;
            echo "----------------------------------------";

            tar czf $filename $src --absolute-names;
            sleep 3;
            mv $filename $trg;
            echo "Backup Completed on $trg at $curr_time";
               
               
               
               
### 3) Read About Cron and Crontab, to automate the backup Script
 Cron is the system's main scheduler for running jobs or tasks unattended. A command called crontab allows the user to submit, edit or delete entries to cron. A crontab file is a user file that holds the scheduling information.

Watch This video as a Reference to Task 2 and 3 https://youtu.be/aolKiws4Joc

### ANSWER:-

            22 10 8 01 sun /home/ec2-user/scripts/backup.sh
             |  | |  |   |
             |  | |  |   |
             |  | |  |    -----> Day of week
             |  | |   ------------> Month
             |  |  ---------------------> Day of Month
             |   ---------------------------> Hour
              ----------------------------------> Minutes




### 5) Create 2 users and just display their Usernames
Check out this reference: https://www.geeksforgeeks.org/user-management-in-linux/

### ANSWER:-
              #!/bin/bash

              USER=David;
              USER2=Warner;

              useradd -m -p Test $USER && echo "User added !!!!! $USER";
              sleep 2;
              useradd -m -p Test $USER2 && echo "User added !!!!! $USER2";
