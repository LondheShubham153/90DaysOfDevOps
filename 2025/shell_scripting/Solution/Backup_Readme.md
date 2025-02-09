# Backup Script README

## Overview
This Bash script automates the process of backing up a specified directory. It compresses the directory contents into a zip archive with a timestamped filename, stores it in a `backups` subdirectory, and implements a rotation mechanism to retain only the last three backups.

## Features
- Creates timestamped zip archives of the target directory.
- Stores backups in a dedicated `backups` folder within the target directory.
- Maintains only the three most recent backups, automatically deleting older ones.

## Prerequisites
- Ensure `zip` is installed on your system.
- The script requires execution permissions: `chmod +x backup_script.sh`

## Usage
Run the script with a directory path as an argument:
```bash
./backup_script.sh /path/to/directory
```

## Script Breakdown
1. **Argument Validation**
   - Checks if a directory path is provided.
   - Validates if the argument is a valid directory.
2. **Backup Directory Creation**
   - Ensures the `backups` folder exists within the target directory.
3. **Backup File Creation**
   - Generates a timestamp.
   - Creates a zip archive containing the contents of the target directory.
4. **Backup Rotation**
   - Lists existing backups sorted by creation time.
   - Deletes older backups if more than three exist.

## Example Output
```
Backup created: /path/to/directory/backups/backup_20250209123045.zip
Removed old backup: /path/to/directory/backups/backup_20250208113030.zip
```

## Notes
- The script runs silently with `zip -r > /dev/null` to suppress output.
- Only non-hidden files are included in the backup.
- If the directory contains subdirectories, they are also backed up recursively.

## License
This script is open-source and free to use.

