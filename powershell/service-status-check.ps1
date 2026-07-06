Write-Host "=== Service Status Check ==="

$services = 'wuauserv','bits','netlogon','lanmanserver','lanmanworkstation'

foreach ($service in $services) {
    $status = Get-Service -Name $service -ErrorAction SilentlyContinue
    if ($null -ne $status) {
        Write-Host "$($status.Name) - $($status.Status)"
    } else {
        Write-Host "$service - Not found"
    }
}
