# This is a script to get the user who are apart of the AD group.
# This works with Groups and Role based groups.

# Documentation - https://learn.microsoft.com/en-us/powershell/module/activedirectory/get-adgroupmember?view=windowsserver2022-ps

$nameofgroup;
get-Adgroup -identity $nameofgroup | get-ADgroupmember | select Name
