# DevOps Linux Tasks - README

This repository contains essential Linux tasks for DevOps, covering user management, file permissions, log analysis, volume management, and process monitoring. Each command is explained to help users understand its functionality.

---

## **1️⃣ User & Group Management**
### **Create a User and Group**
```bash
sudo useradd -m devops_user
```
- Creates a new user `devops_user` with a home directory.

```bash
sudo groupadd devops_team
```
- Creates a group `devops_team`.

```bash
sudo usermod -aG devops_team devops_user
```
- Adds `devops_user` to `devops_team` without removing existing groups.

### **Set User Password**
```bash
sudo passwd devops_user
```
- Sets a password for `devops_user`.

### **Grant Sudo Access**
```bash
sudo usermod -aG sudo devops_user
```
- Grants sudo access to `devops_user`.

### **Restrict SSH Login**
```bash
sudo nano /etc/ssh/sshd_config
```
Add:
```
DenyUsers restricted_user
AllowUsers devops_user
```
Restart SSH:
```bash
sudo systemctl restart ssh
```

---

## **2️⃣ File & Directory Permissions**
### **Create a Directory and File**
```bash
mkdir /devops_workspace
touch /devops_workspace/project_notes.txt
```
- Creates `/devops_workspace` and a file `project_notes.txt`.

### **Set Permissions**
```bash
chmod 640 /devops_workspace/project_notes.txt
```
- Owner: Read & Write (`rw-`)
- Group: Read (`r--`)
- Others: No access (`---`)

### **Verify Permissions**
```bash
ls -l /devops_workspace/project_notes.txt
```
---

## **3️⃣ Log File Analysis with AWK, Grep & Sed**
### **Download the Log File**
```bash
wget https://github.com/user/repo/raw/main/Linux_2k.log -O Linux_2k.log
```

### **Find Errors in Logs**
```bash
grep -i "error" Linux_2k.log
```

### **Extract Timestamps & Log Levels**
```bash
awk '{print $1, $2, $3}' Linux_2k.log
```

### **Replace IP Addresses for Security**
```bash
sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[REDACTED]/g' Linux_2k.log > sanitized_logs.log
```

### **Find Most Frequent Log Entries**
```bash
awk '{count[$0]++} END {for (line in count) print count[line], line}' Linux_2k.log | sort -nr | head -10
```

---

## **4️⃣ Volume Management & Disk Usage**
### **Create a Directory for Mounting**
```bash
sudo mkdir -p /mnt/devops_data
```

### **Create a Loopback Device (For Practice)**
```bash
sudo dd if=/dev/zero of=/devops_volume.img bs=1M count=100
sudo losetup -fP /devops_volume.img
LOOP_DEVICE=$(sudo losetup -j /devops_volume.img | awk -F: '{print $1}')
```

### **Format and Mount the Volume**
```bash
sudo mkfs.ext4 "$LOOP_DEVICE"
sudo mount "$LOOP_DEVICE" /mnt/devops_data
```

### **Verify Mounting**
```bash
df -h | grep devops_data
mount | grep devops_data
```

---

## **5️⃣ Process Management & Monitoring**
### **Start a Background Process**
```bash
ping google.com > ping_test.log &
```

### **Monitor Running Processes**
```bash
ps aux | grep ping
top
htop
```

### **Kill the Process**
```bash
ps aux | grep ping
kill <PID>
```

### **Verify Process Termination**
```bash
ps aux | grep ping
```

---

## **6️⃣ Script: Extract ERROR and WARNING Logs**
Create a file `extract_logs.sh` and add:
```bash
#!/bin/bash
LOG_FILE="Linux_2k.log"
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file '$LOG_FILE' not found!"
    exit 1
fi
echo "Extracting ERROR and WARNING logs..."
grep -iE "\b(ERROR|WARNING)\b" "$LOG_FILE"
```

### **Make Script Executable and Run**
```bash
chmod +x extract_logs.sh
./extract_logs.sh
```

---

## **7️⃣ Find Top 5 Most Common Log Messages**
```bash
awk '{count[$0]++} END {for (msg in count) print count[msg], msg}' Linux_2k.log | sort -nr | head -5
```

---

# DevOps Linux Tasks - README

This repository contains essential Linux tasks for DevOps, covering user management, file permissions, log analysis, volume management, and process monitoring. Each command is explained to help users understand its functionality.

---

## **1️⃣ User & Group Management**
### **Create a User and Group**
```bash
sudo useradd -m devops_user
```
- `useradd`: Command to create a new user.
- `-m`: Creates a home directory for the user.

```bash
sudo groupadd devops_team
```
- `groupadd`: Command to create a new group named `devops_team`.

```bash
sudo usermod -aG devops_team devops_user
```
- `usermod`: Modifies a user’s group membership.
- `-aG`: Appends the user to the specified group without removing other groups.

### **Set User Password**
```bash
sudo passwd devops_user
```
- `passwd`: Sets or changes the password for the user.

### **Grant Sudo Access**
```bash
sudo usermod -aG sudo devops_user
```
- Adds `devops_user` to the `sudo` group, granting administrative privileges.

### **Restrict SSH Login**
```bash
sudo nano /etc/ssh/sshd_config
```
- Opens the SSH configuration file in the Nano editor.

Add:
```
DenyUsers restricted_user
AllowUsers devops_user
```
- Restricts SSH access for `restricted_user` and allows `devops_user`.

Restart SSH:
```bash
sudo systemctl restart ssh
```
- Restarts the SSH service to apply changes.

---

## **2️⃣ File & Directory Permissions**
### **Create a Directory and File**
```bash
mkdir /devops_workspace
touch /devops_workspace/project_notes.txt
```
- `mkdir`: Creates a directory.
- `touch`: Creates an empty file.

### **Set Permissions**
```bash
chmod 640 /devops_workspace/project_notes.txt
```
- `chmod`: Changes file permissions.
- `640`: Owner can read & write, group can read, others have no access.

### **Verify Permissions**
```bash
ls -l /devops_workspace/project_notes.txt
```
- `ls -l`: Lists files with detailed permissions.

---

## **3️⃣ Log File Analysis with AWK, Grep & Sed**
### **Download the Log File**
```bash
wget https://github.com/user/repo/raw/main/Linux_2k.log -O Linux_2k.log
```
- `wget`: Downloads files from the internet.
- `-O`: Specifies output filename.

### **Find Errors in Logs**
```bash
grep -i "error" Linux_2k.log
```
- `grep`: Searches for patterns in a file.
- `-i`: Case insensitive search.

### **Extract Timestamps & Log Levels**
```bash
awk '{print $1, $2, $3}' Linux_2k.log
```
- `awk`: Extracts specific columns from a file.

### **Replace IP Addresses for Security**
```bash
sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[REDACTED]/g' Linux_2k.log > sanitized_logs.log
```
- `sed -E`: Uses extended regex to match IP addresses and replace them.

### **Find Most Frequent Log Entries**
```bash
awk '{count[$0]++} END {for (line in count) print count[line], line}' Linux_2k.log | sort -nr | head -10
```
- Counts occurrences of each log entry.
- Sorts them in descending order.

---

## **4️⃣ Volume Management & Disk Usage**
### **Create a Directory for Mounting**
```bash
sudo mkdir -p /mnt/devops_data
```
- `mkdir -p`: Creates directory if it doesn’t exist.

### **Create a Loopback Device (For Practice)**
```bash
sudo dd if=/dev/zero of=/devops_volume.img bs=1M count=100
```
- `dd`: Creates a blank file to simulate a disk.
- `bs=1M count=100`: Creates a 100MB file.

```bash
sudo losetup -fP /devops_volume.img
```
- `losetup`: Sets up a loop device.

### **Format and Mount the Volume**
```bash
sudo mkfs.ext4 "$LOOP_DEVICE"
```
- Formats the volume as ext4.

```bash
sudo mount "$LOOP_DEVICE" /mnt/devops_data
```
- Mounts the volume.

### **Verify Mounting**
```bash
df -h | grep devops_data
mount | grep devops_data
```
- Checks mounted devices.

---

## **5️⃣ Process Management & Monitoring**
### **Start a Background Process**
```bash
ping google.com > ping_test.log &
```
- `ping`: Sends network packets to test connectivity.
- `&`: Runs the command in the background.

### **Monitor Running Processes**
```bash
ps aux | grep ping
top
htop
```
- `ps aux`: Shows active processes.
- `top`: Displays real-time system monitoring.
- `htop`: Interactive process viewer.

### **Kill the Process**
```bash
ps aux | grep ping
kill <PID>
```
- `kill`: Terminates a process using its Process ID (PID).

### **Verify Process Termination**
```bash
ps aux | grep ping
```
- Ensures the process is no longer running.

---

## **6️⃣ Script: Extract ERROR and WARNING Logs**
Create a file `extract_logs.sh` and add:
```bash
#!/bin/bash
LOG_FILE="Linux_2k.log"
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file '$LOG_FILE' not found!"
    exit 1
fi
echo "Extracting ERROR and WARNING logs..."
grep -iE "\b(ERROR|WARNING)\b" "$LOG_FILE"
```
- Checks if the log file exists.
- Uses `grep` to filter `ERROR` and `WARNING` logs.

### **Make Script Executable and Run**
```bash
chmod +x extract_logs.sh
./extract_logs.sh
```
- `chmod +x`: Makes the script executable.

---

## **7️⃣ Find Top 5 Most Common Log Messages**
```bash
awk '{count[$0]++} END {for (msg in count) print count[msg], msg}' Linux_2k.log | sort -nr | head -5
```
- Extracts most common log messages.

---

## **Contributing**
If you find any issues or have suggestions, feel free to open a pull request.

---

✅ **Done!** This README provides a structured guide to understanding and executing each DevOps task. 🚀




