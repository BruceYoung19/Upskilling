# All printer servers
$printerservers = @(‘printerserver’); 
$ip = ‘ip’;

# This is to check every Printer server
For ($i=0; $i -le $printerservers.Count-1; $i++) {

  # priting which printer server this is related to and done the check.
  Write-Host "Server Checked - ",$printerservers[$i]

  # If Correct output it will print out print out the correct server.
  Get-Printer -Computername $printerservers[$i] | Select-Object Name,Portname | Where-Object {$_.PortName -eq $ip
		}
	}
