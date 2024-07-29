 # This to check the membership of groups.
$nameofgroup=""
Get-ADGroup -Identity $nameofgroup


# Getting the members of the group
Get-ADGroup -Identity $nameofgroup -Properties member | select member
