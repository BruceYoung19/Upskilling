# - AUTHOR - BRUCE YOUNG
# - PROJECT NAME - FOOL PASSWORD TOOL
# - BUILD - ALPHA 3.0

$counter = randomUserPassword

# Making Window
$main_form                          = New-Object System.Windows.Forms.Form
$main_form.AutoSize                 = $true
$main_form.text                     ='Fools Password Tool' 

# Label Object - Title
$Label                             = New-Object System.Windows.Forms.Label
$Label.text                        = 'Password Reset '
$label.Font                        = New-Object System.Drawing.Font("Lucida Console",13,[System.Drawing.FontStyle]::Regular)
$Label.Location                    = New-Object System.Drawing.Point(0,10)
$Label.AutoSize                    = $true
$main_form.Controls.Add($Label)
 

#Label Object - Password Generator
$Labelpasswordecryptor              = New-Object System.Windows.Forms.Label
$Labelpasswordecryptor.text         = 'Password Generated :'
$Labelpasswordecryptor.Location     = New-Object System.Drawing.Point(0,65)
$Labelpasswordecryptor.AutoSize     = $true
$main_form.Controls.Add($Labelpasswordecryptor)

# Output - Password Generator
$Labelpasswordoutput               = New-Object System.Windows.Forms.Label
$Labelpasswordoutput.Text          = $counter
$Labelpasswordoutput.Location      = New-Object System.Drawing.Point(180,65)
$Labelpasswordoutput.AutoSize      = $true
$main_form.Controls.Add($Labelpasswordoutput)

# Button - Generator Password
$ButtonPasswordGenerator           = New-Object System.Windows.Forms.Button
$ButtonPasswordGenerator.Location  = New-Object System.Drawing.Size(340, 65)
$ButtonPasswordGenerator.Size      = New-Object System.Drawing.Size(180,25)
$ButtonPasswordGenerator.Text      = "Generate Password"
$main_form.Controls.Add($ButtonPasswordGenerator)

# Button - Copy Password
$Buttoncopypassword                = New-Object System.Windows.Forms.Button
$Buttoncopypassword.Location       = New-Object System.Drawing.Size(340, 95)
$Buttoncopypassword.Size           = New-Object System.Drawing.Size(180,25)
$Buttoncopypassword.Text           = "Copy Password"
$main_form.Controls.Add($Buttoncopypassword)

# Button - Close application
$Buttonclose                      = New-Object System.Windows.Forms.Button
$Buttonclose.Location             = New-Object System.Drawing.Size(10,150)
$Buttonclose.Size                 = New-Object System.Drawing.Size(250,25)
$Buttonclose.Text                 = "Close"
$main_form.Controls.Add($Buttonclose)

# Onclicks - Button
$ButtonPasswordGenerator.Add_Click({passwordRefresh})
$Buttoncopypassword.Add_Click({copyPassword})
$Buttonclose.Add_Click({closeApplication})

# Function - Refresh the output text
function passwordRefresh{
    $Labelpasswordoutput.Text = randomUserPassword
}
 
function copyPassword{
    $Labelpasswordoutput.Text.Trim() |Set-Clipboard
}

function closeApplication{
    $main_form.Close();
}
 
function randomUserPassword{
    $words = @('Follow','Ticket','Insure','Resign','Pepper',
    'Direct','Summit','Retain','Matter','Europe','Belief','Demand'
    ,'embryo','Redeem','Expand', 'Banner','Gossip','Glance',
    'Couple','Palace','Carrot','Morale','Resist','Medium',
    'Weight','Labour','Advice','Annual','Polite','Sticky','Border'
    ,'extend','Frozen','Afford','Tiptoe','Sailor','Lawyer','Senior'
    ,'notion', 'Sector','Arrest','Effort','Hammer','Inject','Denial'
    ,'Collar', 'Favour','Extent','Thanks','studio')

    $symbol = [Char[]]'!"#$%&''()*+,-./:;<=>?@[\]^_`{|}~'
    $numbers = Get-Random -Maximum 100
    $chosenname = Get-Random -InputObject $words
    $chosensymbol = Get-Random -InputObject $symbol
    $finalpassword =  $chosenname + $chosensymbol + $numbers
    Return $finalpassword
}

$main_form.ShowDialog()
