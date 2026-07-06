# Event Log Errors PowerShell Script

# Displays recent error events from System and Application logs.
Write-Host "=== System and Application Event Log Errors ==="

# Define logs to query
$eventLogs = @("System", "Application")

foreach ($log in $eventLogs) {
    Write-Host ""
    Write-Host "[$log Log Errors in the last 24 hours]"
    # Retrieve error-level events from the last 24 hours
    Get-WinEvent -LogName $log -FilterHashtable @{ LogName = $log; Level = 2; StartTime = (Get-Date).AddDays(-1) } |
        Select-Object TimeCreated, Id, LevelDisplayName, ProviderName, Message |
        Format-List
}
