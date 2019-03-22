Get-ChildItem "c:\" -Directory  -Recurse | Where-Object {$_.Name -match "^[0-9]{2}$"}

Get-Content -Path C:\Windows\WindowsUpdate.log | Select-String "(Agent*)" | Out-GridView

get-help Select-String -Examples

"^[0-9]{3}[.][0-9]{3}[.][0-9]{3}[.][0-9]{3}$]" - IPv4



("[S][-][1][-][5][-][2][1][-][0-9]{10}[-][0-9]{10}[-][0-9]{10}[-][0-9]{4}") - ADUser SID
  
  [char](65)
  [char](66)
