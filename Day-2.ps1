#region
#Fetching Service details
Get-Service
#endregion

#region
#Fetching Process Details
Get-Process
#endregion

Start-Transcript
Stop-Transcript
Get-Process
Get-Service
Start-Transcript -Path "C:\JS\Transcript.txt" -NoClobber
Stop-Transcript
Get-Command -Noun Date
get-help Get-Date 
Get-Date -DisplayHint DateTime
Get-Date -Format dd/mm/yyyy (command to change the format of date)
Get-Date -Format "dd','mm','yyyy" (example if you want to add comma instead of slash)
Get-Date -DisplayHint Date (to check the date)
get-date -DisplayHint Time (to check the time)
get-date -Format yy-MM-dd  (change the format of date)
Get-Date -Format HH:MM:ss 
Get-Date -Format hh:mm:ss
$services = Get-Service
$myprocess = Get-Process
$myprocess | Get-Member
$myprocess. GetType()
$services.GetType() (it will provide array details of bunch base type variable = array)
Get-Member -InputObject $services (it will provide output of an object member type)
Get-Item $env:TEMP (task 1 )
$myarray = @(1, "2", "JS", 4) (string) (it is fixed)
$myarray = @(1, "2", 3) (intiger)
$myarray.GetType()
get-member -inputobject $myarray
$myarray[1]="Sachin"
$myarray.Add("8") (error messager with this command as it is fixed)
[system.collections.arraylist]$mynewarray=@(7,8,9) (to edit your arraylist in future it is dynamic)
$mynewarray
$mynewarray.add("25") (to edit existing Array)
$mynewarray.Count
$mynewarray[-1] From the reverse side
$array=@("1", "sam", "2", "sam", "4") (replace the sam with other word)
$Value=$array.IndexOf("sam") 
$Value1-$array.IndexOf("sam", $Value+1)
$array[$Value]="to"
$array
$Value2=$array.IndexOf("sam")
$array[$Value2]="to"
$array

Get-Help Restart-Service -ShowWindow (to check the output input Value)

Get-Process | Stop-Process (output | input)
Get-Help Stop-Process -ShowWindow
Get-Help Stop-Process -Online


Get-Process | Get-Member

Get-Process | export-csv -Path c:\temp\process.csv
$myprocess1=import-csv -Path C:\Temp\process.csv
$myprocess1 |Get-Member

$myprocess1 | Stop-Process -WhatIf

$mynewprocess1=Import-Csv -Path C:\Temp\process1.csv
$mynewprocess3 | Get-Member

$mynewprocess3 | Stop-Process -WhatIf

$mynewprocess3=Import-Csv -Path C:\Temp\process3.csv
Trace-Command -Name ParameterBinding -Expression {$mynewprocess3 | Stop-Process -WhatIf} -PSHost

Get-Service | Stop-Process (Fail because it is checking for services and trying to stop the process.)

$myhash=@{name="JS";Company="Fujitsu"}
$myhash.name

Get-Service | Get-Member
Get-Service| select @{l="Name1";e={$_.Name}} (change the name of name with Hashtable)

Get-Service | select @{l="Name1";e={$_.Name}} | Get-Member (check the property of the change property)

3 -eq 3
"sachin" -ceq "Sachin"

Get-Service | Where-Object {$_.Name -eq "BITS"}
Get-Service | Where-Object {$_.Name -like "Win*"}
Get-Service | Where-Object {$_.Name -like "*Win*"}
Get-Service | Where-Object {$_.Name -like "*Win"}
Get-Process | Where-Object {$_.company -notlike "Microsoft"}
Get-Process | Where-Object {$_.WS -lt "100KB"}
Get-Process | Where-Object {$_.PM -lt "100KB"}

Get-Process | select @{l="PM(M)";e={$_.PM}}
Get-Process | select @{l="PM(M)";e={$_.PM/ 1MB}},* | Sort-Object -Descending -Property "PM(M)" | select -First 10
Get-Process | select * | Sort-Object -Descending -Property "PM(M)","Name" | select -First 10 
