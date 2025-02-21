
# Aus Überblick Windows PowerShell
Get-Service -Name "A*" | Where-Object {$_. Status -eq "Running"}


