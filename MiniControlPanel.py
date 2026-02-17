import psutil
import time
import os
import sys

def limpiar_pantalla():
    # Detectar sistema y limpiar la consola
    if os.name == 'nt': # Windows
        os.system('cls')
    else: # Linux/Mac
        os.system('clear')

def crear_barra(porcentaje):
    # Crea una barra visual de progreso del tipo [|||||     ]
    cantidad = int(porcentaje / 10) # 1 barra por cada 10%
    barra = "█" * cantidad + "-" * (10 - cantidad)
    return f"[{barra}] {porcentaje}%"

def obtener_info():
    try:
        while True:
            limpiar_pantalla()
            
            print("=" * 40)
            print("   MONITOR DE SISTEMA - ASIR TOOL v1.0")
            print("=" * 40)
            print(f"Sistema: {os.name.upper()} | Nucleos CPU: {psutil.cpu_count()}")
            print("-" * 40)

            # 1. CPU
            cpu_uso = psutil.cpu_percent(interval=1)
            print(f"CPU UAGE:  {crear_barra(cpu_uso)}")

            # 2.  RAM
            ram = psutil.virtual_memory()
            ram_uso = ram.percent
            # bytes a GB
            ram_total_gb = round(ram.total / (1024**3), 2)
            ram_usada_gb = round(ram.used / (1024**3), 2)
            
            print(f"MEMORIA:   {crear_barra(ram_uso)} ({ram_usada_gb}GB / {ram_total_gb}GB)")

            # 3. HD (Partición principal)            
            ruta_disco = "C:\\" if os.name == 'nt' else "/"
            disco = psutil.disk_usage(ruta_disco)
            disco_uso = disco.percent
            disco_total_gb = round(disco.total / (1024**3), 2)
            
            print(f"DISCO ({ruta_disco}): {crear_barra(disco_uso)} Total: {disco_total_gb} GB")
            
            print("-" * 40)
            print("Presiona CTRL + C para salir...")
            
            # Una paradita de 4 seg ya que de lo contario satura.
            time.sleep(4.0)

    except KeyboardInterrupt:
        print("\n\n[!] Monitor detenido por el usuario.")
        sys.exit()
    except Exception as e:
        print(f"\n[Error] {e}")

if __name__ == "__main__":
    print("Iniciando monitor...")
    obtener_info()