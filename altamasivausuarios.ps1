<# Creamos usuarios dede CSV con pass aleatoria y guarda log.

 FORMATO CSV.
 Nombre,Departamento,Descripcion#
 ManuelMalagon,IT,Tecnico de sistemas
 JuanPerez,Ventas,Usuario de ventas
 LuisR,RRHH,Recursos Humanos

.By
    Manuel Malagón

#>




# Configuración de rutas
$rutaCSV = ".\usuarios.csv"
$rutaLog = ".\resultado_alta.txt"

# Contraseña aleatoria
function Generar-Password {
    return -join ((33..126) | Get-Random -Count 12 | % {[char]$_})
}

# Verificamos que existe CSV
if (Test-Path $rutaCSV) {
    $usuarios = Import-Csv $rutaCSV
    
    foreach ($fila in $usuarios) {
        $nombreUsuario = $fila.Nombre
        $descripcion = $fila.Descripcion
        $password = Generar-Password
        
        # Convertimos la contraseña a SecureString 
        $securePassword = ConvertTo-SecureString $password -AsPlainText -Force

        Try {
            # Intentamos crear el usuario
            New-LocalUser -Name $nombreUsuario `
                          -Description $descripcion `
                          -Password $securePassword `
                          -ErrorAction Stop
            
            # Si funciona, escribimos en el log y en pantalla
            $mensaje = "[EXITO] Usuario $nombreUsuario creado. Pass: $password"
            Write-Host $mensaje -ForegroundColor Green
            Add-Content -Path $rutaLog -Value $mensaje
        }
        Catch {
            # Si falla (ej: el usuario ya existe), capturamos el error
            $errorMsg = "[ERROR] No se pudo crear $nombreUsuario. Motivo: $($_.Exception.Message)"
            Write-Host $errorMsg -ForegroundColor Red
            Add-Content -Path $rutaLog -Value $errorMsg
        }
    }
} else {
    Write-Host "El archivo $rutaCSV no existe." -ForegroundColor Red
}