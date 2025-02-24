### **1️⃣ User & Group Management**
Task-1
1.First create a group using this command
# sudo groupadd devops_team
2. now make users and add it to a group
# sudo useradd -m devops_user -s/bin/bash
3. now grant sudo access
#  sudo usermod -aG sudo devops_user
4. Restrict the certain users
# vim /etc/ssh/sshd_config
now write on this file
# DenyUsers user1 user2
# AllowUsers devops_user
come out of the file :wq
5. Restart the ssh
# sudo systemctl restart ssh
# sudo systemctl status ssh
6. final check verification
# su -devops_user
# sudo whoami->root
it wil return the root user

<!-- ------------------------------------------------------->

### **2️⃣ File & Directory Permissions**
commands for this task is as follows.
1. mkdir devops_workspace 
2. touch project_notes.txt
3. cd devops_workspace/
4. chmod 640 project_notes.txt
5. ls -l
6. total 0
-rw-r----- 1 ubuntu ubuntu 0 Feb 18 16:48 project_notes.txt

<!-- ------------------------------------------------->
### **3️⃣ Log File Analysis with AWK, Grep & Sed**
1.grep command to find all occurences of word "error"
grep -i "error" applog.txt | wc -l
2. awk command to log levels and timestamps
awk '{print $3, $6}' applog.txt
3.- Use `sed` to replace all IP addresses with **[REDACTED]** for security.
sed "s/rhost/REDACTED/g" applog.txt

# Bonus:
 awk '{print}' applog.txt | sort | uniq -c | sort -nr | head -n 10

<!-- -------------------------------------------------->
### **4️⃣ Volume Management & Disk Usage**
1. need to create an instance first and attach a volume to that instance
2. make a temporary directory to which it will be mount
# sudo mkdir /mnt/devops_data
3. now do formatting with file system ext4 permissions
# sudo mkfs -t ext4 /dev/xvdf
4. now mount a disk to that temp path 
# sudo mount /dev/xvdf /mnt/devops_data
5. verify it first using df-h
/dev/xvdf        12G   24K   12G   1% /mnt/devops_data
6. now do other verification
# mount | grep devops_data
/dev/xvdf on /mnt/devops_work type ext4 (rw,relatime)
this verifies that this disk has been mounted to a location of that instance

<!-- ------------------------------------------- -->
### **5️⃣ Process Management & Monitoring**
1.Start a background process → ping google.com > ping_test.log &
2.Find the process → ps aux | grep ping, top, htop
3.Kill the process → kill <PID> or pkill ping
4.Verify it's gone → ps aux | grep ping






