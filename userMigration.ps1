$path = ".\list.csv"

Import-Csv $path | Foreach-Object { 
    Write-Host $_.UPN 
}