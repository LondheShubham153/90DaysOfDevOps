## 📅 Day 03: Linux Fundamentals

---

## 🔁 Operating System

An **Operating System (OS)** acts as a bridge between the user and computer hardware. It manages hardware resources and provides an environment for applications to run. Some common examples include Windows, macOS, and Linux.

---

## 🖥️ Client OS vs Server OS

- **Client OS** is designed for everyday users, offering a user-friendly interface and pre-installed applications like browsers, media players, etc. (e.g., Windows 10, Ubuntu Desktop).
  
- **Server OS** is built to handle network and server roles like hosting websites, managing users, or handling databases. It is optimized for performance, security, and remote access. Examples: Ubuntu Server, Red Hat Enterprise Linux, Windows Server.

---

## 🐧 Introduction to Linux OS

Linux is a free, open-source operating system that powers everything from smartphones to servers. It was created by **Linus Torvalds** in 1991. It follows a Unix-like architecture and is highly customizable.

There are multiple ways to try out or run Linux:
- Install it directly on your system
- Use a **Virtual Machine (VM)** like VirtualBox
- Use cloud services (e.g., AWS EC2)
- Use Windows Subsystem for Linux (WSL)

Linux distributions include Ubuntu, Fedora, Debian, CentOS, Arch, etc.

---

## ⚙️ How Linux Actually Works

Linux consists of 3 core layers:
1. **Kernel** – Core part that directly communicates with hardware.
2. **Shell** – Interface between the user and kernel. Takes commands and passes them to the kernel.
3. **Application** – Tools and programs that run on top of the shell.

Linux uses a **hierarchical file system** starting from the root `/`. Important directories:
- `/bin` → Essential commands (like `ls`, `cp`, `mv`)
- `/etc` → Configuration files
- `/home` → User files
- `/var` → Logs and variable data
- `/usr` → Installed software

Each command and directory has a purpose. Linux is lightweight and extremely efficient for multitasking and server management.

---

## 💻 Basic Linux Commands

Some commands I practiced:

| Command | Purpose |
|--------|---------|
| `pwd` | Show current directory |
| `ls` | List files |
| `cd` | Change directory |
| `mkdir` | Make a new directory |
| `rm` / `rm -r` | Remove files/folders |
| `cp`, `mv` | Copy and move files |
| `cat`, `nano`, `vim` | View and edit files |
| `man` | Show manual/help for a command |
| `sudo` | Execute commands as superuser |
| `chmod`, `chown` | Change file permissions/ownership |

I got more comfortable navigating and handling the Linux file system.

---

## 🌐 Deployed a Simple Application using Nginx

I deployed a basic HTML page using **Nginx** (a popular web server) on a Linux instance. Here's what I did:

- Installed Nginx using `sudo apt install nginx`
- Created a simple HTML file listing all the Linux commands I practiced
- Replaced the default Nginx index page with my HTML
- Faced a networking issue initially — fixed it by adding **inbound rules for HTTP (port 80)** in my AWS EC2 instance
- Successfully accessed the page via the public IP

  
### 📚 Resources Used

| Resource Type | Title                                  | Link                                                                                   |
|---------------|----------------------------------------|----------------------------------------------------------------------------------------|
| 🎥 Video      | Batch 09 - Linux Fundamentals + AWS EC2 | [Watch Linux + AWS Cloud Class](https://www.trainwithshubham.com/courses/DevOps---Zero-To-Hero-Batch-9-Junoon-67624c2d3eee5156bbd922e2)        |
| 🎥 Video      | Amazon AWS EC2 Deployment Official Tutorial | [Create An Account Free] (https://aws.amazon.com/getting-started/hands-on/deploy-web-app/)          |


[Previous Day →](../Day-02/README.md)                                                                                    [Next Day →](../Day-04/README.md) 
