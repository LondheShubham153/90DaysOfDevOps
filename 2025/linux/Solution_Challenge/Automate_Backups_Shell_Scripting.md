# Automate Backups with Shell Scripting Task

## Overview

This task involves writing a shell script to **automate backups** of the `/devops_workspace` directory. The backup should be saved in `/backups` with a timestamped filename and scheduled using `cron`. Additionally, the script should display a success message in **green text**.

## Steps

1. **Create a shell script** to back up `/devops_workspace` as `backup_$(date +%F).tar.gz`.
2. **Save the backup file** in `/backups`.
3. **Schedule the script** using `cron`.
4. **Print a success message** in green text using `echo -e`.

## Commands Used

To perform this task, use the following commands:

```bash
# Create a backups directory if it doesn't exist
mkdir -p /backups

# Create a backup script
cat <<EOL > /usr/local/bin/backup_script.sh
#!/bin/bash
BACKUP_DIR="/backups"
SOURCE_DIR="/devops_workspace"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%F).tar.gz"

# Create the backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Display success message in green
echo -e "\e[32mBackup completed successfully: $BACKUP_FILE\e[0m"
EOL

# Make the script executable
chmod +x /usr/local/bin/backup_script.sh

# Schedule it using cron (runs daily at midnight)
echo "0 0 * * * /usr/local/bin/backup_script.sh" | crontab -
```

## Expected Output

When the script runs successfully, it should display:

```bash
Backup completed successfully: /backups/backup_YYYY-MM-DD.tar.gz
```

(The filename will change based on the date.)

## Notes

- The **`tar`** command is used to compress the backup.
- **`mkdir -p`** ensures the backup directory exists before saving.
- **Crontab entry** schedules the script to run automatically every day at midnight.
- The **green text** in the output is achieved using ANSI escape sequences (`\e[32m`).

## Conclusion

This task helps in automating **file backups**, ensuring data safety and reducing manual effort through **cron scheduling**.
