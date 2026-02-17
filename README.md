# 🚀 SysAdmin & Network Automation Toolkit

![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![Profile](https://img.shields.io/badge/Profile-ASIR%20Student-blue)
![Lang](https://img.shields.io/badge/Languages-Python%20%7C%20PowerShell%20%7C%20Bash%20%7C%20Batch-orange)

Bienvenido a mi repositorio personal de herramientas de administración (SysAdmin).

Aquí centralizo scripts desarrollados durante mi formación en **ASIR (Administración de Sistemas Informáticos en Red)** con un objetivo claro: **automatizar lo aburrido, gestionar sistemas y auditar redes**.

---

## 🛠️ Colección de Herramientas

Este proyecto recopila soluciones prácticas para problemas reales de administración en entornos híbridos (Windows/Linux).

### 1. 🐧 Administración Linux (Bash)
* **Script:** `menu.sh`
* **Función:** Menú interactivo "Todo en Uno" para gestión de servidores Linux.
* **Por qué mola:** Centraliza más de 30 comandos esenciales en una sola interfaz. Permite desde instalar servicios (Samba), gestionar usuarios y permisos (`chmod`), hasta visualizar procesos y comprimir archivos `.tar.gz`.
* **Comandos clave:** `useradd`, `chmod`, `tar`, `apt`, `samba`.

### 2. 🪟 Windows Tools & Legacy (Batch)
* **Script:** `menu2.bat`
* **Función:** Lanzador de utilidades y herramientas de diagnóstico para Windows.
* **Por qué mola:** Automatiza el acceso a herramientas ofimáticas (Word, Excel) y de red. Incluye lógica de programación con `goto` para crear bucles, una calculadora básica integrada y selectores de color para la terminal.
* **Comandos clave:** `ipconfig`, `getmac`, `start`, `attrib`, `set /a`.

### 3. ⚡ Automatización Windows (PowerShell)
* **Script:** `AutoUserProvisioning.ps1`
* **Función:** Alta masiva de usuarios locales leyendo desde un fichero `.csv`.
* **Por qué mola:** Genera contraseñas seguras aleatorias automáticamente, las asigna y genera un log de auditoría. Ideal para desplegar entornos de prueba en segundos.

### 4. 🛡️ Auditoría de Red (Python)
* **Script:** `SimplePortScanner.py`
* **Función:** Escáner de puertos TCP personalizado usando `socket`.
* **Por qué mola:** Una alternativa ligera a Nmap para diagnósticos rápidos de conectividad. Detecta servicios comunes (SSH, HTTP, RDP, SQL) abiertos en una IP objetivo.

### 5. 📊 Monitor de Recursos (Python)
* **Script:** `monitor_sistema.py`
* **Dependencias:** `psutil`
* **Función:** Panel de control en tiempo real (CLI) que visualiza el estado del servidor.
* **Por qué mola:** Muestra gráficas ASCII del uso de CPU, RAM y Disco duro. Esencial para detectar cuellos de botella en servidores sin interfaz gráfica.

---

## 💻 Stack Tecnológico

| Tecnología | Uso Principal |
| :--- | :--- |
| **Python 3** | Scripting de redes, Sockets, Dashboarding de recursos. |
| **Bash** | Administración de servidores Linux, paquetería y permisos. |
| **PowerShell** | Administración de Windows Server, Active Directory. |
| **Batch (.bat)** | Scripting legacy, automatización de tareas básicas y lanzadores. |

---

## 🚀 Cómo usar estos scripts

### Para el Menú Linux (Bash)
1. Da permisos de ejecución:
   ```bash
   chmod +x menu.sh
Ejecuta el menú:

Bash
./menu.sh
Para el Menú Windows (Batch)
Simplemente haz doble clic en menu2.bat o ejecútalo desde CMD.

Para las herramientas Python
Instala dependencias (si aplica):

Bash
pip install psutil
Lanza el script:

Bash
python monitor_sistema.py
📈 Roadmap (Próximas mejoras)
[ ] Añadir soporte para Active Directory en el script de PowerShell.

[ ] Implementar multihilo (threading) en el escáner Python para mayor velocidad.

[x] Completado: Añadir scripts de gestión básica para Linux y Windows.

📫 Contacto
Desarrollado por Manuel Malagón Mayoral.

