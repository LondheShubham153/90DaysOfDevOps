The core components of Linux (kernel, user space, init/systemd)


The kernel is the core part of Operting system It acts as a bridge Between hardware and user application 
It Manages System resources Like Process management,memory management, device management, File system management, system calls .

User space is where users and applications run.Applications Like Nginx , apache

Includes:
Shell (bash)
Commands (ls, cp, ps)
Applications (browser, editor)
System utilities

Init/systemd is the first process started by the kernel.
systemd is used in modern system and Init is used in Old system 
As systemd is the morden init It is faster , parallel and manages services using units and targets instead of traditonal runlevel


-----------------------------------------------------

How processes are created and managed

Process is Running Instance of Program . whenever you run any command it becomes Process For example running a cal command or ls 
How it actually happens

A user runs a command (example: ls)

The shell requests the kernel to create a process

The kernel uses fork() to create a new process

The new process uses exec() to load the program

Process gets a PID

👉 Result: A new process is running

Once created, the OS manages processes using:

 CPU Scheduling

Kernel decides which process runs and when

Uses priorities and time-sharing

There are differnt types of process state 
R = Running
S = Sleeping
D = uninterruptible
T = Stopped
Z = Zombie
We can see process using commands ps , ps aux , ps -ef 
ps shows only process in the current Terminal session.
ps aux shows All the process on the system with CPU/memory details.
ps -ef shows all the process but in full format including PPID details
-------------------------------

What systemd does and why it matters
Systemd is a first process thats starts after the linux kernel is loaded during booting and it is responsible for 
starting all other process and services
Manging background services
Handling systems shutdown and restart
parallel service startup , making boot faster
-------------------------------------------------
init is used in old systems and systemd is replacement to Systemd 
------------------------------------------------
=======================================
=======================================
Question 1 

Explain process states (running, sleeping, zombie, etc.)

There are differnt types of process state 
R = Running
S = Sleeping
D = uninterruptible
T = Stopped
Z = Zombie

List 5 commands you would use daily
cd > change directory
mkdir > To create directory
touch > to create files and directory
ls > long list files and directories 
df -h / du -h > to check file system usage and to check directory usage on system
top > To check Real time running process

===============================================

I use Systemctl status service_name 
command to check service status as its active or not 
