
# WinRM prüfen
Get-Service winrm
Start-Service winrm

# WinRM aktivieren
Enable-PSRemoting

# Auf anderen PC verbinden
Enter-PSSession -ComputerName [...]

# Prüfen wo ich bin
hostname

# Trusted Hosts definieren (wenn nicht in einer Domäne)
Set-Item WSMan:\\localhost\\Client\\TrustedHosts *

# Ausloggen
Exit-PSSession
