$path = ".\list.csv"
# File structure inside csv file
#firstName,lastName,userObjectId,UPN
#john,doe,1a2b-3c4d-5e6f,john.doe@domain.com
# etc.


Import-Csv $path | Foreach-Object { 
    Update-MgUser -UserId "$($_.userObjectId)" -UserPrincipalName "$($_.UPN)"
}