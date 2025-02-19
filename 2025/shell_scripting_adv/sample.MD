# Sample Files for Bash Scripting Exercises

This file contains all the necessary sample files referenced in the **Bash Scripting Assignment**. These files will help with testing and running the scripts effectively.

---

## **1. Sample Users CSV**
**File Name:** `sample_users.csv`

This CSV file is used for **Task #10: Batch User Creation**. The script should loop through each line, create the group if needed, and create users with the specified passwords.

```csv
john,Password123!,devops_team
jane,Secr3tP@ss,devops_team
bill,AnotherP@ss,qa_team
alice,SuperSecure99!,developers
charlie,TestPass!23,sysadmins
```
## **2. Sample Log File**
**File Name:** `sample.log`
This log file is used for log analysis tasks (e.g., grepping errors, using sed or awk to parse timestamps, extracting IP addresses, etc.).
```txt
2025-02-08 14:05:12 INFO Service started
2025-02-08 14:07:45 ERROR Unable to connect to database
2025-02-08 14:09:10 WARNING Low disk space
2025-02-08 14:12:23 INFO User jane logged in
2025-02-08 14:15:00 ERROR Disk write failure
2025-02-08 14:16:45 INFO System rebooting
2025-02-08 14:20:05 WARNING High memory usage
2025-02-08 14:22:34 INFO User john uploaded a file
2025-02-08 14:30:00 ERROR Network timeout
2025-02-08 14:35:50 INFO Backup completed successfully
2025-02-08 14:40:22 WARNING CPU usage exceeded 90%
2025-02-08 14:45:30 INFO Scheduled maintenance started
```
## **3. Sample Directory Structure for Comparison**
**File Name:** `(Two directories: dirA/ and dirB/)`
These two directories can be used for Task #16: Directory Comparison & Logging.
Directory A (`dirA/`)
```
dirA/
│── file1.txt
│── file2.txt
│── script.sh
│── config.json
```
Directory B (`dirB/`)
```
dirB/
│── file1.txt
│── file3.txt
│── script.sh
│── settings.xml
```
Expected output when running a diff command between these two directories
```
Only in dirA/: file2.txt
Only in dirA/: config.json
Only in dirB/: file3.txt
Only in dirB/: settings.xml
```

## **4. Sample Configuration Filen**
**File Name:** `config.json`
This JSON file can be used for parsing in Bash scripts.
```json
{
  "username": "admin",
  "password": "SuperSecurePass",
  "host": "127.0.0.1",
  "port": 8080,
  "timeout": 30,
  "retry": 5
}
```
## **5. Sample Configuration Filen**
**File Name:** `sample_text.txt`
This text file can be used for sorting, searching, and removing duplicates in Task #17: Sort & Remove Duplicates.
```sh
apple
banana
orange
apple
grape
banana
cherry
pear
peach
apple
orange
```

Expected output after sorting and removing duplicates:
```
apple
banana
cherry
grape
orange
peach
pear
```
## **6. Sample Cron Job File**
**File Name:** `cron_backup.txt`
This file is used for Task #11: Automating Cron Job Creation.
```sh
# Run backup script at midnight every day
0 0 * * * /home/user/backup_script.sh
# Clean up old log files every Sunday at 2 AM
0 2 * * 0 /home/user/cleanup_logs.sh
# Run system update every Monday at 3 AM
0 3 * * 1 /home/user/system_update.sh
```
## **7. Sample Process List Output**
**File Name:** `cron_backup.txt`
This file is useful for Task #14: Service Status Checker, simulating the output of ps aux or systemctl status.
```
root       1234  0.0  0.1  50000  8000 ?        Ss   09:00   0:00 /usr/sbin/nginx
www-data   2345  0.0  0.1  50000  5000 ?        S    09:00   0:00 nginx: worker process
mysql      3456  0.5  5.2 120000 20000 ?        Sl   09:00   0:30 /usr/sbin/mysqld
postgres   4567  0.3  4.1  95000 15000 ?        Sl   09:00   0:20 /usr/lib/postgresql/bin/postgres
john       5678  0.1  0.3  40000  6000 pts/1    S+   09:05   0:05 /bin/bash
root       6789  0.0  0.2  40000  6000 pts/0    S+   09:10   0:02 /usr/bin/python3 monitoring_script.py
```

## **8.Sample System Logs**
**File Name:** `syslog_sample.log`
This log file is useful for Task #19: Backup Verification and Logging.
```
Feb  8 10:00:12 server kernel: [12345.678901] CPU frequency scaling enabled
Feb  8 10:05:30 server sshd[4321]: Accepted password for user1 from 192.168.1.100 port 56789
Feb  8 10:10:45 server systemd[1]: Starting daily backup...
Feb  8 10:12:33 server backup[7890]: Backup completed successfully
Feb  8 10:20:05 server systemd[1]: Stopping Apache2 service...
Feb  8 10:25:18 server apache2[8910]: Service stopped
Feb  8 10:30:55 server kernel: [12378.123456] Disk I/O error detected
Feb  8 10:35:22 server systemd[1]: Restarting MySQL service...
```


