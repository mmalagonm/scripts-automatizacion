# scripts-automatizacion
Alta Masiva de Usuarios Locales desde CSV en Windows.
# 🚀 SysAdmin & Network Automation Toolkit

![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![Profile](https://img.shields.io/badge/Profile-ASIR%20Student-blue)
![Lang](https://img.shields.io/badge/Languages-Python%20%7C%20PowerShell%20%7C%20Bash-orange)

Bienvenido a mi repositorio personal de herramientas de administración (SysAdmin).

Aquí centralizo scripts desarrollados durante mi formación en **ASIR (Administración de Sistemas Informáticos en Red)** con un objetivo claro: **automatizar lo aburrido y auditar la seguridad**.

---

## 🛠️ ¿Qué hay en este repositorio?

Este proyecto recopila soluciones prácticas para problemas reales de administración de sistemas Windows y Linux.

### 1. ⚡ Automatización en Windows (PowerShell)
* **Script:** `AutoUserProvisioning.ps1`
* **Función:** Alta masiva de usuarios locales leyendo desde un fichero `.csv`.
* **Por qué mola:** Genera contraseñas seguras aleatorias automáticamente, las asigna y genera un log de auditoría. Ideal para desplegar entornos de prueba en segundos sin hacer cientos de clics.

### 2. 🛡️ Auditoría de Red (Python)
* **Script:** `SimplePortScanner.py`
* **Función:** Escáner de puertos TCP personalizado usando `socket`.
* **Por qué mola:** Una alternativa ligera a Nmap para diagnósticos rápidos de conectividad. Detecta servicios comunes (SSH, HTTP, RDP, SQL) abiertos en una IP objetivo.

---

## 💻 Stack Tecnológico

| Tecnología | Uso Principal |
| :--- | :--- |
| **Python 3** | Scripting de redes, Sockets, Automatización multiplataforma. |
| **PowerShell** | Administración de Windows Server, Active Directory, Gestión de usuarios. |
| **Bash** | (Próximamente) Scripts para Linux hardening y backups. |

---

## 🚀 Cómo usar estos scripts

### Para el Alta Masiva (PowerShell)
1. Prepara tu archivo `usuarios.csv` (tienes un ejemplo en el repo).
2. Ejecuta con permisos de Administrador:
   ```powershell
   .\AutoUserProvisioning.ps1
