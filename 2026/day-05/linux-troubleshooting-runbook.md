Environment basics:

Command : uname -a  

observations : shows kernel version, architecture, and system details 


Command : cat /etc/os-release : 
observations : shows operating system,name,version and distribution details

---------------
Filesystem sanity 

mkdir /tmp/runbook-demo
cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo

observations : Created directory , copied Files successfully, then verfied files using "ls"

hosts  hosts-copy
--------------------------
command : top 

observations : displays real-time running processes with cpu and memory usage.

------------------------------------------

command : ps -o pid,pcpu,pmem,comm -p 2134

observations : ps is used to see process to custom output we edited fields 
PID %CPU %MEM COMMAND
   2134  0.0  0.8 sshd

-----------------------------------------
commands : free -h

observations : shows Memory details and swap usage in human readable format. 

---------------------------------------------------------
iostat :
“iostat is used to monitor CPU and disk I/O performance.”

vmstat
“vmstat is used to monitor memory, CPU, and system performance.”


"iostat is used for detailed disk I/O monitoring, while vmstat focuses on memory and CPU and only indicates I/O wait indirectly.”


command : df -h 

observation : To check  filesystem usage


command : du -sh /var/log

observation : du command is used to check directory usage and du -sh is used to check size of particluar directory in human readable

output : 17M     /var/log/

-----------------------------------------------

Network 

commands : netstat -tunlp | grep :22
commands : ss -tunlp | grep :22

obesrvations : is used to check listening services and opening ports 

command : ping
used to check network connectivity between two systems


curl -I http://example.com

observation : Is used to test connectivity with web servers

----------------------------------------
 tail -n 50 /var/log/hawkey.log

observation : displays last lines  data log from files only 50 lines 

output : 
2026-02-08T16:07:57+0000 INFO === Started libdnf-0.69.0 ===
2026-02-08T16:44:23+0000 INFO === Started libdnf-0.69.0 ===
2026-02-08T16:44:35+0000 INFO === Started libdnf-0.69.0 ===

---------------------------------

journalctl -u sshd -n 50

observation : it displays last 50 logs for sshd service  to identify errors or service activity.

output:
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal systemd[1]: Starting sshd.service - OpenSSH server daemon...
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal sshd[2134]: Server listening on 0.0.0.0 port 22.
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal sshd[2134]: Server listening on :: port 22.
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal systemd[1]: Started sshd.service - OpenSSH server daemon.

--------------------------

