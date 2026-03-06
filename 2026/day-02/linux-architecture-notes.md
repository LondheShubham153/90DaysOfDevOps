# Components of Linux

Linux is composed of several important components that work together to run the operating system efficiently.

---

# 1. Kernel

The **Linux Kernel** is the core part of the operating system that acts as a bridge between **hardware and software**.

The kernel is often called the **heart of Linux** because it directly communicates with the computer hardware.

## Main Responsibilities

### Process Management
Manages running programs and processes.

### Memory Management
Allocates RAM to processes and manages memory usage.

### Device Drivers
Communicates with hardware devices such as:
- Keyboard
- Disk
- Network interfaces

### File System Management
Handles reading and writing files on storage devices.

### Security & Permissions
The kernel enforces system security through:

- User permissions  
- Process isolation  
- Access control  
- Authentication mechanisms  

**Example**

Only the **root user** can modify certain system files.

---

# 2. User Space

In Linux, **User Space** is the area where user applications and programs run.

Examples include:
- Shells
- Utilities
- Tools
- Applications

Applications **cannot directly access hardware**, so they communicate with the kernel using **system calls**.

This separation improves:

- Security
- System stability

**Simple Definition**

User Space = Area where applications run and interact with the kernel.

---

## What Runs in User Space

### 1. Shells
Command-line interfaces used to interact with Linux.

### 2. Applications
Programs used by users.

### 3. System Utilities
Tools used for system management.

Examples:

```
ls
cp
top
ps
```

These commands help users monitor and manage the system.

---

## How User Space Communicates with Kernel

Applications use **system calls** to request services from the kernel.

```
User Application → System Call → Kernel → Hardware
```

### Example

When you run:

```
cat file.txt
```

Process flow:

1. Command runs in **User Space**
2. Kernel reads the file from disk
3. Output is shown in the terminal

---

# 3. Systemd (Init System)

**Systemd** is the **first process in Linux**.

- Starts immediately after the Linux kernel boots
- Runs with **PID 1**

### Boot Sequence

```
Kernel → Systemd → Services
```

Systemd starts all system services.

**Simple Idea**

Systemd = System manager that controls services and the boot process.

---

## What Happens During Boot

1. System starts
2. Linux kernel loads
3. Kernel starts **systemd (PID 1)**
4. Systemd starts all required services

Examples of services:

- Network service
- SSH service
- Logging service
- Cron jobs

---

# Main Responsibilities of Systemd

## 1. Service Management

Starts, stops, and manages system services.

Example:

```
systemctl start nginx
systemctl stop nginx
systemctl status nginx
```

---

## 2. Boot Process Management

Controls which services start during system boot.

Examples:

- Networking
- Firewall
- Logging

---

## 3. Dependency Handling

Some services must start before others.

Example:

Network service must start before the **web server**.

Systemd automatically manages these dependencies.

---

## 4. System States (Targets)

Systemd uses **targets** to define system states.

Examples:

| Target | Description |
|------|-------------|
| `multi-user.target` | Command-line mode |
| `graphical.target` | GUI mode |

---

# How Processes Are Created and Managed

In Linux, a **process** is a running program.

Processes are created using system calls.

### Important System Calls

| System Call | Description |
|-------------|-------------|
| `fork()` | Creates a new process (child process) |
| `exec()` | Loads a program into a process |

Each process gets a unique **PID (Process ID)**.

The **kernel scheduler** decides how CPU time is shared between processes.

When a process finishes or is terminated, the kernel releases the resources used by that process.

---

# Detailed Process Explanation

## 1. Process Creation

A process is simply a program that is running.

Example:

When you open:
- Terminal
- Browser
- Any application

Linux creates a new process.

Process creation mainly happens using:

```
fork()
exec()
```

---

## 2. Process Identification

Each process receives a unique **PID (Process ID)**.

---

## 3. Process States

A process can exist in multiple states.

| State | Description |
|------|-------------|
| Running | Currently using CPU |
| Ready | Waiting for CPU |
| Sleeping / Waiting | Waiting for resource |
| Stopped | Process is paused |
| Zombie | Process finished but entry still exists |

---

## 4. Process Scheduling

Linux uses a **CPU scheduler** inside the kernel.

Responsibilities:

- Decide which process runs first
- Share CPU between multiple processes
- Enable multitasking

---

## 5. Process Termination

When a process finishes its task, it terminates.

The kernel then frees all resources used by that process.

---

# Short Summary: Process Creation & Management

- A process is a **running program**
- Created using system calls:
  - `fork()` → creates child process
  - `exec()` → loads program
- Each process has a **unique PID**
- Kernel scheduler manages CPU sharing
- When finished or killed, resources are released

Example command:

```
kill PID
```

---

# Linux Process Lifecycle

## 1. New / Created
Kernel creates the process using:

```
fork()
clone()
```

---

## 2. Ready
Process is ready to run but waiting for CPU.

---

## 3. Running
Process is currently executing on the CPU.

---

## 4. Sleeping / Waiting
Process waits for a resource such as I/O.

---

## 5. Stopped
Process execution is paused.

---

## 6. Zombie / Terminated

A **zombie process** is a completed process that still has an entry in the process table.

Definition:

A zombie process is a **terminated child process that still has an entry in the process table**, waiting for its parent to collect its exit status.

Example command to remove parent process:

```
sudo kill -9 [parent-PID]
```

---
