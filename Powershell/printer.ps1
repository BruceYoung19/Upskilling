#First Check the printers
Get-Printer

# we then want to narrow down the search based on what is important Name an Portname
Get-Printer | Select Name,Portname


# Adding A printer
# Add-Printer -ConnectionName \\printServer\printerName

# Checking the printer spoolers on the the computer
Get-Service -Name Spooler


