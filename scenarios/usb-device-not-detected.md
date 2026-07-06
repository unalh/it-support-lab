# USB Device Not Detected

## Scenario

A user reports that when they plug a USB storage device into their Windows PC, it is not recognized.

### Symptoms

- Windows does not prompt when the USB drive is inserted.
- The device does not appear in File Explorer or Disk Management.
- The device works on other computers.

### Investigation

1. Tried different USB ports on the computer.
2. Verified that the device appears in Device Manager under Disk Drives or Universal Serial Bus controllers.
3. Checked for any devices with warning icons in Device Manager.
4. Ran `Get-PnpDevice -PresentOnly` in PowerShell to list connected devices.
5. Updated the USB controller driver via Device Manager.
6. Checked power management settings for USB hubs.

### Resolution

Uninstalled the USB controllers in Device Manager and restarted the PC to allow Windows to reinstall the drivers. After reboot, the USB device was detected correctly. Also disabled USB selective suspend in Power Options to prevent power-related detection issues.

### Lessons Learned

- Reinstalling USB controller drivers can resolve detection issues.
- USB selective suspend may cause intermittent device recognition problems.
