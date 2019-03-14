get-service | export-csv services1.csv | Out-File
#receved error saying "Paramater can not be found" 
#We can try "get-service | export-csv services.csv" for desired result
Get-Service | Export-Csv services123.csv -Delimiter '|'
get-service | export-csv services12.csv -NoTypeInformation

Get-ADComputer -Filter * | Get-HotFix
#ABove command is not working giving error "Get-ADComputer : The term 'Get-ADComputer' is not recognized"
# to get the result of above command we need to import AD module to this powershell 

Get-Content "C:\Demo\server.txt" | ForEach-Object{get-process} | Export-Csv "c:\demo\serverprocess.csv"


