# Backup Script

## Description
This Bash script automates the process of creating backups of a specified source directory and storing them in a designated destination directory. It retains only the last three backups and deletes older ones to manage storage efficiently.

## Features
- Creates a compressed `.zip` archive of the specified source directory.
- Stores backups in a `backups` subdirectory within the destination directory.
- Uses timestamped filenames for unique identification.
- Automatically retains the latest three backups and removes older ones.

## Usage
### Running the Script
To execute the script, use the following command:
```bash
./backup_script.sh <source_directory> <destination_directory>
```
Example:
```bash
./backup_script.sh /home/user/documents /mnt/backup_drive
```

### Automating with Cron
To schedule daily backups at 2 AM, add the following line to your crontab:
```bash
0 2 * * * /path/to/backup_script.sh /path/to/source_directory /path/to/destination_directory
```
To edit the crontab, run:
```bash
crontab -e
```

## Prerequisites
- Ensure that `zip` is installed on your system. You can install it using:
  - **Debian/Ubuntu**: `sudo apt install zip`
  - **CentOS/RHEL**: `sudo yum install zip`
  - **macOS**: `brew install zip`
- The script should have execute permissions. Run:
```bash
chmod +x backup_script.sh
```

## Error Handling
- If incorrect arguments are provided, the script will display a usage message.
- It verifies that both source and destination directories exist before proceeding.
- If either directory is invalid, an error message is displayed, and the script exits.

## Output
Upon successful execution, the script will display:
```
Backup created: /path/to/destination_directory/backups/backup_YYYY-MM-DD_HH-MM-SS.zip
Removed old backup: /path/to/destination_directory/backups/backup_YYYY-MM-DD_HH-MM-SS.zip (if applicable)
```

## License
This script is open-source and can be modified and distributed freely.

