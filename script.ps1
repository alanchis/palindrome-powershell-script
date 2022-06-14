$Name = Read-Host -Prompt 'Please enter a string'
$url = "https://palindrome-2rf7bvutya-uc.a.run.app/api/?name=$Name"

Write-Host "i'll send you to a palindrome checker API"


$obj = Invoke-WebRequest -Uri $url -UseBasicParsing
$object = $obj | ConvertFrom-Json 
$object = $object.sorted  
$object = $object | ConvertTo-Json 
$object = "sorted: $object"

Write-Host $obj
Write-Host "check on your computer for a new file in the same path of the script"

#Write-Host "aqui debe aparecer object"
#Write-Host $object

$ubi = Get-Location
#Write-Host "la ubicacion es" $ubi

$object | Out-File "$ubi\output_$Name.json"






