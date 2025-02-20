# Bonus Tasks (Optional)

## Overview

These tasks focus on **log file analysis and file management** using Linux commands. You will:

1. Find the **top 5 most common log messages** in `Linux_2k.log` using `awk` and `sort`.
2. Use `find` to **list all files modified in the last 7 days**.
3. Write a script to extract and display only **ERROR** and **WARNING** logs from `Linux_2k.log`.

## Steps & Commands

### 1️⃣ Find the Top 5 Most Common Log Messages

Use `awk` and `sort` to count the most frequent log messages:

```bash
awk '{print $6}' Linux_2k.log | sort | uniq -c | sort -nr | head -5
```

📌 **Explanation:**

- Extracts the **6th column** (log level/message).
- Sorts log entries alphabetically.
- Counts occurrences (`uniq -c`).
- Sorts by frequency (`sort -nr`).
- Displays the **top 5 most common log messages**.

---

### 2️⃣ Find All Files Modified in the Last 7 Days

Use `find` to list recently modified files:

```bash
find /path/to/directory -type f -mtime -7
```

📌 **Explanation:**

- `find` searches for files (`-type f`).
- `-mtime -7` finds files modified in the last **7 days**.
- Replace `/path/to/directory` with the actual directory.

---

### 3️⃣ Extract and Display ERROR & WARNING Logs

Write a script to filter out **ERROR** and **WARNING** logs:

```bash
#!/bin/bash
grep -E "ERROR|WARNING" Linux_2k.log > filtered_logs.txt
echo "Filtered logs saved in filtered_logs.txt"
```

📌 **Explanation:**

- Uses `grep -E` for extended regex to match **ERROR** or **WARNING**.
- Saves output in `filtered_logs.txt`.
- Prints a confirmation message.

## Expected Output

- **Task 1:** Displays the **top 5 most common log messages**.
- **Task 2:** Lists recently modified files.
- **Task 3:** Saves all `ERROR` and `WARNING` logs in `filtered_logs.txt`.

## Notes

- Modify the **log message field number** in `awk` if needed.
- Ensure the **correct directory path** for `find`.
- Use `tail -f filtered_logs.txt` to **live monitor logs**.

## Conclusion

These tasks improve skills in **log file analysis, system monitoring, and file management**, essential for DevOps and system administration.
