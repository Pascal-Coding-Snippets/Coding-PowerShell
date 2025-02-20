Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
Install-Module -Name QRCodeGenerator
$MY_URL = 'https://www.bluetec.ch'
$DESTINATION_FILE = 'C:\URL-QR.PNG'
New-PSOneQRCodeURI -URI $MY_URL -Width 15 -OutPath $DESTINATION_FILE