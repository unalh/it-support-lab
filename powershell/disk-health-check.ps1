Write-Host "=== Disk Health Check ==="

Write-Host "`nPhysical Disks:"
Get-PhysicalDisk | Select-Object FriendlyName, HealthStatus, OperationalStatus, Size

Write-Host "`nVolume Information:"
Get-Volume | Select-Object DriveLetter, FileSystemLabel, @{Name='SizeGB';Expression={[Math]::Round($_.Size/1GB,2)}}, @{Name='FreeGB';Expression={[Math]::Round($_.SizeRemaining/1GB,2)}}, HealthStatus
