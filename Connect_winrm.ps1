
# WinRM prüfen
Get-Service winrm
Start-Service winrm

# Konfiguration abrufen
winrm get winrm/config

# Listener
winrm enumerate winrm/config/listener

# WinRM aktivieren
Enable-PSRemoting

# Trusted Hosts definieren (wenn nicht in einer Domäne)
Set-Item WSMan:\\localhost\\Client\\TrustedHosts *

# Enter-PSSession
Enter-PSSession -ComputerName [ComputerName]
hostname
Exit-PSSession

# New-PSSession
New-PSSession -ComputerName [ComputerName]
Enter-PSSession -Id 2 # Achtung auf ID
Exit-PSSession
Get-PSSession
Get-PSSession | Remove-PSSession
New-PSSession -ComputerName [ComputerName1],[ComputerName2]

# Mit Credentials
$cred = Get-Credential
Enter-PSSession -ComputerName [ComputerName] -Credential [domain]\administrator
Enter-PSSession -ComputerName [ComputerName] -Credential $cred
New-PSSession -ComputerName [ComputerName1],[ComputerName2] -Credential [domain]\administrator
New-PSSession -ComputerName [ComputerName1],[ComputerName2] -Credential (Get-Credential)

# Prüfen wo ich bin
hostname

# Ausloggen
Exit-PSSession

# Remotedesktop aktivieren aus der Ferne

Invoke-Command -ComputerName [ComputerName] {
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-Name "fDenyTSConnections" -Value 0;
Enable-NetFirewallRule -DisplayGroup "RemoteDesktop" # Achtung: auf englischem OS heisst die DisplayGroup "Remote Desktop"
}

#Pruefen
Get-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-Name "fDenyTSConnections"
Get-NetFirewallRule -DisplayGroup "RemoteDesktop" | Select-Object Name,Enabled,Direction,Action
