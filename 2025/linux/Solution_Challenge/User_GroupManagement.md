Here’s the **solution script** for your **User & Group Management task**, along with a well-structured **README**.

---

## **Task Solution Script: `user_group_management.sh`**

This Bash script performs the following actions:  
✔ Creates a **user** `devops_user` and assigns them to the `devops_team` group.  
✔ Sets a **password** and grants **sudo** access.  
✔ Restricts **SSH login** for certain users.

```bash
#!/bin/bash

# Variables
USERNAME="devops_user"
GROUPNAME="devops_team"
PASSWORD="SecurePass123"  # Change this for security

# Step 1: Create a group if it doesn't exist
if ! grep -q "^$GROUPNAME:" /etc/group; then
    sudo groupadd $GROUPNAME
    echo "Group '$GROUPNAME' created successfully."
else
    echo "Group '$GROUPNAME' already exists."
fi

# Step 2: Create the user and add to group
if ! id "$USERNAME" &>/dev/null; then
    sudo useradd -m -g $GROUPNAME -s /bin/bash $USERNAME
    echo "User '$USERNAME' created and added to group '$GROUPNAME'."
else
    echo "User '$USERNAME' already exists."
fi

# Step 3: Set password for the user
echo "$USERNAME:$PASSWORD" | sudo chpasswd
echo "Password set for user '$USERNAME'."

# Step 4: Grant sudo access
sudo usermod -aG sudo $USERNAME
echo "User '$USERNAME' granted sudo access."

# Step 5: Restrict SSH login
SSH_CONFIG="/etc/ssh/sshd_config"
if ! grep -q "^DenyUsers $USERNAME" $SSH_CONFIG; then
    echo "DenyUsers $USERNAME" | sudo tee -a $SSH_CONFIG
    sudo systemctl restart sshd
    echo "SSH login restricted for '$USERNAME'."
else
    echo "SSH restriction for '$USERNAME' already exists."
fi

echo "✅ Task Completed Successfully!"
```

---

## **README for User & Group Management Task**

This README explains the purpose, usage, and steps involved in the script.

### **📌 Overview**

This script automates **user and group management** in Linux by:

- Creating a **user** (`devops_user`) and assigning them to a **group** (`devops_team`).
- Setting a **password** and granting **sudo** privileges.
- Restricting **SSH login** for security.

### **📂 Files Included**

- `user_group_management.sh` → Automates the entire process.

### **⚙️ Prerequisites**

- A **Linux-based system** with `sudo` privileges.
- SSH enabled for remote access (if testing SSH restrictions).

### **🛠 How to Use**

1. **Make the script executable**:
   ```bash
   chmod +x user_group_management.sh
   ```
2. **Run the script**:
   ```bash
   sudo ./user_group_management.sh
   ```
3. **Verify the results**:
   - Check if the user exists:
     ```bash
     id devops_user
     ```
   - Verify the group:
     ```bash
     groups devops_user
     ```
   - Test SSH restriction:
     ```bash
     ssh devops_user@your-server-ip
     ```

### **📝 Notes**

- The script **ensures idempotency**, meaning it won’t duplicate users/groups if they already exist.
- **Modify the password** for security before executing.
- **Restart SSH** manually if restrictions don’t apply immediately.

### **🚀 Conclusion**

This script automates essential **user management** tasks for Linux-based systems, making it easy to **secure, manage, and restrict access** efficiently.
