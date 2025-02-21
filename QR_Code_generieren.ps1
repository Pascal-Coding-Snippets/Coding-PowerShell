
# Set-ExecutionPolicy setzen
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

# Modul installieren
Install-Module -Name QRCodeGenerator

# Variablen definieren
$MY_URL = 'https://www.google.com'
$DESTINATION_FILE = 'C:\URL-QR.PNG'

# QR-Code generieren
New-PSOneQRCodeURI -URI $MY_URL -Width 15 -OutPath $DESTINATION_FILE