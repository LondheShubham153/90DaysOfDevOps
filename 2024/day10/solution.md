# Day 10 Answers: Log Analyzer and Report Generator

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

   <h2>Answer</h2>

   - **First created a folder and then a log file.**
   ![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day10/image/task_1.png)
   
   - **Bash Code for Reference.**
```bash
#!/bin/bash

# Check if log file path is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 /home/ubuntu/logs/sample_log_logs"
    exit 1
fi

LOG_FILE=$1

# Check if the provided log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file not found!"
    exit 1
fi

# Variables for report
DATE=$(date)
TOTAL_LINES=$(wc -l < "$LOG_FILE")
ERROR_COUNT=$(grep -Ei "ERROR|Failed" "$LOG_FILE" | wc -l)
REPORT_FILE="log_summary_$(date +%Y%m%d).txt"

# 1. Count total error messages
echo "Analyzing log file: $LOG_FILE"
echo "Total error count: $ERROR_COUNT"

# 2. Identify lines with "CRITICAL" and print line numbers
echo -e "\nCritical Events:"
grep -in "CRITICAL" "$LOG_FILE"

# 3. Identify the top 5 most common error messages
echo -e "\nTop 5 Error Messages:"
grep -Ei "ERROR|Failed" "$LOG_FILE" | awk -F': ' '{print $NF}' | sort | uniq -c | sort -nr | head -n 5

# 4. Generate Summary Report
echo "Generating report in $REPORT_FILE..."
{
    echo "Date of Analysis: $DATE"
    echo "Log file name: $LOG_FILE"
    echo "Total lines processed: $TOTAL_LINES"
    echo "Total error count: $ERROR_COUNT"
    echo ""
    echo "Top 5 Error Messages:"
    grep -Ei "ERROR|Failed" "$LOG_FILE" | awk -F': ' '{print $NF}' | sort | uniq -c | sort -nr | head -n 5
    echo ""
    echo "List of Critical Events with line numbers:"
    grep -in "CRITICAL" "$LOG_FILE"
} > "$REPORT_FILE"

# Optional: Move the processed log file to an archive directory
ARCHIVE_DIR="./log_archive"
mkdir -p "$ARCHIVE_DIR"
mv "$LOG_FILE" "$ARCHIVE_DIR/"

echo "Log analysis complete. Report saved in $REPORT_FILE and log file moved to $ARCHIVE_DIR."

exit 0
```

   - <h2>Output</h2>

   ![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day10/image/output.png)
   ![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day10/image/output_2.png)

6. **Optional Enhancement:** Add a feature to automatically archive or move processed log files to a designated directory after analysis.

## Tips

- Use `grep`, `awk`, and other command-line tools to process the log file.
- Utilize arrays or associative arrays to keep track of error messages and their counts.
- Use appropriate error handling to handle cases where the log file doesn't exist or other issues arise.

## Sample Log File

A sample log file named `sample_log.log` has been provided in the same directory as this challenge file. You can use this file to test your script or use [this](https://github.com/logpai/loghub/blob/master/Zookeeper/Zookeeper_2k.log)

[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)
