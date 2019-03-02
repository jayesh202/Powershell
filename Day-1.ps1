Get-Process
(get-Process).ProcessName
Get-Process | fl *
Get-Process | select *
Get-Process | ft processname,ID
Get-Process | ft process,Id
Get-Process | Get-Member
"sachin" | Get-Member
("sachin").Contains("sac")
("i am an indian").indexof("i",3)
("i am an indian").indexof("i",4)
("i am an indian").indexof("i",7)
("This is IAC").Replace("IAC","MYIAC")
("This is IAC").Length
Get-Command *service*
Get-Command -noun service
Get-Command -verb get
Get-Command -Module dism
get-command -Module Esxi
start-Service BITS
Get-Service bits
Get-Help Get-Service -ShowWindow
Get-Help Get-Service -online
Get-Process
Get-help get-process -showwindow
Get-Process -IncludeUserName
Get-Process -Name AnyDesk -IncludeUserName
Get-command *Childitem*
Get-command -noun Childitem
Get-Help get-childitem -ShowWindow
Get-ChildItem C:\Windows | Measure-Object
Get-ChildItem C:\Windows -Recurse
Get-ChildItem C:\Windows -include *.dll -Recurse | Measure-Object
(Get-ChildItem C:\Windows -include *.dll -Recurse | Measure-Object).Count
Get-Help Get-ChildItem -Online
Get-Alias
no
get-help New-Alias -online
New-Alias -Name no -Value .\notepad.exe
New-Alias -Name GPSS -Value Get-Process
gpss
Get-Help -ShowWindow
get-command *psprovider*
Get-PSProvider
cd hklm:
set location hkcu:
set location env:
Get-Item 
Get-ChildItem Cert:\CurrentUser
Get-ChildItem HKLM:\SOFTWARE
get-help Get-ItemProperty -ShowWindow 
Get-ItemProperty .\SYSTEM
Get-ItemProperty -Path C:\Windows | fl *
Get-command *enviornment*
Get-Help New-Item 
New-Item -Name SJ -Value SP
d