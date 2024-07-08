# To check Storage, I Mostly use this.
net use
[System.IO.DriveInfo]::GetDrives() | Format-Table


# OR I would use to see the amount of storage for each drive.
# Documentation -  https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-psdrive?view=powershell-7.4

Get-PSDrive
# This is to check the storage of the whole computer
Get-PSDrive -PSProvider FileSystem
