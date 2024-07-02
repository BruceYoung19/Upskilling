$path  = $env:onedrivecommercial
$filename = "Screenshot"
$todaydate =  get-date -Format "MM-dd-yyyy"
$newfiledirectory = $todaydate

# Create
set-location $path
$correctpath = test-path $env:onedrivecommercial+"\"+$filename -IsValid


if ($correctpath -eq "True"){
    Set-Location $filename
    New-Item $newfiledirectory -ItemType "directory"
}else {
    New-Item $filename -ItemType "directory"
    #chmod +x $filename
}
