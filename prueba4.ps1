[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://raw.githubusercontent.com/usuario/repositorio/main/oconsole.exe"
$destino = "$env:TEMP\oconsole.exe"

Invoke-WebRequest -Uri $url -OutFile $destino
Start-Process -FilePath $destino
