Get-Service | Export-Csv serv.csv | Out-File  #export & write-host will not pass on out put to the next to pipeline
# get-member to check the output status


$myarray1=@(1,2,3,"Sachin", 4,"test") to set the array we need to use the ()

Get-Service | Get-Member

$myarray1 | Get-Member

Get-Member -InputObject $myarray1

"1" | Get-Member

("1").ToInt32($null) | Get-Member

[int]$myvalue="1"
$myvalue

[int]$myvalue="Sachin"

Get-Command -Noun

Get-Help Get-Command -Online



Get-Process 

Get-Help Export-Csv -Online

Get-Process | Export-Csv process.csv -Delimiter "|"

get-help Get-HotFix -ShowWindow



Get-ChildItem -Path C:\Windows | select name | Select-String -Pattern "^[0-9]{2}"

Get-ChildItem -Path C:\Windows |select name | Select-String -Pattern "[0-9]{2}.txt"

Get-ChildItem -Path C:\Windows | Select-String -Pattern "[0-9]{2}.txt"


$files= Get-ChildItem C:\Windows
Foreach ($file in $files)

{
 if ($file.name -match "[0-9]{2}") # with start and end it is not working
    
    {$file.name | Out-File C:\Demo\12.txt -Append
    }

}


Get-ChildItem C:\Windows | ? {$_.Name -match "[0-9]{2}.txt"}

Set-Location  C:\Windows\ | ? {$_.Name -match "Regulation[:]\s{[0-9A-Z]{8}[-][0-9A-Z]{4}[-][0-9A-Z]{4}[-][0-9A-Z]{4}[-][0-9A-Z]{12}"}


Get-Content C:\Windows\WindowsUpdate.log | ? {$_ -match "Regulation[:]\s{[0-9A-Z]{8}[-][0-9A-Z]{4}[-][0-9A-Z]{4}[-][0-9A-Z]{4}[-][0-9A-Z]{12}}"} | Export-Csv C:\Demo\Reg.csv -NoTypeInformation


Get-Content C:\Windows\WindowsUpdate.log | ? {$_ -match "Got/s[0-9A-Z]{8}[-][0-9A-Z]{4}[-][0-9A-Z]{4}[-][0-9A-Z]{4}[-][0-9A-Z]{12}}"}


for ($i=65;$i -le 90; $i++)
{
[char]$i 
}



Get-Help -Name Get-Service -ShowWindow


$services=Get-Service
foreach ($service in $services)
{
    Write-Host "the display name of the service $services.name is $services.displayname"

}

$services=Get-Service
foreach ($service in $services)
{
    Write-Host "the display name of the service" $service.name "is" $service.displayname

}

$services=Get-Service
foreach ($service in $services)
{
    Write-Host "the display name of the service '$($service.name)' is '$($service.displayname)'" # Double quote is expanding the property where as single qote cant.

}

$services=Get-Service
foreach ($service in $services)
{
    Write-Host "the display name of the service |$($service.name)| is |$($service.displayname)|"

}

$services=Get-Service
foreach ($service in $services)
{
    $out= "the display name of {0} is {1}" -F $Service.name , $service.DisplayName
    $out
}


"{0:n2}" -f 123.4567 # instead of n (number) C = Currency d=Date hh= hours mm=minutes

"{0:c2}" -f 100

"{0:d2}" -f 2:58:48 PM

$time=get-date

"{0:hh}" -f $time

"{0:hh}:{0:mm}:{0:ss}" -f $time

Get-Help New-Object -ShowWindow

get-help Add-Member -ShowWindow

$PSVersionTable


$var= New-Object -TypeName PSCustomobject
$var | Add-Member -Name FirstName -MemberType NoteProperty -Value "Sachin"
$var | Add-Member -Name LastName -MemberType NoteProperty -Value "Patil"
$var | Add-Member -Name FullName -MemberType ScriptMethod -Value {"$($This.FirstName) $($this.LastName)"} -Force


$var.FullName()

$var1=[pscustomobject]@{fname="Sachin"; lname="patil"

$var1

$var1


Add-Content -Path C:\Localuser.csv  -Value '"Name","Password"'



$users=import-csv

$users=Import-Csv -Path C:\Localuser.csv


foreach ($user in $users)
{
$pass=$user.Password | ConvertTo-SecureString -AsPlainText -Force

New-LocalUser -name $user.name -Password $pass
            
}