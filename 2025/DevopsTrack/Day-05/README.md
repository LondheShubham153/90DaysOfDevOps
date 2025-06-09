# 📅 Day 05: Advanced Linux + SSH Setup

---

## 🔐 SSH Setup

Explored how SSH (Secure Shell) enables secure remote connections between systems.

- **Public & Private Key System:**
  - Private key stays on the local machine.
  - Public key must be placed on the remote server (`~/.ssh/authorized_keys`).

- **Faced Challenge:**  
  `.pem` file was saved in Windows, but I was using Ubuntu via WSL.
  - Resolved by creating `.ssh` folder inside WSL and moving the key there.
  - Set proper permissions using:
    ```bash
    chmod 400 app.pem
    ```

- **Successfully Connected:**
  - Local Machine → EC2 Server 1
  - Server 1 → EC2 Server 2 (Chained SSH)

---

## 📁 File Permission

Deep dive into Linux file & folder permission model.

- **Permission Format Example:**
  ```bash
  drwxr-xr--  # (Directory/File, User, Group, Others)
  ```
  Useful Commands:
  ```bash
  chmod       # Change file/directory permissions
  chown       # Change file ownership
  chgrp       # Change group ownership
  usermod     # Modify user
  gpasswd     # Manage group membership

  ```
  Numeric Mode Example:
  ```bash
  chmod 755 filename
  ```
  ---
  🌥️ Day-to-Day DevOps Scenarios Practical Linux use cases in DevOps environments.

Log Reading & Filtering:
 ```bash
cat /var/log/syslog
grep "error" /var/log/nginx/error.log
awk '{print $1}' access.log
```
File & Access Management:

Created users/groups, assigned permissions.

Used chown and chmod to control access.

File Transfer Between Machines:
```bash
scp -i app.pem file.txt ubuntu@ip:/home/ubuntu/
rsync -av file.txt user@ip:/path/

```
---

🛜 Networking Commands
Essential tools for troubleshooting and connectivity:
```bash
ping google.com                  # Check network connectivity
traceroute google.com            # Trace path to remote server
dig google.com                   # Detailed DNS lookup
curl https://api.example.com     # Basic API call (GET)
curl -X POST -d '{}' URL         # POST request with data

```
[Previous Day →](../Day-04/README.md)                                                                                    [Next Day →](../Day-06/README.md) 
