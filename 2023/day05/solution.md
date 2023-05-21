# Advanced Linux Shell Scripting for DevOps Engineers with User Management


If you noticed that there are total 90 sub-directories in the directory '2023' of this repository. What did you think, how did I create 90 directories? Manually one by one or using a script, or a command?

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684681316299/c135fc4c-1d9b-4914-ab7e-6e451d0da8b5.png)

All 90 directories within seconds using a simple command.

```bash
mkdir day{1..90}
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684681594154/a4d50efe-2ca8-4260-a1ee-066929d24050.png)

### Tasks

1. You have to do the same using Shell Script i.e using either Loops or command with start day and end day variables using arguments -
    

So Write a bash script [createDirectories.sh](http://createDirectories.sh) that when the script is executed with three given arguments (one is the directory name and the second is the start number of directories and the third is the end number of directories ) it creates a specified number of directories with a dynamic directory name.

### Example 1: When the script is executed as

```bash
./createDirectories.sh folder 1 10
```

```bash
#!/bin/bash

# Check if all three arguments are provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <directory_name> <start_number> <end_number>"
  exit 1
fi

directory_name="$1"
start_number="$2"
end_number="$3"

# Loop through the range of directories and create them
for (( i = start_number; i <= end_number; i++ )); do
  directory="${directory_name}${i}"
  mkdir "$directory"
done

echo "Directories created successfully."
```

then it creates 90 directories as `day1 day2 day3 .... day90`

Example 2: When the script is executed as

`./`[`createDirectories.sh`](http://createDirectories.sh) `Movie 20 50` then it creates 50 directories as `Movie20 Movie21 Movie23 ...Movie50`

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684682692046/87049803-983d-4f19-baad-9e0df04c44ad.png)

1. ### Create a Script to back up all your work done till now.
    

Backups are an important part of DevOps Engineers' day to Day activities

```bash
#!/bin/bash

# Set the backup directory
backup_dir="/path/to/backup/directory"

# Set the source directory
source_dir="/path/to/your/work/directory"

# Create a timestamp for the backup filename
timestamp=$(date +%Y%m%d%H%M%S)
backup_filename="work_backup_$timestamp.tar.gz"

# Create the backup
tar -czf "$backup_dir/$backup_filename" "$source_dir"

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Work backup created successfully: $backup_filename"
else
  echo "Failed to create work backup."
fi
```

In the script, you need to set the `backup_dir` variable to the desired directory path where you want to store your backups. Similarly, set the `source_dir` variable to the path of the directory containing the work that you want to back up.

Make sure to replace `/path/to/backup/directory` and `/path/to/your/work/directory` with the actual paths on your system.

To use the script, save it into a file named `backup_work.sh`. Give it execution permissions using the command `chmod +x backup_work.sh`. Then, you can execute it by running:

```bash
./backup_work.sh
```

This will create a timestamped compressed tarball (.tar.gz) file in the specified backup directory, containing all the files and directories from your work directory. The backup file will have a name in the format of "work\_backup\_YYYYMMDDHHMMSS.tar.gz", where YYYYMMDDHHMMSS represents the current timestamp.

Remember to regularly run this script to keep your work backed up. You can automate this by adding the script to your system's cron jobs or scheduling it using a task scheduler, depending on your operating system.

### Cron and Crontab, to automate the backup Script

Cron is the system's main scheduler for running jobs or tasks unattended. A command called crontab allows the user to submit, edit or delete entries to cron. A crontab file is a user file that holds the scheduling information.

Cron is a time-based job scheduler in Unix-like operating systems, and crontab is the configuration file used to manage cron jobs.

The syntax for cron jobs is as follows:

```bash
* * * * * command_to_be_executed
```

```bash
# For details see man 4 crontabs
# Example of job definition:
# .---------------- minute (0-59)
# | .------------- hour (0-23)
# | | .---------- day of month (1-31)
# | | | .------- month (1-12) OR jan,feb,mar,apr ...
# | | | | .---- day of week (0-6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# | | | | |
# * * * * * user-name command to be executed
```

```bash
0 1 * * * /path/to/backup_work.sh
```

the backup script will run every day at 1:00 AM (0th minute, 1st hour).

Cron will now execute the backup script according to the schedule specified in the crontab file. You can modify the schedule or add additional backup tasks by editing the crontab file again.

### User Management.

A user is an entity, in a Linux operating system, that can manipulate files and perform several other operations.  
Each user is assigned an ID that is unique for each user in the operating system.

User management includes everything from creating a user to deleting a user on your system. User management can be done in three ways on a Linux system.

```bash
useradd -m -d /home/<userName> -c "<userName>" <userName>
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684687625868/b5fc3bfc-95ff-4fed-81f7-b1d1f4cd36a9.png)

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684687743151/236edb25-11d3-47c9-9fcf-6c34100f4842.png)

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)