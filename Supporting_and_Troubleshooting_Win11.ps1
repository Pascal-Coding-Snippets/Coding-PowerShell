
## Allgemeine Befehle ##

# Installation PowerShell
winget install --id Microsoft.PowerShell --source winget

# Aus Folie "Überblick Windows PowerShell"
Get-Service -Name "A*" | Where-Object {$_. Status -eq "Running"}

## ExecutionPolicy prüfen ##

# Aktuelle Übersicht
Get-ExecutionPolicy -List

# Siehe Skriptausführung / Speccs
Set-ExecutionPolicy -ExecutionPolicy [Spezifikation]

# Siehe Input 2
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force
