# Day 14 Answers: Create a Linux & Git-GitHub Cheat Sheet

# **Linux & Git-GitHub Command Cheat Sheet**  

A consolidated reference for essential Linux, Git, and DevOps-related commands to assist in your learning journey and day-to-day tasks.

---

## **Linux Commands**  

### File and Directory Management  
- `ls` – List files and directories.  
- `ls -l` – List files and directories in long format.  
- `mkdir <directory>` – Create a new directory.  
- `cd <directory>` – Change to a specific directory.  
- `pwd` – Display the current working directory.  
- `rm <file>` – Remove a file.  
- `rmdir <directory>` – Remove an empty directory.  
- `rm -rf <directory>` – Forcefully remove a directory and its contents.  
- `cp -r <source> <destination>` – Copy files or directories recursively.  
- `mv <source> <destination>` – Move or rename files/directories.  
- `touch <file>` – Create an empty file or update the timestamp of an existing file.  

### Viewing and Editing Files  
- `cat <file>` – Display the content of a file.  
- `less <file>` – View a file one screen at a time.  
- `head -n <number> <file>` – Display the first n lines of a file.  
- `tail -n <number> <file>` – Display the last n lines of a file.  
- `vim <file>` – Open a file in the Vim editor.  
- `nano <file>` – Open a file in the Nano editor.  
- `echo "text" > <file>` – Write text to a file (overwrite).  
- `echo "text" >> <file>` – Append text to a file.  

### Permissions and Execution  
- `chmod <permissions> <file>` – Change file permissions (e.g., `chmod 755 file`).  
- `chown <owner>:<group> <file>` – Change the ownership of a file.  
- `./<script>` – Execute a script or program in the current directory.  

### System Monitoring and Information  
- `df -h` – Show disk usage in a human-readable format.  
- `free -h` – Display memory usage in a human-readable format.  
- `top` – Monitor real-time system processes.  
- `htop` – Interactive process viewer (needs installation).  
- `uname -a` – Display system information.  
- `uptime` – Show system uptime.  
- `who` – Show who is logged into the system.  
- `sudo journalctl` – View system logs.  

### Networking  
- `ping <host>` – Check connectivity to a host.  
- `curl <url>` – Fetch data from a URL.  
- `wget <url>` – Download files from the web.  
- `ifconfig` – Display or configure network interfaces.  
- `netstat -tuln` – Display listening ports and their services.  

### Package Management  
- `sudo apt-get update` – Update package lists.  
- `sudo apt-get upgrade` – Upgrade installed packages.  
- `sudo apt-get install <package>` – Install a package.  
- `sudo apt-get purge <package>` – Remove a package and its configuration files.  
- `sudo apt-get autoremove` – Remove unnecessary packages.  
- `dpkg -l | grep -i <package>` – List installed packages matching a name.  

### Task Scheduling and Automation  
- `crontab -e` – Edit the cron table for scheduling tasks.  
- `watch <command>` – Re-run a command at regular intervals.  

---



## **Git Commands**  

### Configuration  
- `git config --global user.name "Your Name"` – Set your global username.  
- `git config --global user.email "your.email@example.com"` – Set your global email.  

### Repository Management  
- `git init` – Initialize a new Git repository.  
- `git clone <repository-url>` – Clone a remote repository.  
- `git remote add origin <url>` – Add a remote repository.  

### Basic Operations  
- `git status` – Show the working directory and staging area status.  
- `git add <file>` – Stage changes for the next commit.  
- `git commit -m "message"` – Commit staged changes with a message.  
- `git push` – Push changes to the remote repository.  
- `git pull` – Fetch and merge changes from the remote repository.  

### Branching and Merging  
- `git branch` – List branches.  
- `git branch <branch-name>` – Create a new branch.  
- `git checkout <branch>` – Switch to a branch.  
- `git switch <branch>` – Alternative to `git checkout` for switching branches.  
- `git merge <branch>` – Merge a branch into the current branch.  
- `git rebase <branch>` – Reapply commits on top of another base branch.  

### Logs and History  
- `git log` – View the commit history.  
- `git log --oneline` – Show concise commit history.  
- `git show-branch` – Display branches and their commits.  
- `git revert <commit>` – Undo a specific commit while preserving history.  

### Advanced Operations  
- `git stash` – Temporarily save changes without committing them.  
- `git stash apply` – Reapply stashed changes.  
- `git reset <commit>` – Reset to a specific commit.  

---

## **Jenkins and Docker Commands**  

### Jenkins  
- `sudo apt-get install jenkins` – Install Jenkins.  
- `sudo systemctl enable jenkins` – Enable Jenkins to start on boot.  
- `sudo systemctl start jenkins` – Start Jenkins.  
- `sudo systemctl stop jenkins` – Stop Jenkins.  
- `sudo service jenkins stop` – Alternative to stop Jenkins service.  

### Docker  
- `docker --version` – Check the installed Docker version.  
- `sudo docker ps` – List running containers.  
- `sudo docker images` – List all Docker images.  
- `sudo docker run <image>` – Run a container from an image.  
- `sudo docker rm <container>` – Remove a container.  
- `sudo docker rmi <image>` – Remove an image.  

---

## **Text Processing**  
- `grep <pattern> <file>` – Search for a pattern in a file.  
- `awk '{action}' <file>` – Process and extract data from text files.  
- `cut -d '<delimiter>' -f <field> <file>` – Extract specific fields from a file.  

---

## **Miscellaneous Commands**  
- `clear` – Clear the terminal screen.  
- `exit` – Exit the current terminal session.  
- `whoami` – Display the current logged-in user.  
- `uptime` – Display system uptime.  

---

### Reference

For your reference, check out this [cheat sheet](https://education.github.com/git-cheat-sheet-education.pdf). However, ensure that your cheat sheet is unique.


[LinkedIn](https://www.linkedin.com/in/amitabh-devops/)