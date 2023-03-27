Script to create multiple directories dynamically
Write a bash script makedir.sh that when the script is executed with three given arguments (one is the directory name and the second is the start number of directories and the third is the end number of directories ) it creates a specified number of directories with a dynamic directory name.

here is an example.
![image](https://user-images.githubusercontent.com/119837985/227441848-59b37077-2971-4b56-b65e-f303c1250c36.png)



How cool is it that the script took the arguments and created the required directories in seconds.

This script first assigns the provided arguments to variables dir_name, start_num, and end_num.

Finally, it loops through the range of numbers specified by the start_num and end_num arguments create a directory with a name that includes the dir_name and the current number in the loop, and prints a success message when finished.

provide the user access permissions to file. {use chmod command}

You can run this script by opening a terminal, navigating to the directory where the script is saved, and executing the command:


COPY
./makedir.sh <dir_name> <start_num> <end_num>
Replace <dir_name>, <start_num>, and <end_num> with the desired values for your directories.

Backup Script
Backups are an important part of a DevOps Engineer's day to Day activities The video in References will help you to understand How a DevOps Engineer takes backups (it can feel a bit difficult but keep trying, Nothing is impossible.)

![image](https://user-images.githubusercontent.com/119837985/227442007-a91e8286-7aa5-45f5-8816-db2ed750c26d.png)


This script first sets the backup directory name and location and creates a unique backup name based on the current date and time. It then creates the full backup path by combining the backup directory and backup name.

Finally, the script creates the backup by using the tar command to compress and archive all files in the current directory and its subdirectories and saves them to the backup path.

To use the script, simply save it in the directory you want to back up and execute it:


COPY
~ bash backup.sh
The script will create a compressed archive of all the files in the directory and its subdirectories, and save it to the specified backup directory with a unique timestamped name. You can run the script as often as needed to keep your work backed up.

Cron and Crontab, to automate the backup Script
Cron is a time-based job scheduler in Unix-based operating systems that allows you to schedule and automate recurring tasks, such as running a backup script. Crontab is the configuration file used to manage Cron jobs.

To create a Cron job, you need to edit the Crontab file using the crontab -e command. This will open the Crontab file in your default editor.


COPY
* * * * * command-to-be-executed
- - - - -
| | | | |
| | | | ----- Day of the Week (0 - 6) (Sunday is 0)
| | | ------- Month (1 - 12)
| | --------- Day of the Month (1 - 31)
| ----------- Hour (0 - 23)
------------- Minute (0 - 59)
Each asterisk (*) represents a wildcard, meaning that the command will be executed for every possible value of that field. For example, if you want to run a command every day at midnight, you would use the following syntax:


COPY
0 0 * * * command-to-be-executed
To automate the backup script using Cron, you can add a new entry to the Crontab file with the desired schedule and the command to run the backup script.

For example, to run the backup script every day at midnight, you can add the following entry to the Crontab file:


COPY
0 0 * * * /home/mobaxterm/MyDocuments/sumit/backup/backup.sh
#path to backup directory
This will run the backup script located at: /home/mobaxterm/MyDocuments/sumit/backup/backup.sh

every day at midnight.

Once you have added the entry to the Crontab file, save and exit the editor. Cron will automatically read the Crontab file and schedule the job according to the specified time.

To view the list of scheduled Cron jobs, you can use the crontab -l command. This will display a list of all scheduled jobs in the Crontab file.

Note that when scheduling jobs with Cron, it's important to specify the full path to the script or command being executed, as Cron doesn't have access to the same environment variables as your interactive shell.

About User Management
In Linux, user management is performed using the command-line interface and involves creating, modifying, and deleting user accounts, as well as assigning permissions and managing user groups.

Here are some common commands used for user management in Linux:

useradd: This command is used to create new user accounts. For example, to create a new user named "Sam", you would use the following command:


COPY
 ~ useradd Sam
passwd: This command is used to set or change a user's password. For example, to set a password for the "Sam" user, you would use the following command:

COPY
    ~ passwd Sam
3. id: to get the id of any username. For example, to get the id for the "Sam" user, you would use the following command:


COPY
    ~ id Sam
These are just a few of the commands available for user management in Linux. Other commands and tools are available for more advanced user management tasks, such as managing user quotas or enforcing password policies.

Create 2 users and just display their Usernames
To create two new users and display their usernames, you can use the following commands:


COPY
  ~ sudo adduser user1
  ~ sudo adduser user2
These commands will create two new users named "user1" and "user2". To display their usernames, you can use the following command:


COPY
~ cut -d: -f1 /etc/passwd
This command will display a list of all user accounts on the system, including "user1" and "user2". You can identify them by their usernames, which will be listed at the beginning of their respective lines. https://sumitramchandra.hashnode.dev/advanced-linux-shell-scripting
