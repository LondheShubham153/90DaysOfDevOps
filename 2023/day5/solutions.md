## 1. Write a bash script createDirectories.sh that when the script is executed with three given arguments (one is directory name and second is start number of directories and third is the end number of directories ) it creates specified number of directories with a dynamic directory name.

![image](https://user-images.githubusercontent.com/89054489/210715468-04ca7849-47e6-4843-932a-34033d4be16e.png)
    ![image](https://user-images.githubusercontent.com/89054489/210715682-9f705131-6dc1-4f80-a183-6f8b3124f73f.png)


![image](https://user-images.githubusercontent.com/89054489/210715332-d9c6a4b9-a617-46f1-b7ef-4d00ac372312.png)

## 2. Create a Script to backup all your work done till now.

![image](https://user-images.githubusercontent.com/89054489/210719361-1f2e59b1-c282-40e5-9bdc-c0070b9bb3a4.png)
**NOTE :** The cp command is used to copy files and directories, but by default it will only copy files. To copy a directory, you must use the -r option to enable recursive copying, which will copy the directory and all of its contents, including any subdirectories and files.

![image](https://user-images.githubusercontent.com/89054489/210718781-646c1056-19bc-4c5d-acc1-62df015ee58f.png)

## 3. Read About Cron and Crontab, to automate the backup Script
Cron is the system's main scheduler for running jobs or tasks unattended. A command called crontab allows the user to submit, edit or delete entries to cron. A crontab file is a user file that holds the scheduling information.
- Cron is a time-based scheduling daemon that runs on Unix and Linux systems. It is used to schedule commands or scripts to run automatically at a certain time or date.


Crontab is a configuration file that specifies shell commands to run periodically. It is named after the command used to manage the configuration file: crontab. The configuration file is stored in a simple text file, and you can use the crontab command to edit it.

To use crontab to schedule a script or command, you would do the following:

1. Open the crontab configuration file by running crontab -e
2. Add a new line to the file with the schedule and command you want to run
3. Save and exit the file
Cron will automatically run the command or script at the specified time according to the configuration in the crontab file.

You can also use the crontab -l command to list the current crontab configuration, and crontab -r to remove the current crontab configuration.
## 4. Read about User Management 
A user is an entity, in a Linux operating system, that can manipulate files and perform several other operations. Each user is assigned an ID that is unique for each user in the operating system. In this post, we will learn about users and commands which are used to get information about the users. After installation of the operating system, the ID 0 is assigned to the root user and the IDs 1 to 999 (both inclusive) are assigned to the system users and hence the ids for local user begins from 1000 onwards.
- Get a List of All Users using the /etc/passwd File
![image](https://user-images.githubusercontent.com/89054489/210750038-c9e39b65-410f-41e2-acd6-33aa16b7dfe1.png)

- Each line in the file has seven fields delimited by colons that contain the following information:

User name.

Encrypted password (x means that the password is stored in the /etc/shadow file).

User ID number (UID).

User’s group ID number (GID).

Full name of the user (GECOS).

User home directory.

Login shell (defaults to /bin/bash)

- If you want to display only the username you can use either awk or cut commands to print only the first field containing the username:
![image](https://user-images.githubusercontent.com/89054489/210751828-2dcf5394-768c-4212-8350-9c6b5dafa7e7.png)
![image](https://user-images.githubusercontent.com/89054489/210751997-07bb71af-a8d6-4bfd-8875-2c73ad6d135c.png)

- The getent command displays entries from databases configured in /etc/nsswitch.conf file, including the passwd database, which can be used to query a list of all users
![image](https://user-images.githubusercontent.com/89054489/210752174-f6610b80-1397-4746-9230-dae17ae060a3.png)

-  to check whether a user exists in our Linux box we, can simply filter the users’ list by piping the list to the grep command.
![image](https://user-images.githubusercontent.com/89054489/210752356-5d0a2d7c-f66b-4f48-90e5-834b2b1362b9.png)
![image](https://user-images.githubusercontent.com/89054489/210752499-61a1be58-e4c4-4e07-8a15-bd8266fc294f.png)

For example, to find out if a user with name charan exists in our Linux system we can use the following command:
![image](https://user-images.githubusercontent.com/89054489/210752631-1602ec64-6f97-44a5-992b-82b10b7bf721.png)

- If you want to find out how many users accounts you have on your system, pipe the getent passwd output to the wc command:
![image](https://user-images.githubusercontent.com/89054489/210749786-5eb3f36d-49c3-4db7-971e-7f8a1cfd57da.png)

- Each user has a numeric user ID called UID. If not specified when creating a new user with the useradd command, the UID will be automatically selected from the /etc/login.defs file depending on the UID_MIN and UID_MAX values.

- To check the UID_MIN and UID_MAX values on your system, you can use the following command:
![image](https://user-images.githubusercontent.com/89054489/210752838-a659a4b6-c814-42fd-a56e-35eb2c16629b.png)

## 5. Create 2 users and just display their Usernames
![image](https://user-images.githubusercontent.com/89054489/210754216-2c740d93-7aed-4fa6-ac82-12f466c19045.png)

![image](https://user-images.githubusercontent.com/89054489/210754010-5324aaf5-a04a-4387-bbfb-0438d5fd6189.png)


