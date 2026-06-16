Process management
A process is an instance of a program that is currently running in memory.


ps > Shows process Running in the current Terminal 

ps aux > Shows All process of all users including background processes with cpu and memory usage details

ps -ef > Shows All process in Full format including PPID

ps aux | grep Z > To check Dead process
ps aux | grep defunct > To check Dead process

Top 

Press 1 > Toggle between overall Cpu to Per-core Cpu usage
Press m > Sort Process by memeory usage
Press f/F > can add or remove customize fields 
Press T > sort by Time
Press K > Kill a process
Press r > Renice a process
Press U > Filter process by a specific process
Press H > Help Screen
Press q > Quit 
Shift + P → sort by CPU
Shift + M → sort by memory
-------------------------------------------------
ps -eo pid,ppid,cmd > To edit Process Output
----------------------------------------------
pidof > To check 
pgrep > get PID of process
pstree > process hierarchy
pstree -p 

“pstree shows parent–child process relationships, and pstree -p also displays process IDs.”

Kill PID   send signal to process 
Kill -l
SIGKILL kill -9 (Forcefull Kill, Terminate the process)
SIGTERM kill -15 (Kill process gracefully)
SIGSTOP kill -19 (Temporary state)
SIGCONT kill -18 (Resume process)

nice — start process with priority
nice -n 10 PID
renice -5 -p PID 


Jobs > List background jobs for the current shell
bg%1 > Resumes a stopped job in the background
fg%1 > Bringes a background job to the for

File system Commands 
pwd > Present working directory 
------------
touch file1.txt
------------
mkdir dir1
mkdir -p dir1/dir2
------------------------
rmdir emptydir           Remove empty directory
-----------
cp file1 file2
cp -r dir1 dir2
----------

stat file.txt
👉 Size, inode, permissions, timestamps

less file.txt
more file.txt
head file.txt
tail -n 20 file.txt
tail -f logfile
------------

mv old.txt new.txt
mv file /tmp
-----------

rm file
rm -r dir
rm -rf dir dangerous

-----------
ls > list only files
ls -l > Long List The o/p Files
drwxr-xr-x. 2 root root 19 Feb  8 07:50 dolly
File type , Permission , . > ACL (+) present , ACL (.) selinux context present , 2 >  Link count , root > owner , root > group , Timestamp 19 feb 8 07:50 , File name 

ls -a > hidden files
ls -lh > Human Readable Size
ls -ltr > Reverse (oldest files first)
ls -lt > Latest (Newest at the top) 
ls -R > Rescursize
ls -d /* > Only directories
ls -i > Inode Number
ls -lh --sort=size
-----------
more > is used to view a file one screen at a time only in forward directoion
less > advanced version file viewer Allows both forward and backward nagivation

head file.txt
tail -n 20 file.txt
tail -f logfile
------------
cd > /etc change directory
cd .. 
cd ~
------------
cp > copy directory
mv > move file 
rm > remove files
File Operations

chmod 755 File1.txt
chmod u+x File1.txt
chown user: File1.txt ) change onwership
chown :group file ) chage groupownership 
chgrp group file

find / -name file.txt
find /var -size +100M
df -h
du -sh /var/log
mount 
umount /mnt

****************************************
NETWORKING Commands 
****************************************
“/etc/hostname stores the system hostname,
/etc/hosts maps hostnames to IPs locally,
 and /etc/resolv.conf defines DNS servers for name resolution.”
----------------------------------------------------
Check Ip address
ip a         Check Ip address
ifconfig  
hostname  
ip addr
ip Link 👉 Check network interface status (UP/DOWN) 
ip route > check default gateway
-------------------
ping   > Check Network connectivity between two servers
telnet & nc -zv > Are used to check if port is open on a given ip address 

Only differnce is That telnet opens a Session , which nc -zv just check connectivity
--------------------
View routing table

route -n 
netstat -rn
ip route show Check default gateway 

-----------------
check open ports (PORT & SERVICE CHECKS (INTERVIEW FAVORITE))

netstate -tunlp 
ss -tunlp
lsof -i :22 Find which process is using a port
---------------
DNS Trouble shooting 
______________________

dig and nslookup are DNS command-line tools used to query DNS servers. Both perform the same basic function, but dig is more advanced than nslookup.

--------------
Feature	        nslookup	 dig
Purpose	        DNS query	 DNS query
Output detail	Basic	     Detailed
Scripting	    Limited	     Excellent
Industry 
preference	    Older	     Modern / preferred


_________________________________________________________________
CONNECTION & PATH DEBUGGING

curl http://localhost Test HTTP/HTTPS connectivity

wget http://example.com Download test + connectivity check

traceroute google.com

is a command used to check the path and delay (hops) that packets takes to reach destination

tracepath  google.com  

does not need root access else both are same
----------------------------

FIREWALL & SECURITY (IMPORTANT)


firewall-cmd --list-all
firewall-cmd --list-ports

--------------------------

iftop -i eth0 
is a real time command line tool used to monitor bandwidth usage on network interface
---------------------------------

ifup eth0
ifdown eth0 


--------------------
ethtool eth0

“ethtool eth0 is used to check the physical link status and speed of a network interface.”

Physical link status means whether the network cable and network card have an actual electrical connection.

ss -s  > Network statistics

tcpdump -i eth0 > is a packet capture tool used to monitor & analyze netwrok traffic on an interface, host,port ,file

ip neigh List of devies connected to your network 
ip -s Link show This commands displays packets counts , errors and dropped packets for a Network interface .
