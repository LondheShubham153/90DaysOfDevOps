# Log File Analysis Task

## Overview

This task focuses on analyzing logs using **grep, awk, and sed** to extract insights, filter important logs, and secure sensitive data. You will also determine the most frequent log entries using sorting and counting techniques.

## Steps

1. **Download the log file** from the GitHub repository.
2. **Find all occurrences of the word "error"** using `grep`.
3. **Extract timestamps and log levels** using `awk`.
4. **Mask all IP addresses** in the log file using `sed`.
5. **Find the most frequent log entry** using `awk`, `sort`, and `uniq`.

## Commands Used

To perform this task, use the following commands:

```bash
# Download the log file
wget https://raw.githubusercontent.com/logpai/loghub/master/Linux/Linux_2k.log -O Linux_2k.log

# Find all occurrences of "error"
grep -i "error" Linux_2k.log > error_logs.txt

# Extract timestamps and log levels
awk '{print $1, $2, $3, $6}' Linux_2k.log > timestamps_logs.txt

# Mask all IP addresses for security
sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[REDACTED]/g' Linux_2k.log > masked_logs.txt

# Find the most frequent log entry
awk '{print $6}' Linux_2k.log | sort | uniq -c | sort -nr | head -10 > frequent_logs.txt
```

## Expected Output

- `error_logs.txt` → Contains all occurrences of "error".
- `timestamps_logs.txt` → Stores timestamps and log levels.
- `masked_logs.txt` → Log file with IPs replaced by `[REDACTED]`.
- `frequent_logs.txt` → Shows the **top 10 most common log entries**.

## Notes

- **grep** is used for filtering logs based on keywords.
- **awk** extracts specific fields from logs for better readability.
- **sed** helps secure logs by replacing sensitive IP addresses.
- **sort and uniq** are used to analyze the most frequent log events.
- Ensure you have the required **Linux utilities installed** before running the commands.

## Conclusion

This task enhances **log analysis skills** using Linux commands, helping in troubleshooting, security auditing, and system monitoring.
