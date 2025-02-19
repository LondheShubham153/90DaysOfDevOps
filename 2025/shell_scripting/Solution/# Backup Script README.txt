# Backup Script README

## Overview
This Bash script automates the process of creating backups for a specified directory. It compresses the directory into a `.zip` archive and retains only the last three backups, deleting older ones to manage storage efficiently. The script is designed to be scheduled using a cron job for periodic execution.

## Prerequisites
- Ensure `zip` is installed on your system. You can install it using:
  ```sh
  sudo apt install zip  # For Debian/Ubuntu
  sudo yum install zip  # For CentOS/RHEL
  ```
- Ensure you have the necessary permissions to read from the target directory and write to the backup location.

## Usage
Run the script with the directory you want to back up as an argument:
```sh
./backup_script.sh /path/to/your/directory
```

### Example
```sh
./backup_script.sh /home/user/documents
```
This will create a backup of `/home/user/documents` inside `/home/user/documents/backups/`.

## How It Works
1. **Validates Input:** Ensures the user provides a directory path and verifies its existence.
2. **Creates Backup Directory:** If not already present, it creates a `backups` directory inside the target directory.
3. **Generates Timestamped Backup:** Creates a `.zip` file named with a timestamp (e.g., `backup_202502091230.zip`).
4. **Stores the Backup:** The zip file is placed inside the `backups` directory.
5. **Manages Old Backups:** Only retains the last 3 backups, deleting older ones.

## Automating with Cron Job
To automate backups, add a cron job:
```sh
crontab -e
```
Then, add this line to schedule the script to run daily at 2 AM:
```sh
0 2 * * * /path/to/backup_script.sh /path/to/your/directory
```
Ensure the script has execution permissions:
```sh
chmod +x backup_script.sh
```

## Error Handling
- If no argument is provided, the script exits with an error message.
- If the provided path is not a valid directory, the script terminates with an error.
- If `zip` fails for any reason, the script logs the issue.

## Notes
- Modify the script to change the retention policy (currently set to keep the last 3 backups).
- Use `ls -lt` inside the script to verify the backup list.
- Consider logging output for debugging (redirecting errors to a log file).

## License
This script is provided as-is without any warranties. Modify and use it as needed.

