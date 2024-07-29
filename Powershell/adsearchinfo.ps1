# This is to search for information in AD.
# Only need to 
$Email = @(); 

For ($i=0; $i -le $Emails.Count-1; $i++) {
	$output = Get-ADUser -Filter {EmailAddress -eq 'email'}  -Properties employeeType 
	# | Select attribute 
	Write-Output $output
}
