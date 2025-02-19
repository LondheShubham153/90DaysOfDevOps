# 20 Bash Scripting Exercises

This assignment includes 20 Bash scripting exercises focused on Linux system administration and automation. The tasks cover user management, file handling, system monitoring, and process control. Sample files are provided at the end for reference.
---

## 1. Check for Root Privileges

**File Name:** `check_root.sh`

**Objective:** Ensure a script can detect if it’s being run by the root user and handle the case when it is not.

### Requirements
1. If the script is not run by `root` (e.g., `id -u` != 0), print an error and exit with a non-zero code.
2. If run by `root`, print `"You are root. Proceeding..."` and exit with `0`.

<details>
<summary>Hints</summary>

- Use `EUID` or `id -u` to check privileges.  
- For a non-root scenario, `exit 1` is a good choice.
</details>

---

## 2. Automated Directory Creation & Permission Setting

**File Name:** `make_dir.sh`

**Objective:** Practice checking for a directory’s existence, creating it if needed, and setting permissions.

### Requirements
1. The script takes a directory path as an argument, e.g., `./make_dir.sh /path/to/dir`.
2. Checks if the directory exists:
   - If **not** present, create it and set its permissions to `755`.
   - If present, print `"Directory already exists."`
3. Display the final permissions using `ls -ld`.

<details>
<summary>Hints</summary>

- `if [ -d "$1" ]` checks if a directory already exists.  
- `mkdir -p` can help if you want to recursively create parent directories.  
- Use `chmod 755` to apply permissions.
</details>

---

## 3. User Input & Case Statements

**File Name:** `case_example.sh`

**Objective:** Read user input, then use a `case` statement to handle multiple choices.

### Requirements
1. Prompt for input: `[S] Start | [R] Restart | [Q] Quit`.
2. Based on user selection:
   - `S` or `s` → print `"Starting the service..."`
   - `R` or `r` → print `"Restarting the service..."`
   - `Q` or `q` → print `"Exiting..."` and then terminate the script.
   - Otherwise, print `"Invalid option"` and decide whether to exit or prompt again.

<details>
<summary>Hints</summary>

- Use the built-in `read` command to capture user input.  
- A `case` statement can be wrapped in a loop if you want multiple attempts before quitting.
</details>

---

## 4. System Resource Check (CPU & Memory)

**File Name:** `resource_monitor.sh`

**Objective:** Introduce command substitution and conditional logic for monitoring basic system resources.

### Requirements
1. Retrieve current CPU usage and memory usage.
2. If CPU usage is above a certain threshold (e.g., 80%), print a warning.
3. If available memory is below a certain threshold (e.g., 200 MB), print a warning.
4. Otherwise, print `"System resources are normal."`

<details>
<summary>Hints</summary>

- Commands like `top -bn1 | grep "Cpu(s)"` or `vmstat` can help parse CPU usage.  
- For memory, use `free -m` or `/proc/meminfo`.  
- `awk`, `sed`, and `cut` are your friends for extracting numeric values.
</details>

---

## 5. Archive Old Log Files

**File Name:** `archive_logs.sh`

**Objective:** Practice file manipulation and archiving using `tar` or `gzip`.

### Requirements
1. Check a target log directory (e.g., `/var/log`).
2. Locate `.log` files older than 7 days.
3. Archive them into `old_logs_YYYYMMDD.tar.gz` (using the current date).
4. Remove the original logs if the archive is successful.
5. Print a success message.

<details>
<summary>Hints</summary>

- Use `find /var/log -name "*.log" -mtime +7` to identify older logs.  
- `tar -czf old_logs_YYYYMMDD.tar.gz [log_files]` to compress.  
- Verify your commands in a test environment before removing any critical logs.
- sudo touch -d "10 days ago" /var/log/dummy_old.log (This can be used to make logs have a older date)
</details>

---

## 6. Function to Validate Root User

**File Name:** `validate_root.sh`

**Objective:** Demonstrate how to define and use a function within a Bash script.

### Requirements
1. Define a function `is_root()` that:
   - Returns an exit status of `1` if the user is **not** root.
   - Returns `0` if the user **is** root.
2. In the main script, call `is_root()`:
   - If it returns success (`0`), perform a privileged task (e.g., install a package).
   - If it returns failure, print `"You must run this as root!"` and exit.

<details>
<summary>Hints</summary>

- Within the function, use `return 1` or `return 0`.  
- After calling `is_root`, check its exit status with `if is_root; then ... else ... fi`.
</details>

---

## 7. Trap and Signal Handling

**File Name:** `signal_trap.sh`

**Objective:** Learn how to handle signals such as `SIGINT` (`CTRL+C`).

### Requirements
1. Use `trap` to catch `SIGINT`.
2. When the user presses `CTRL+C`, the script should:
   - Print `"Caught SIGINT, cleaning up!"`
   - Perform any cleanup tasks (like removing temporary files).
   - Exit gracefully with a status code.

<details>
<summary>Hints</summary>

- `trap "echo 'Caught SIGINT! Cleaning up...'; rm -f /tmp/tempfile; exit 1" SIGINT`  
- Test by running the script and pressing `CTRL+C`.
</details>

---

## 8. Menu with `select`

**File Name:** `menu_select.sh`

**Objective:** Use the Bash `select` construct to create an interactive menu.

### Requirements
1. Present options such as:
   - **Show Date and Time**
   - **List Files**
   - **Show Current User**
   - **Exit**
2. Use `select` to capture the user’s choice.
3. Perform the corresponding action for each choice.
4. Loop until the user chooses **Exit**.

<details>
<summary>Hints</summary>

- The `select` command automatically displays a menu of items and assigns the user's choice to `$REPLY`.  
- You can wrap this in a `while true` loop to keep repeating until "Exit" is selected.
</details>

---

## 9. Reading a File Line by Line

**File Name:** `read_file.sh`

**Objective:** Carefully handle file input, addressing the nuances of line-by-line reading in Bash.

### Requirements
1. Prompt the user for a filename.
2. If the file exists, read each line sequentially and print the line with its line number.
3. If the file does not exist, display an error and exit.

<details>
<summary>Hints</summary>

- `while IFS= read -r line; do ... done < "$filename"`  
- Keep a counter that increments for every line.
</details>

---

## 10. Batch User Creation from CSV

**File Name:** `create_users.sh`

**Objective:** Learn how to parse CSV files and automate user/group creation.

### Requirements
1. Read from a CSV file containing entries in the format: `username,password,group`.
2. For each line:
   - Create the group if it doesn’t already exist.
   - Create the user, set their password, and add them to the group.
   - Print a success or error message.

<details>
<summary>Hints</summary>

- `IFS=',' read -r username password group <<< "$line"` to split CSV fields.  
- Use `groupadd`, `useradd`, and `usermod` or `usermod -aG`.
</details>

**Sample CSV Provided**: [See below for `sample_users.csv`](https://github.com/Devesh-N/bash-assignment/blob/main/sample.MD#1-sample-users-csv).

---

## 11. Automate Cron Job Creation

**File Name:** `schedule_backup.sh`

**Objective:** Programmatically manage cron jobs.

### Requirements
1. Create a daily backup of `/home/devops_workspace` at midnight.
2. Append the necessary command to the user’s crontab (if not already present).
3. Verify the cron job has been successfully scheduled.

<details>
<summary>Hints</summary>

- `crontab -l > my_cron_backup` to export current crontab.  
- Add `0 0 * * * /path/to/backup_script.sh` to that file.  
- `crontab my_cron_backup` to reload the updated crontab.
</details>

---

## 12. Parsing `/etc/passwd` with `awk` and `grep`

**File Name:** `parse_passwd.sh`

**Objective:** Practice text processing with `awk` and filtering with optional arguments.

### Requirements
1. Extract the username (`$1`) and default shell (`$7`) from `/etc/passwd`.
2. Print them in a neatly formatted table, such as:


3. (Optional) If the script is run with `--bash-only`, only display users whose shell is `/bin/bash`.

<details>
<summary>Hints</summary>

- `awk -F: '{print $1, $7}' /etc/passwd` is a good start.  
- For alignment, consider `printf "%-15s %-20s\n" "$user" "$shell"`.
</details>

---

## 13. Disk Usage Alert

**File Name:** `disk_usage_alert.sh`

**Objective:** Monitor disk space on `/` and warn if usage crosses a specified threshold.

### Requirements
1. Check if `/` usage is above 80% using `df`.
2. If above 80%, print or log `"Disk usage critical: XX% used."`
3. Otherwise, print `"Disk usage is normal."`

<details>
<summary>Hints</summary>

- `df -h / | tail -1 | awk '{print $5}'` extracts the usage percentage.  
- Strip the `%` with `sed 's/%//'` or parameter expansion.
</details>

---

## 14. Service Status Checker

**File Name:** `service_checker.sh`

**Objective:** Combine process management and conditional checks.

### Requirements
1. Takes a service name as an argument (e.g., `nginx`).
2. Checks if the service is active using `systemctl is-active` or similar.
3. If it’s inactive, attempt to start it and print a success/failure message.
4. If it’s active, print `"Service [service_name] is running."`

<details>
<summary>Hints</summary>

- `systemctl is-active $1` returns `active` if the service is running.  
- Validate the exit codes to determine next steps.
</details>

---

## 15. Interactive User Prompt with Validation

**File Name:** `user_prompt.sh`

**Objective:** Practice loops, input validation, and writing data to a file.

### Requirements
1. Prompt the user for:
- **Name** (string)
- **Age** (integer)
- **Email** (basic pattern check)
2. Validate each input. If invalid, prompt again.
3. Once valid, append the details to `users_info.csv` in the format: `name,age,email`.

<details>
<summary>Hints</summary>

- A basic email regex:  
`[[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]`
- Use a `while :` loop with `break` upon valid input.
</details>

---

## 16. Directory Comparison & Logging

**File Name:** `dir_compare.sh`

**Objective:** Use the `diff` command to compare directory contents and log the differences.

### Requirements
1. Takes two directory paths as arguments, e.g., `./dir_compare.sh dirA dirB`.
2. Compare the contents (filenames) of both directories.
3. Write the differences to `dir_diff_YYYYMMDD.log`.
4. Print a summary: `"Differences found: X lines."`

<details>
<summary>Hints</summary>

- `diff -qr dirA dirB` to compare directories recursively.  
- `grep -c ^` on the output to count lines of differences.
</details>

---

## 17. Sort & Remove Duplicates

**File Name:** `sort_unique.sh`

**Objective:** Practice sorting text files and removing duplicate lines.

### Requirements
1. Takes an input file as an argument.
2. Sorts the file alphabetically (case-insensitive) and removes duplicates.
3. Outputs the result to `sorted_unique.txt`.

<details>
<summary>Hints</summary>

- `sort -f filename | uniq` or `sort -uf filename` are typical approaches.  
- Make sure you handle case insensitivity properly (`-f`).
</details>

---

## 18. Random Password Generator

**File Name:** `gen_pass.sh`

**Objective:** Generate random passwords using `/dev/urandom` and optional parameters.

### Requirements
1. Generates a random password of length 12 by default.
2. If a numeric argument is provided, use that length instead (e.g., `./gen_pass.sh 16`).
3. If `--special` is included, add special characters (`!@#$%`) to the character set.

<details>
<summary>Hints</summary>

- `head -c <length>` controls the number of bytes read from `/dev/urandom`.  
- Pipe to `tr -dc 'A-Za-z0-9'` or an extended set for special characters.
</details>

---

## 19. Comprehensive Backup Script with Verification

**File Name:** `backup_dir.sh`

**Objective:** Merge tar creation, error checking, and conditional exit codes.

### Requirements
1. Takes a directory path as the first argument.
2. Creates a tarball named `backup_YYYYMMDD-HHMMSS.tar.gz`.
3. Verifies the tarball was successfully created (non-zero size).
4. If successful, print in **green** text: `"Backup Successful!"` and exit with code `0`.
5. If unsuccessful, print in **red** text: `"Backup Failed!"` and exit with code `1`.

<details>
<summary>Hints</summary>

- For green text: `echo -e "\e[32mBackup Successful!\e[0m"`.  
- For red text: `echo -e "\e[31mBackup Failed!\e[0m"`.  
- `[ -s backup_YYYYMMDD-HHMMSS.tar.gz ]` checks file size.
</details>

---

## 20. Monitoring and Logging Script Output

**File Name:** `run_monitor.sh`

**Objective:** Practice logging command output to both the screen and a file with timestamps.

### Requirements
1. Run a monitoring command (e.g., `ping -c 4 google.com`).
2. Use `tee` to write the output to the console and a log file (`monitor.log`).
3. Print a final message: `"Monitoring complete. Check monitor.log."`

<details>
<summary>Hints</summary>

- Prepend a timestamp to the log file:  
```bash
echo "$(date '+%Y-%m-%d %H:%M:%S') - Starting monitor" | tee -a monitor.log
ping -c 4 google.com | tee -a monitor.log
```
</details>
