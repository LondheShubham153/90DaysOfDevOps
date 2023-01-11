1. Write a bash script createDirectories.sh that when the script is executed with three given arguments (one is directory name and second is start number of directories and third is the end number of directories ) it creates specified number of directories with a dynamic directory name.

--

2. Create a Script to backup all your work done till now.

--

3. Read About Cron and Crontab, to automate the backup Script

-- Cron > Time based scheduling mechanism that schedule commands or scripts to run automatically at certain time and date

Crontab > Configuration file that holds the scheduling scripts to run periodically. The commands file is stored in simple text file and can be used with crontab command to edit it.

To create crontab:

1.  On terminal # crontab -e //Editor will open
2.  Write the command in sequence of [Minute][hour][Day of Month][month][Day of week] > pwd/Filename.extension
3.  Now terminal will itself install the crontab and will execute the task on time it is been given

4) Read about User Management

-- A user is an entity, in a Linux operating system, that can manipulate files and perform several other operations. Each user is assigned an ID that is unique for each user in the operating system. In this post, we will learn about users and commands which are used to get information about the users. After installation of the operating system, the ID 0 is assigned to the root user and the IDs 1 to 999 (both inclusive) are assigned to the system users and hence the ids for local user begins from 1000 onwards.

> Get a List of All Users using the /etc/passwd File
> If you want to display only the username you can use either awk or cut commands to print only the first field containing the username
> The getent command displays entries from databases configured in /etc/nsswitch.conf file, including the passwd database, which can be used to query a list of all users

5.  Create 2 users and just display their Usernames
    -- //sudo useradd username1
    //sudo useradd username2

        (view username):  /etc/passwd
