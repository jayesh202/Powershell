Get-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name DontPrettyPath -Value 1

mkdir c:\Demo

cd C:\Demo

New-Item -Name Test.txt -Type File

Add-Content C:\demo\Test.txt -Value "This is my IAC Task Number 1"

$env:TEMP

Output for this command is "C:\Users\ADMINI~1\AppData\Local\Temp"


