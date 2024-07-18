# Understanding Loops in Powershell.
# For loops

# Documentation - https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_for?view=powershell-7.4
Write-Host 'First For loops'
for($i=1; $i -le 10; $i++){
    Write-Host "i Loop - ",$i
}

# 2D For loop
Write-host 'Secound for loop'
for($i=1; $i -le 10; $i++){
    Write-Host "i Loop - ",$i
    for($j=1; $j -le 10; $j++){
    Write-host "j loop - This is the nested value", $j
    }
}

# Switch case
# Documenation - https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_switch?view=powershell-7.4

$value = 30;
Switch ($value)
{
    20 {Write-host "Value is 20"}
    30 {Write-host "Value is 30"}
}
