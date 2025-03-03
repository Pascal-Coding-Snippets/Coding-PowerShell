
# Ping
Test-Connection -ComputerName google.ch -Count 1
Test-Connection google.ch -Count 1

# telnet
Test-NetConnection 20min.ch -CommonTCPPort HTTP
Test-NetConnection 20min.ch -Port 443

# TTL-Settings (time to live)
get-dnsclientcache

# tracert
Test-NetConnection google.ch -TraceRoute
$trace = Test-NetConnection google.ch -TraceRoute
 
$trace.RemoteAddress.IPAddressToString
$trace.TraceRoute
 
# ipconfig
Get-NetIPConfiguration -All

# ipconfig release/renew
Get-NetAdapter
Restart-NetAdapter -Name "Ethernet 2"
 
# ipconfig displaydns/flushdns
Get-DnsClientCache
Clear-DnsClientCache
 
# net use
New-SmbMapping -LocalPath 'x:' -RemotePath '\\kr10-kl1\Kurs'

### Traceroute
Test-Connection -TargetName sid-500.com -Traceroute

### Port-Scan
Test-NetConnection -ComputerName sid-500.com -Port 443

### Show open ports
Get-NetTCPConnection -State Established,Listen | Sort-Object LocalPort 

# Show neighbors (arp)
Get-NetNeighbor -AddressFamily IPv4