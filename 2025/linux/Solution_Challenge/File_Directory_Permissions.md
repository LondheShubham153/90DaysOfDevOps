# File & Directory Permissions Task

## Overview

This task sets up a **directory** and a **file** with specific permissions in a Linux system. The permissions ensure that:

- The **owner** can read and write.
- The **group** can read.
- **Others** have no access.

## Steps

1. **Create a directory** `/devops_workspace`.
2. **Create a file** `project_notes.txt` inside the directory.
3. **Set permissions** so that:
   - The owner can **read and write**.
   - The group can **only read**.
   - Others have **no access**.
4. **Verify permissions** using `ls -l`.

## Commands Used

To complete this task, use the following commands:

```bash
# Create directory
mkdir -p /devops_workspace

# Create file
touch /devops_workspace/project_notes.txt

# Set permissions
chmod 640 /devops_workspace/project_notes.txt

# Verify permissions
ls -l /devops_workspace/project_notes.txt
```

## Expected Output

After running `ls -l`, you should see:

```bash
-rw-r----- 1 user group 0 Feb 9 12:00 /devops_workspace/project_notes.txt
```

This means:

- **Owner** has `rw-` (read & write).
- **Group** has `r--` (read only).
- **Others** have `---` (no access).

## Notes

- The `mkdir -p` command ensures the directory is created only if it does not exist.
- `chmod 640` applies the correct permissions.
- Use `ls -l` to check permissions anytime.

## Conclusion

This task helps in understanding **file and directory permissions** in Linux, ensuring **proper access control** for security.
