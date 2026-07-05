Write-Host "=== Network Diagnostics ==="

Write-Host "`nIP Configuration"
Get-NetIPConfiguration

Write-Host "`nDNS Servers"
Get-DnsClientServerAddress | Where-Object { $_.ServerAddresses.Count -gt 0 }

Write-Host "`nDefault Gateway Test"
Test-NetConnection 8.8.8.8

Write-Host "`nDNS Resolution Test"
Resolve-DnsName microsoft.com

Write-Host "`nActive Network Adapters"
Get-NetAdapter | Where-Object { $_.Status -eq "Up" } | Select-Object Name, InterfaceDescription, LinkSpeed
