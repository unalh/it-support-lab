Write-Host "=== System Information ==="

Write-Host "`nOperating System:"
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version

Write-Host "`nComputer Name:"
$env:COMPUTERNAME

Write-Host "`nCPU:"
Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, MaxClockSpeed

Write-Host "`nMemory:"
Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum | ForEach-Object {
    [Math]::Round($_.Sum / 1GB, 2)
}

Write-Host "GB RAM"

Write-Host "`nDisk Drives:"
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | Select-Object DeviceID, @{Name='SizeGB';Expression={[Math]::Round($_.Size/1GB,2)}}, @{Name='FreeGB';Expression={[Math]::Round($_.FreeSpace/1GB,2)}}
