# PC Running Slow

## Scenario

A user complains that their Windows PC is running unusually slow and applications take a long time to open.

### Symptoms

- Slow boot times.
- High disk usage displayed in Task Manager.
- Applications respond sluggishly or freeze.
- No malware signs.

### Investigation

1. Asked the user when the issue started and what changes were made recently.
2. Opened Task Manager to check CPU, memory, and disk utilization.
3. Noted disk usage constantly at 100% due to background processes.
4. Ran `Get-Process` in PowerShell to identify resource-heavy processes.
5. Checked for available Windows updates and pending restarts.
6. Examined Startup programs using `Task Manager` and `msconfig`.

### Resolution

- Disabled unnecessary startup programs to reduce boot time.
- Ran Disk Cleanup to remove temporary files.
- Checked for Windows updates and installed pending updates.
- Suggested upgrading from HDD to SSD for improved performance.
- Rebooted the PC to apply changes. Performance improved significantly.

### Lessons Learned

- High disk usage can cause severe slowdowns even when CPU usage is low.
- Regular maintenance (disk cleanup, update management) helps prevent performance issues.
