## ADVANCED SHELL SCRIPTING
# Day 5 Task: Advanced Linux Shell Scripting for DevOps Engineers with User management.


- If you noticed that there are total 90 sub directories in the directory '2023' of this repository. What did you think, how did I create 90 directories. Manually one by one or using a script, or a command ?
All 90 directories within seconds using a simple command.

---
## TASK1
You have to do the same using Shell Script i.e using either Loops or command with start day and end day variables using arguments?

![directories sh](https://user-images.githubusercontent.com/76991475/224128724-8c0f2ce6-e07c-4578-b481-7026064c55a9.png)

---

## TASK2
Create a Script to backup all your work done till now.

![backup sh](https://user-images.githubusercontent.com/76991475/224129873-cf26584b-7922-4a28-bba0-e7434feabefd.png)

- Extracted tar file using command `tar xf backups.sh`

![extract backup](https://user-images.githubusercontent.com/76991475/224134030-a88c2296-9586-4cb0-b496-671334972278.png)

---
## TASK3
Read About Cron and Crontab, to automate the backup Script.

**`Cron :`**
- Cron is a linux utility that  schedules tasks to run automatically at specified intervals.
- The tasks are defined in a crontab file which is a simple text file containing a list of commands meant to be run at specified times.
- Each lines of the file represents a single cron job and follow a particular syntax.

**`Crontab :`**
- A crontab file is composed of six-fields separated by spaces, that specify the schedule for a task to run.
- Minute `(0-59)`
- Hour   `(0-23)`
- Days of the month `(1-31)`
- Month `(1-12)`
- Days of Week `(0-7)` _Where 0 & 7 is Sunday_
- Command to be executed.

# COMMANDS FOR CRON

- **`crontab -e`** : To edit your crontab.
- **`crontab -l`** : To list the current crontab file.
- **`crontab -r`** : To remove your current crontab file.
- **`crontab -d`** : To delete a specific user crontab.
- **`crontab -l -u`** : To list specific user crontab.

# Automate The Backup Script

- First have Script `"backup.sh"` .

![backups1](https://user-images.githubusercontent.com/76991475/224155537-eafa08c3-f4c4-4a21-9e0f-af34777eed7f.png)

- Here we will edit the `crontab` with proper path in it.

![crontab -e](https://user-images.githubusercontent.com/76991475/224155557-6d7e4bfe-d712-45b7-9ce2-638ade9fd602.png)

- Now we will see the result by `concatenate or cat` the file.

![crontab automation](https://user-images.githubusercontent.com/76991475/224155574-adac102c-ec05-41ad-b51d-afc527223ff1.png)


---
## User Management

**In Linux, user management involves creating, modifying, and deleting user accounts. It also involves managing user permissions and groups. Here are some common commands and tools used for user management in Linux:**

- **`useradd`**: This command is used to create new user accounts. For example, to create a new user account named "john", you would use the command "sudo useradd john".

- **`passwd`**: This command is used to set a password for a user account. For example, to set a password for the user account "john", you would use the command "sudo passwd john".

- **`usermod`**: This command is used to modify user accounts. For example, to change the home directory of the user account "john", you would use the command "sudo usermod -d /new/home/directory john".

- **`userdel`**: This command is used to delete user accounts. For example, to delete the user account "john", you would use the command "sudo userdel john".

- **`groups`**: This command is used to display the groups that a user belongs to. For example, to display the groups that the user "john" belongs to, you would use the command "groups john".

- **`useradd`** -G: This command is used to add a user to a group. For example, to add the user "john" to the group "developers", you would use the command "sudo useradd -G developers john".

- **`chgrp`**: This command is used to change the group ownership of a file or directory. For example, to change the group ownership of the file "file.txt" to the group "developers", you would use the command "sudo chgrp developers file.txt".

These are just a few of the commands and tools used for user management in Linux. Proper user management is important for security and access control on a Linux system.

---