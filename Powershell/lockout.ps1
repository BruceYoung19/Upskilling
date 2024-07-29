# This is to check for locked out users.
# This is required Modules

# Import-Module activedirectory
Search-ADAccount -LockedOut

$user;
# Checked the user
Get-ADUser -Identity $user -Properties * | Select-Object LockedOut, AccountLockoutTime, BadLogonCount
