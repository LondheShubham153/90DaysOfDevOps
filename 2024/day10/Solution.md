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



