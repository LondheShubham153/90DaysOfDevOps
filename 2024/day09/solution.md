# Day 9 Answers: Shell Scripting Challenge Directory Backup with Rotation

## Tasks

1. **Challenge Description**

      Your task is to create a bash script that takes a directory path as a command-line argument and performs a backup of the directory. The script should create timestamped backup folders and copy all the files from the specified directory into the backup folder.

      Additionally, the script should implement a rotation mechanism to keep only the last 3 backups. This means that if there are more than 3 backup folders, the oldest backup folders should be removed to ensure only the most recent backups are retained.

      > The script will create a timestamped backup folder inside the specified directory and copy all the files into it. It will also check for existing backup folders and remove the oldest backups to keep only the last 3 backups.

   **Answer**

**Challenge Description**
You are tasked with creating a Bash script that:
   - Takes a directory path as a command-line argument.
   - Creates a timestamped backup folder inside the specified directory and copies all files into the backup folder.
   - Retains only the last 3 backups by removing the oldest backups.

**Solution: backup_with_rotation.sh**

**How It Works**

   - The script accepts a directory path as an argument.
   - It creates a backup directory with the current timestamp.
   - The script copies all files from the specified directory into this new backup folder.
   - It checks the total number of backups and ensures only the last 3 backups are kept by deleting older ones.

# Script:
 ![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day09/image/task.png)
![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day09/image/task1.png)
# Explanation:

# **Directory Check:** The script first checks if the directory path is provided as an argument and if the directory exists. If not, it exits with an error message.

# **Timestamp Generation:** The date command generates a timestamp to uniquely name the backup folder.

# **Backup Creation:** The script creates a new backup directory named backup_<timestamp> and copies all files from the specified directory into this folder.

# **Backup Rotation:** The script identifies all backup directories (using the pattern backup_*) and counts them. If there are more than 3 backups, it deletes the oldest ones, keeping only the most recent 3.

# Example Usage

First Execution (2023-07-30):
```bash
$ ./backup_with_rotation.sh /home/ubuntu/backup1
Backup created: /home/ubuntu/backup1/backup_2023-07-30_12-30-45
```


**Important Notes:**

Ensure that you have proper permissions to create and remove directories inside the specified path.
This script can be scheduled via cron for automatic execution at regular intervals.

Cron Example:
To run this script every min :

```bash
*/1 * * * * /home/ubuntu/backup_with_rotation.sh /home/ubuntu/backup1
```
![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day09/image/task_2.png)

# Conclusion

This shell script automates the process of backing up a directory, managing backup retention, and ensuring that old backups are removed, saving both time and storage space.

[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)
