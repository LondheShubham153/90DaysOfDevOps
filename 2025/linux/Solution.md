# 1. User and Group Management in Linux

User management is fundamental to Linux system security and administration. Here's a detailed breakdown:

## Creating and Managing Users:
- `sudo useradd -m <username>`: Creates a new user with their home directory (-m flag)
  - The home directory is created at /home/<username>
  - System automatically assigns a UID (User ID)
  - Basic configuration files are copied from /etc/skel/

- `sudo passwd <username>`: Sets or changes a user's password
  - Passwords are encrypted and stored in /etc/shadow
  - System enforces password complexity requirements if configured

- `su <username>`: Switch User command
  - Allows you to switch to another user account
  - Requires the target user's password
  - Use `su -` for a complete environment switch to root

## Group Management:
- `sudo groupadd developer`: Creates a new group
  - System assigns a unique GID (Group ID)
  - Group information stored in /etc/group

- `sudo gpasswd -a <username> Developer`: Adds user to a group
  - -a flag stands for "append"
  - Users can belong to multiple groups
  - Changes take effect on next login

## Verification Commands:
- `cat /etc/group`: Shows all groups and their members
- `cat /etc/passwd`: Lists all user accounts and their basic configuration
  - Format: username:x:UID:GID:comment:home_directory:shell

# 2. SSH (Secure Shell)

SSH provides secure remote access and file transfer:

## Public and Private Keys:
- Public key: Stored on remote server in ~/.ssh/authorized_keys
- Private key: Kept secure on local machine
- Key pair provides stronger security than passwords

## Connecting Two Servers:
1. Generate key pair: `ssh-keygen -t rsa`
2. Copy public key: `ssh-copy-id user@remote-server`
3. Connect: `ssh -i private_key user@remote-server`

# 3. File Permissions

Linux uses a sophisticated permission system:

## Basic Permission Structure:
```
d rwx rwx r-x
| |   |   |
| |   |   └── Others (world)
| |   └────── Group
| └────────── Owner
└────────── File type (d=directory, -=regular file)
```

## Numeric Permissions:
- Read (4): View content
- Write (2): Modify content
- Execute (1): Run/access
- Combined permissions add up (e.g., 7 = 4+2+1 = read+write+execute)

## Changing Permissions:
- `chmod 400 file`: Sets read-only for owner
- `chmod 755 file`: Common for executable files (rwxr-xr-x)
- `chown username file`: Changes file ownership

# 4. Text Processing Commands

## Grep (Global Regular Expression Print):
- Basic syntax: `grep [options] pattern file`
- Common options:
  - -i: Case insensitive
  - -r: Recursive search
  - -n: Show line numbers
  - -v: Inverse match

## AWK:
- Powerful text processing language
- Pattern-action based processing
- Syntax: `awk 'pattern {action}' file`
- Field processing: `$1` first field, `$2` second field, etc.
- Complex conditions possible: `awk '/pattern/ { if ($1=="value") print $0 }'`

## SED (Stream Editor):
- Text transformation tool
- Common usage: `sed 's/old/new/g' file`
- Supports regular expressions
- Can perform multiple operations: `sed -e 's/this/that/g' -e 's/here/there/g'`

## Find:
- Locates files based on various criteria
- Syntax: `find [path] [options] [expression]`
- Can search by name, type, size, modification time
- Supports execution of commands on found files

# 5. Networking Commands

## Essential networking tools:

- `ping`: Tests connectivity and latency
  - Uses ICMP protocol
  - Shows packet loss and response times

- `nslookup`: DNS query tool
  - Resolves hostnames to IP addresses
  - Shows DNS server responses

- `traceroute`: Shows packet path
  - Displays each hop to destination
  - Helps diagnose routing issues

- `dig`: Advanced DNS tool
  - More detailed than nslookup
  - Shows complete DNS response

- `wget` and `curl`: File download/transfer
  - wget: Better for large downloads
  - curl: More features for API testing

- `ifconfig`/`ip`: Network interface configuration
  - Shows IP addresses
  - Configure network interfaces

- `netstat`: Network statistics
  - Shows active connections
  - Port usage information
