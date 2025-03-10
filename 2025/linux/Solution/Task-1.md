### **Task 1: User & Group Management**  

#### **Step 1: Create a User and Group**
```bash
sudo groupadd devops_team
sudo useradd -m -g devops_team -s /bin/bash devops_user
```
- `groupadd devops_team` → Creates a group named `devops_team`.  
- `useradd -m -g devops_team -s /bin/bash devops_user` → Creates a user `devops_user`, assigns it to `devops_team`, and sets the shell to Bash.

#### **Step 2: Set a Password for `devops_user`**
```bash
sudo passwd devops_user
```
- This will prompt you to enter and confirm the password.

#### **Step 3: Grant Sudo Access to `devops_user`**
```bash
sudo usermod -aG sudo devops_user
```
- `usermod -aG sudo devops_user` → Adds `devops_user` to the `sudo` group.

#### **Step 4: Restrict SSH Login for Certain Users**
Edit the SSH configuration file:
```bash
sudo nano /etc/ssh/sshd_config
```
- Add the following lines at the end:
  ```
  AllowUsers devops_user
  DenyUsers root test_user
  ```
- `AllowUsers devops_user` → Allows only `devops_user` to log in via SSH.
- `DenyUsers root test_user` → Blocks `root` and `test_user` from SSH access.

#### **Step 5: Restart SSH Service**
```bash
sudo systemctl restart ssh
```
- Restarts the SSH service to apply changes.

✅ **Task 1 Complete!** 🎯