Get-Service | Out-GridView -PassThru | Stop-Service -WhatIf "to check the process & services statsus"
Get-Service | Out-GridView -OutVariable "Services" -PassThru "with variable & same output"
$Services " to check the status of variable"
${$} " to check the status of variable"
"sachin" -match "in" "check the pattern"
"sachin" -match "ni"
"this is my class" -match " is "
"this is my class" -match "is " {to check the patter start with this ^ & end with this $}
"this is my class" -match "^ is $"
"this is my class" -match "^is $"
"this is my class" -match "^ is"
"this is my class" -match "^ is "
" is my class" -match "^ is "

"0987-6543-2109-1234" -match "^[0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$"

"0987-6543-2109-1234" -match "^[0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$"
"0987-6543-2109-1234" -match "^[0-9][0-9][0-9][0-9][-/][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$" 
"0987-6543-2109-1234" -match "^[0-9][0-9][0-9][0-9][/][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9][-][0-9][0-9][0-9][0-9]$" 
"0987-6543-2109-1234" -match "[0-9][-]"

"172.25.16.8" -match "[0-9][.]"
"1234"-match "^[0-9]{4}$"
"123"-match "^[0-9]{4}$"
"123"-match "^[0-9]{3,4}$"
"123"-match "^\d{3,4}$"

Get-Help about_reg -ShowWindow
Get-Help Select-String -ShowWindow
Get-Content -ReadCount .\Windows\WindowsUpdate.log | Select-String -Pattern KB

Select-String -Pattern "^KB[0-9]{5,7}" -Path C:\Windows\WindowsUpdate.log
Get-Content -Path C:\Windows\WindowsUpdate.log | Select-String -Pattern "KB[0-9]{7}"
Get-Content -Path C:\Windows\WindowsUpdate.log | Select-String -Pattern "KB[0-9]{7} *IsInstalled" -


Get-EventLog -log System | select Message | Select-String -Pattern "(.+power/soff)(.+)"



"This server restarted by: Contoso\SachinP" | Select-String -Pattern "(.+by/:)(.+)"

${$}

Get-EventLog -log System | select Message | Select-String -Pattern "(.+reason/:)(.+)"



$firstnumber=3
$secodnumber=4

if ($firstnumber -eq $secodnumber)

{Write-Host "both are equal"
}
else
{Write-Host "both are diffrent"
}


$firstnumber=4
$secodnumber=4

if ($firstnumber -eq $secodnumber)

{Write-Host "both are equal"-ForegroundColor Green
}

elseif ($firstnumber -gt $secodnumber)
{write-host "First is greater than Second" -ForegroundColor Red
}
else
{Write-Host "Second is greater than First" -ForegroundColor Yellow
}



$var=Read-Host -Prompt "Please Enter Number"

Switch($var)
{
11 {"This is Eleven" ; break} 
12 {"This is Twelve" ; break}
11 {"This is Eleven" ; break}
Default {"This is default value"}
} 


$=Read-Host -Prompt "Please Enter Number"

Switch -CaseSensitive("POWER")
{
*wer {"This is Exact"} 
pow* {"This is in lowercase"}
PO*R {"This is Uppercase"}
} 

$=Read-Host -Prompt "Please Enter Number"

Switch -wildcard -CaseSensitive ("power")
{
*wer {"This is Exact"} 
pow* {"This is in lowercase"}
PO*R {"This is Uppercase"}
} 

Switch -Regex ("power")
{
"power" {"This is Exact"} 
"^power$" {"This is in lowercase"}
"^[a-z]{5}$" {"This is Uppercase"}
"^\w{5}$" {"This is Exact1"}
} 

$var2 = 2

$var1

while ($var1 -ne $var2)
{Write-Host "those are not matching"
}

while (Test-Connection -ComputerName

for ($i=0 ;$i -le 10 ;$i+1)
{
Write-Host $i
}


for ($s=1; $s -le5; $s++)
{
"*"* $s
}

for ($s=1; $s -le4; $s++)
{
"*"* $s
}
for ($s=3; $s -ge1; $s--)
{
"*"* $s
}

$myserverlist=@(Get-Content -Path C:\Users\Administrator\Desktop\Serverlist.txt)
foreach ($i in $myserverlist)
{Write-Host $i
}