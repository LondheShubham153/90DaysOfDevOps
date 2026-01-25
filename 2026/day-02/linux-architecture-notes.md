# Linux Architecture Notes (Day 02)

## Linux Basics
Linux is an operating system.  
It helps computer run programs and control hardware.

Linux has three main parts.

## Kernel
- Kernel is main part of Linux  
- It talks with hardware  
- It manages CPU, memory, disk, and processes  
- User cannot access kernel directly  

## User Space
- User space is where user works  
- Commands like ls, ps, top run here  
- Applications and shell are in user space  
- User space send request to kernel  

## systemd
- systemd is first process (PID 1)  
- It starts system services  
- It manages start, stop, restart services  
- Very important for booting system  

## Processes
- Process is running program  
- Every process has PID  

### Process States
- Running (R) – using CPU  
- Sleeping (S) – waiting for input  
- Disk Sleep (D) – waiting for disk  
- Stopped (T) – paused  
- Zombie (Z) – finished but not cleared  

## systemd Use
- Manage services using systemctl  
- Check logs using journalctl  
- Helps in server debugging  

## Daily Linux Commands
- ps  
- top  
- systemctl  
- journalctl  
- kill  

## Why Important for DevOps
- Linux is base of most servers  
- Helps find crashed services  
- Helps fix CPU and memory issues
