# Process Management & Monitoring Task

## Overview

This task focuses on managing and monitoring background processes in Linux. You will:

- Start a **background process** using `ping`.
- Monitor the process using `ps`, `top`, and `htop`.
- Kill the process and verify it is no longer running.

## Steps

1. **Start a background process** to log continuous ping responses.
2. **Monitor the process** using different commands.
3. **Kill the process** and confirm it’s stopped.

## Commands Used

To perform this task, use the following commands:

```bash
# Start a background process (ping Google and log output)
ping google.com > ping_test.log &

# Get the Process ID (PID)
echo $!

# Monitor process using different commands
ps aux | grep ping   # Shows running processes with details
top                 # Interactive process monitoring
htop                # Advanced interactive process monitoring (if installed)

# Kill the process using its PID
kill <PID>

# Verify the process is terminated
ps aux | grep ping
```

## Expected Output

- Running `ps aux | grep ping` should initially show:
  ```bash
  user   12345  0.0  0.1  12345  6789 ?  S  12:00   0:00 ping google.com
  ```
- After killing the process, `ps aux | grep ping` should return no output.

## Notes

- `$!` stores the PID of the last background process.
- `kill <PID>` stops the process; use `kill -9 <PID>` if it doesn’t stop normally.
- Use `htop` instead of `top` for a better visual representation (install with `sudo apt install htop`).

## Conclusion

This task provides hands-on experience with **process management**, monitoring, and termination in Linux environments.
