# User Cannot Access Internet

## Scenario

A user reports they are unable to access the internet from their workstation.

### Symptoms

- The network icon shows no connectivity.
- The user cannot reach internal or external websites.
- Other devices on the same network have connectivity.

### Investigation

1. Checked physical connections; the Ethernet cable is securely plugged in.
2. Verified the network adapter status in Windows; it shows disabled.
3. Enabled the network adapter and verified it obtains an IP address via DHCP.
4. Checked IP configuration using `ipconfig /all`.
5. Pinged the default gateway to confirm connectivity.
6. Attempted to resolve a DNS name using `nslookup`.

### Resolution

Enabled the network adapter, released and renewed the IP configuration with `ipconfig /release` and `ipconfig /renew`, and flushed the DNS cache using `ipconfig /flushdns`. The user could then browse internal and external websites.

### Lessons Learned

- Always check whether network adapters have been disabled before troubleshooting further.
- Use `ipconfig` and ping tests to diagnose basic connectivity and DNS issues.
