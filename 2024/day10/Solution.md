# Day 10 Task: Log Analyzer and Report Generator

## Challenge Title: Log Analyzer and Report Generator

## Scenario

You are a system administrator responsible for managing a network of servers. Every day, a log file is generated on each server containing important system events and error messages. As part of your daily tasks, you need to analyze these log files, identify specific events, and generate a summary report.

## Task

Write a Bash script that automates the process of analyzing log files and generating a daily summary report. The script should perform the following steps:

1. **Input:** The script should take the path to the log file as a command-line argument.

2. **Error Count:** Analyze the log file and count the number of error messages. An error message can be identified by a specific keyword (e.g., "ERROR" or "Failed"). Print the total error count.

3. **Critical Events:** Search for lines containing the keyword "CRITICAL" and print those lines along with the line number.

4. **Top Error Messages:** Identify the top 5 most common error messages and display them along with their occurrence count.

5. **Summary Report:** Generate a summary report in a separate text file. The report should include:
   - Date of analysis
   - Log file name
   - Total lines processed
   - Total error count
   - Top 5 error messages with their occurrence count
   - List of critical events with line numbers

6. **Optional Enhancement:** Add a feature to automatically archive or move processed log files to a designated directory after analysis.

## Solution :

# Log Analyzer and Report Generator

This script automates the process of analyzing log files and generating a daily summary report. It performs the following steps:

1. Takes the path to the log file as a command-line argument.
2. Analyzes the log file to count error messages and identify critical events.
3. Identifies the top 5 most common error messages.
4. Generates a summary report.
5. moves the processed log file to an archive directory.

## How to Use the Script

### Save the script

Copy the script and save it to a file, e.g., `log_analyzer.sh`.

### Make it executable

Run the following command to make the script executable:
```bash
chmod +x log_analyzer.sh
```

# Script :

  ```bash
#!/bin/bash

# Function to display usage
usage() {
  echo "Usage: $0 /path/to/logfile"
  exit 1
}

# Check if log file is provided
if [ -z "$1" ]; then
  usage
fi

LOG_FILE="$1"

# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
  echo "Log file not found!"
  exit 1
fi

# Initialize variables
DATE=$(date "+%Y-%m-%d")
LOG_FILE_NAME=$(basename "$LOG_FILE")
TOTAL_LINES=$(wc -l < "$LOG_FILE")
ERROR_COUNT=$(grep -ci "error\|failed" "$LOG_FILE")
CRITICAL_EVENTS=$(grep -in "CRITICAL" "$LOG_FILE")
SUMMARY_FILE="log_summary_$DATE.txt"

# Function to get the top 5 error messages
get_top_errors() {
  grep -i "error\|failed" "$LOG_FILE" | awk -F'[: ]' '{for(i=3;i<=NF;i++) printf $i" "; printf "\n"}' | sort | uniq -c | sort -nr | head -5
}

# Generate the summary report
{
  echo "Log Analysis Report - $DATE"
  echo "===================="
  echo "Log file name: $LOG_FILE_NAME"
  echo "Total lines processed: $TOTAL_LINES"
  echo "Total error count: $ERROR_COUNT"
  echo ""
  echo "Top 5 Error Messages:"
  get_top_errors
  echo ""
  echo "List of Critical Events with Line Numbers:"
  echo "$CRITICAL_EVENTS"
} > "$SUMMARY_FILE"

# Print the summary to the console
cat "$SUMMARY_FILE"

# Optional: Move processed log file to an archive directory
ARCHIVE_DIR="/home/ubuntu/Logfile" #ADD Path to your archive directory

mkdir -p "$ARCHIVE_DIR"
mv "$LOG_FILE" "$ARCHIVE_DIR"

echo "Log file moved to $ARCHIVE_DIR"
echo "Summary report saved to $SUMMARY_FILE"

```

# Output
```console
Log Analysis Report - 2024-07-10
====================
Log file name: sample_log.log
Total lines processed: 120
Total error count: 16

Top 5 Error Messages:
      1 23 13,596 - WARN  [RecvWorker 188978561024 QuorumCnxManager$RecvWorker@762] - Connection broken for id 188978561024, my id = 1, error =
      1 23 00,124 - WARN  [RecvWorker 188978561024 QuorumCnxManager$RecvWorker@762] - Connection broken for id 188978561024, my id = 1, error =
      1 22 56,892 - WARN  [RecvWorker 188978561024 QuorumCnxManager$RecvWorker@762] - Connection broken for id 188978561024, my id = 1, error =
      1 22 53,462 - WARN  [RecvWorker 188978561024 QuorumCnxManager$RecvWorker@762] - Connection broken for id 188978561024, my id = 1, error =
      1 22 43,536 - WARN  [RecvWorker 188978561024 QuorumCnxManager$RecvWorker@762] - Connection broken for id 188978561024, my id = 1, error =

List of Critical Events with Line Numbers:

Log file moved to /home/ubuntu/Logfile
Summary report saved to log_summary_2024-07-10.txt

```
## In case any one of you don't undestand get_top_errors() function

The `get_top_errors()` function in the script performs the following steps:

### Search for Error Messages

It uses `grep` to search for lines in the log file that contain the words "error" or "failed" (case-insensitive).

### Extract and Normalize Error Messages

It uses `awk` to process each matching line, removing the first two fields (typically timestamps or similar metadata), and then concatenates the rest of the line into a single error message string.

### Count and Sort Error Messages

It then sorts these error messages, counts how often each one occurs using `uniq -c`, sorts them in descending order by their count using `sort -nr`, and finally selects the top 5 most frequent error messages with `head -5`.

### In Simple Terms

The `get_top_errors()` function finds the most common error messages in the log file and lists the top 5 along with how many times each one appeared.

