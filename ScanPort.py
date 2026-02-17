import socket
import sys
from datetime import datetime

# Pantalla limpita.
print("-" * 50)
print("HERRAMIENTA DE ESCANEO DE PUERTOS - ASIR")
print("-" * 50)

# Pedimos la Ip al usuaio
target = input("Introduce la IP a escanear (ej: 192.168.1.1): ")

# Los típicos (Web, SSH, Telnet, DNS, RDP, SQL)
puertos_comunes = [21, 22, 23, 53, 80, 443, 3306, 3389, 8080]

print(f"\nIniciando escaneo en: {target}")
print(f"Hora de inicio: {str(datetime.now())}")
print("-" * 50)

try:
    for puerto in puertos_comunes:
        # Creamos el objeto socket. AF_INET = IPv4, SOCK_STREAM = TCP
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        
        # Establecemos un timeout de 1 segundo para que no sea eterno.
        s.settimeout(1)
        
        # connect_ex e 0 si hay conex
        resultado = s.connect_ex((target, puerto))
        
        if resultado == 0:
            print(f"[+] Puerto {puerto}: ABIERTO")
        else:
            print(f"[-] Puerto {puerto}: CERRADO")
            
        # Cerramos conex
        s.close()

except KeyboardInterrupt:
    print("\n[!] Salida forzada por el usuario.")
    sys.exit()

except socket.gaierror:
    print("\n[!] No se pudo resolver el nombre del host.")
    sys.exit()

except socket.error:
    print("\n[!] No se pudo conectar al servidor.")
    sys.exit()

print("-" * 50)
print("Escaneo finalizado.")