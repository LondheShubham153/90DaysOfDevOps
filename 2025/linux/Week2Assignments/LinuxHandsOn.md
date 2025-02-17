LINUX HANDS ON

1️. User & Group Management
•	Learn about Linux users, groups, and permissions (/etc/passwd, /etc/group).

•	Task:
o	Create a user devops_user and add them to a group devops_team.
o	Set a password and grant sudo access.
o	Restrict SSH login for certain users in /etc/ssh/sshd_config.

Perform the below Steps.
•	Create a user devops_user 

You can use the useradd command to add new user
Sudo useradd -m devopsuser
-m creates the user in home directory

•	Create group devops_team.
Groupadd command is used to create new group
Sudo groupadd devops_team

•	Add devops_user to group devops_team
Use usermod command to add devops_user in devops_team

Sudo usermod -aG devops_team devops_user
-aG:appends the users to the group without removing them to the other groups

•	Set Password for devops_user
Sudo passwd devops_user
You will be prompted to enter and confirm the password.

•	Grant sudo access to devops_user
You need to edit sudo user file to grant devops_user sudo access

Sudo usermod -aG  sudo devops_user
-aG sudo:adds devops user to the sudo group


Restrict SSH login for certain users.
To restrict the SSH login to the certain users you need to modify the /etc/ssh/sshd_config file.
1.Open SSH configuration file.(sudo vim/etc/ssh/sshd_config)
2.To deny SSH access to the user (DenyUser devops_user)
3.Allow access to the certain user you can add (AllowUsers user1 user2)
4.save and exit the file(for vim press CTRL+O then enter then CTRL+X)
5.Restart the SSH service.(sudo systemctl restart ssh)

 
File & Directory Permissions
Task:
•	Create /devops_workspace and a file project_notes.txt.
•	Set permissions:
o	Owner can edit, group can read, others have no access.
•	Use ls -l to verify permissions.

1. Create Directory   /devops_workspace 
Use mkdir command to create Directory
sudo mkdir /devops_workspace

2. Create File project_notes.txt
Project_notes should be created inside /devops_workspace
Sudo touch /devops_workspace/project_notes.txt

3.Set permission Owner can edit, group can read, others have no access.
         sudo chmod 740 /devops_workspace/project_notes.txt
        explaination of 740 permission :
        7-user can have read,write and execute access
        4-Groups can have write access
        0-other doesn’t have any access

4. Use ls -l to verify permissions.
     ls -l command is used to verify the permission of directory and file
     ls -l
   
 Below is the output of the command
    -rwxr----- 1 root root 0 Feb  8 12:21 project_notes.txt
 



Log File Analysis with AWK, Grep & Sed
Task:
Logs are crucial in DevOps! You’ll analyze logs using the Linux_2k.log file from LogHub (GitHub Repo).
Download the log file from the repository.

Extract insights using commands:
o	Use grep to find all occurrences of the word "error".
o	Use awk to extract timestamps and log levels.
o	Use sed to replace all IP addresses with [REDACTED] for security.
Bonus: Find the most frequent log entry using awk or sort | uniq -c | sort -nr | head -10.

1.Downloading the Log File.
1.Download the log file from the repository on GitHub.
Log file is available on GitHub and you need to download the logfile using wget and curl.
Sudo wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Linux/Linux_2k.log
using curl:
sudo curl -O https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Linux/Linux_2k.log
 
2. Use grep to find all occurrences of the word "error".
grep -i "failure" Linux_2k.log
 
3. Use awk to extract timestamps and log levels.
 awk '{print $1,$2,$3}' Linux_2k.log
 
4. Use sed to replace all IP addresses with [REDACTED] for security.
sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[REDACTED]/g' Linux_2k.log
•	sed: The stream editor for filtering and transforming text.
•	-E: Enables extended regular expressions, which allow more complex patterns.
•	s/pattern/replacement/g: The s command in sed is used for substitution. The g at the end means "global," so all occurrences in the line will be replaced.
•	[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+: This is the regex pattern that matches an IP address. It looks for four groups of one or more digits (0-9) separated by dots (.).
 

5.Find the most frequent log entry using awk or sort | uniq -c | sort -nr | head -10.
sort Linux_2k.log | uniq -c | sort -nr | head -10
 sort: This sorts the log file. Sorting is necessary for uniq to work correctly since it only detects adjacent duplicate lines.
uniq -c: This counts the occurrences of each unique line. The -c flag prefixes each line with the number of occurrences.
sort -nr: This sorts the output numerically (-n) and in reverse order (-r), so the most frequent entries appear first.
head -10: This outputs the top 10 entries.
 

Volume Management & Disk Usage
   Task:
o	Create a directory /mnt/devops_data.
o	Mount a new volume (or loop device for local practice).
o	Verify using df -h and mount | grep devops_data.

1.Create a directory /mnt/devops_data
sudo mkdir  /mnt/devops_data

2. Create a loop device (for local practice)
If you're practicing locally and don’t have a physical volume, you can create a loop device. Here’s how to create a 1GB file and mount it as a loop device:
Create a file for the loop device:
sudo dd if=/dev/zero of=/mnt/devops_data.img bs=1M count=1024
This creates a 1GB file named devops_data.img.

3.Format the loop device:
sudo mkfs.ext4 /mnt/devops_data.img
This formats the file as an ext4 filesystem.

4. Mount the loop device:
sudo mount -o loop /mnt/devops_data.img /mnt/devops_data

5. Verify the mount
You can verify that the volume is mounted correctly using:
df -h | grep devops_data
And to see the current mount points, you can use:
mount | grep devops_data
 

 Process Management & Monitoring
Task:

•	Start a background process (ping google.com > ping_test.log &).
ping google.com 
ping google.com: This command sends ICMP echo requests to Google.
> ping_test.log: This part redirects the standard output (the ping results) to the file ping_test.log.
 &: This symbol puts the command in the background, allowing you to continue using the terminal.
•	Use ps, top, and htop to monitor it.
ps aux | grep ping

This will show you details about the ping process, including its PID (Process ID), which you can use for further actions.
Result:
Last login: Mon Feb 10 18:24:26 2025 from 163.53.202.134

ubuntu@ip-172-31-36-0:~$ ping google.com > ping_test.log &
[1] 1023
ubuntu@ip-172-31-36-0:~$ ps aux | grep ping
ubuntu      1023  0.0  0.2   8072  2688 pts/0    S    13:26   0:00 ping google.com
ubuntu      1032  0.0  0.2   7076  2048 pts/0    S+   13:28   0:00 grep --color=auto ping
 

top
This command will display a dynamic, real-time view of all running processes. You can press Shift + M to sort by memory usage or Shift + P to sort by CPU usage. You can look for the ping process in the list.
Using htop:
If you have htop installed, just run:

htop
htop provides a more user-friendly interface compared to top. You can scroll through the processes, search for the ping process, and see real-time CPU and memory usage. Use the arrow keys to navigate, and you can press F9 to kill a process if needed.

Result:
PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
      1 root      20   0   22000  13272   9560 S   0.0   1.4   0:01.18 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd
      3 root      20   0       0      0      0 S   0.0   0.0   0:00.00 pool_workqueue_release
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-rcu_g
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-rcu_p
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-slub_
      7 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-netns
      9 root      20   0       0      0      0 I   0.0   0.0   0:00.00 kworker/0:1-events
     10 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri
     11 root      20   0       0      0      0 I   0.0   0.0   0:00.04 kworker/u30:0-flush-202:0
     12 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-mm_pe
     13 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_rude_kthread
     14 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_trace_kthread
     15 root      20   0       0      0      0 S   0.0   0.0   0:00.04 ksoftirqd/0
     16 root      20   0       0      0      0 I   0.0   0.0   0:00.09 rcu_sched
     17 root      rt   0       0      0      0 S   0.0   0.0   0:00.00 migration/0
     18 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/0
     19 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0
     20 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kdevtmpfs
     21 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-inet_
     22 root      20   0       0      0      0 I   0.0   0.0   0:00.00 kworker/u30:1-events_unbound
     23 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kauditd
     24 root      20   0       0      0      0 S   0.0   0.0   0:00.00 khungtaskd
     25 root      20   0       0      0      0 S   0.0   0.0   0:00.00 oom_reaper
     26 root      20   0       0      0      0 I   0.0   0.0   0:00.02 kworker/u30:2-events_power_efficient
     27 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-write
 
Kill the process and verify it's gone.
Kill the Process:
Use the kill command with the PID you noted. Replace PID with the actual process ID:
kill PID
If the process does not terminate with the default kill command, you can use:
kill -9 PID
The -9 option forcefully kills the process.
Killall ping
To kill all ping process
Result:
[1]+  Terminated              ping google.com > ping_test.log
Verify the Process is gone
ps aux | grep ping
Result
ubuntu      1186  0.0  0.2   7076  2048 pts/0    S+   13:45   0:00 grep --color=auto ping
 


 Automate Backups with Shell Scripting
Task:
•	Write a shell script to back up /devops_workspace as backup_$(date +%F).tar.gz.
•	Save it in /backups and schedule it using cron.
•	Make the script display a success message in green text using echo -e.

Step 1:
Write a shell script to back up /Source_Folder as backup_$(date +%F).tar.gz.
sudo mkdir -p Source_Folder
sudo touch / Source_Folder /test_Script.sh
vim test_Script.sh
 
Step 2: Write shell Script.
 

Execute Maually
/. test_Script.sh
cd Dest_Folder
ls
you can see backup file created in the Destination folder.

Step 3: Make the Script Executable
chmod +x /Source_Folder/testScript.sh

step 4:Schedule the Script
 Open the crontab editor:
crontab -e

 Add the following line to schedule the backup script to run every  at 1 min(adjust the time as needed):
* * * * * /Source_Folder/testscript.sh
  The script creates a compressed backup of /Source_Folder and stores it in /Dest_Folder.
  It displays a success message in green if the backup is successful.
 The script is scheduled to run every min using cron.






