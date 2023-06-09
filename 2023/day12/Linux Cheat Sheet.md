![Linux/Unix Command Line Cheat Sheet: Essential Commands, Tips & Tricks](https://cdn.hashnode.com/res/hashnode/image/upload/v1685872757974/d0c0aa4c-1658-4322-a053-a45f0ca296d7.jpeg?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)
# Linux Command Cheat Sheet


In this Linux/Unix command line cheat sheet, you will learn:

* Basic Linux commands
    
* File Permission commands
    
* Environment Variables command
    
* User management commands of Linux
    
* Networking command
    
* Process command
    
* VI Editing Commands
    

## Basic Linux commands

| Command | Description |
| --- | --- |
| `ls` | Lists all files and directories in the present working directory |
| `ls -R` | Lists files in sub-directories as well |
| `ls -a` | Lists hidden files as well |
| `ls -al` | Lists files and directories with detailed information like permissions,size, owner, etc. |
| `cd or cd ~` | Navigate to HOME directory |
| `cd ..` | Move one level up |
| `cd` | To change to a particular directory |
| `cd /` | Move to the root directory |
| `cat > filename` | Creates a new file |
| `cat filename` | Displays the file content |
| `cat file1 file2 > file3` | Joins two files (file1, file2) and stores the output in a new file (file3) |
| `mv file "new file path"` | Moves the files to the new location |
| `mv filename new_file_name` | Renames the file to a new filename |
| `sudo` | Allows regular users to run programs with the security privileges of the superuser or root |
| `rm filename` | Deletes a file |
| `man` | Gives help information on a command |
| `history` | Gives a list of all past commands typed in the current terminal session |
| `clear` | Clears the terminal |
| `mkdir directoryname` | Creates a new directory in the present working directory or a at the specified path |
| `rmdir` | Deletes a directory |
| `mv` | Renames a directory |
| `pr -x` | Divides the file into x columns |
| `pr -h` | Assigns a header to the file |
| `pr -n` | Denotes the file with Line Numbers |
| `lp -nc , lpr c` | Prints “c” copies of the File |
| `lp-d lp-P` | Specifies name of the printer |
| `apt-get   ` | Command used to install and update packages |
| `mail -s 'subject'   -c 'cc-address'`  
`-b 'bcc-address'   'to-address'   ` | Command to send email |
| `mail -s "Subject"   to-address < Filename   ` | Command to send email with attachment |

## File Permission commands

| Command | Description |
| --- | --- |
| `ls -l` | to show file type and access permission |
| `r` | read permission |
| `w` | write permission |
| `x` | execute permission |
| `-=` | no permission |
| `Chown user` | For changing the ownership of a file/directory |
| `Chown user:group filename` | change the user as well as group for a file or directory |

## Environment Variables command

| Command | Description |
| --- | --- |
| `echo $VARIABLE` | To display value of a variable |
| `env` | Displays all environment variables |
| `VARIABLE_NAME= variable_value` | Create a new variable |
| `Unset` | Remove a variable |
| `export Variable=value` | To set value of an environment variable |

## User management commands of linux

| Command | Description |
| --- | --- |
| `sudo adduser username` | To add a new user |
| `sudo passwd -l 'username'` | To change the password of a user |
| `sudo userdel -r 'username'` | To remove a newly created user |
| `sudo usermod -a -G GROUPNAME USERNAME` | To add a user to a group |
| `sudo deluser USER GROUPNAME` | To remove a user from a group |
| `finger` | Shows information of all the users logged in |
| `finger username` | Gives information of a particular user |

## Networking command

| Command | Description |
| --- | --- |
| `SSH username@ip-address or hostname` | login into a remote Linux machine using SSH |
| `Ping hostname="" or =""` | To ping and Analyzing network and host connections |
| `dir` | Display files in the current directory of a remote computer |
| `cd "dirname"` | change directory to “dirname” on a remote computer |
| `put file` | upload ‘file’ from local to remote computer |
| `get file` | Download ‘file’ from remote to local computer |
| `quit` | Logout |

## Process command

| Command | Description |
| --- | --- |
| `bg` | To send a process to the background |
| `fg` | To run a stopped process in the foreground |
| `top` | Details on all Active Processes |
| `ps` | Give the status of processes running for a user |
| `ps PID` | Gives the status of a particular process |
| `pidof` | Gives the Process ID (PID) of a process |
| `kill PID` | Kills a process |
| `nice` | Starts a process with a given priority |
| `renice` | Changes priority of an already running process |
| `df` | Gives free hard disk space on your system |
| `free` | Gives free RAM on your system |

## VI Editing Commands

| Command | Description |
| --- | --- |
| `i` | Insert at cursor (goes into insert mode) |
| `a` | Write after cursor (goes into insert mode) |
| `A` | Write at the end of line (goes into insert mode) |
| `ESC` | Terminate insert mode |
| `u` | Undo last change |
| `U` | Undo all changes to the entire line |
| `o` | Open a new line (goes into insert mode) |
| `dd` | Delete line |
| `3dd` | Delete 3 lines |
| `D` | Delete contents of line after the cursor |
| `C` | Delete contents of a line after the cursor and insert new text. Press ESC key to end insertion. |
| `dw` | Delete word |
| `4dw` | Delete 4 words |
| `cw` | Change word |
| `x` | Delete character at the cursor |
| `r` | Replace character |
| `R` | Overwrite characters from cursor onward |
| `s` | Substitute one character under cursor continue to insert |
| `S` | Substitute entire line and begin to insert at the beginning of the line |
| `~` | Change case of individual character |

Hope this Linux reference guide helps you!

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)