# Linux Architecture – Day 02 Notes

## 1. Core Components of Linux

### Kernel
- The core of the Linux operating system
- Directly interacts with hardware (CPU, memory, disk)
- Manages:
  - Processes
  - Memory
  - File system
  - Device drivers

### User Space
- Where users and applications run
- Includes:
  - Shell (bash)
  - Linux commands (ls, ps, top)
  - Applications like nginx, docker, mysql
- User space programs request services from the kernel

### init / systemd
- The first process started when Linux boots (PID 1)
- Responsible for starting and managing services
- Modern Linux systems use **systemd**

---

## 2. Process Management

### What is a Process?
- A process is a running instance of a program
- Every command executed in Linux creates a process

### Process Creation
- A parent process creates a child process
- Linux uses fork and exec internally to create processes

### Process States
- **Running (R):** Process is using CPU
- **Sleeping (S):** Waiting for input or resource
- **Stopped (T):** Process paused by user or signal
- **Zombie (Z):** Process finished execution but not cleaned by parent

---

## 3. systemd Overview

### What systemd Does
- Starts services during system boot
- Stops, restarts, and monitors services
- Collects logs using journalctl

### Why systemd Matters for DevOps
- Automatically restarts crashed services
- Helps debug service failures
- Essential for managing production systems

---

## 4. Daily Linux Commands

- `ps` – View running processes
- `top` – Monitor CPU and memory usage
- `systemctl` – Manage system services
- `journalctl` – View system logs
- `kill` – Terminate processes
