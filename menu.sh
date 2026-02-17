#!/bin/bash

# CREO VARIABLE Y LA INICIALIZO A CERO
opcion=0

while [ $opcion -ne 31 ]; do
  clear
  echo "========== MENÚ PRINCIPAL =========="
  echo "1.  Mostrar versión de Linux"
  echo "2.  Crear archivos con nano"
  echo "3.  Crear archivos con gedit"
  echo "4.  Instalar herramientas de red (samba)"
  echo "5.  Instalar herramientas de grupos"
  echo "6.  Visualizar carpetas y archivos"
  echo "7.  Asignar permisos"
  echo "8.  Visualizar calendario"
  echo "9.  Visualizar vaquita simpática"
  echo "10. Manual de un comando"
  echo "11. Mostrar archivos sin posibilidad de editarlos"
  echo "12. Información de un archivo específico"
  echo "13. Vincular archivos (crear enlace simbólico)"
  echo "14. Reiniciar terminal"
  echo "15. Crear carpetas"
  echo "16. Crear archivos"
  echo "17. Crear usuarios"
  echo "18. Crear grupos"
  echo "19. Copiar carpetas"
  echo "20. Eliminar carpeta"
  echo "21. Eliminar archivo"
  echo "22. Agregar un usuario a un grupo"
  echo "23. Listar usuarios"
  echo "24. Listar grupos"
  echo "25. Actualizar el sistema"
  echo "26. Comprimir archivos (.tar.gz)"
  echo "27. Descomprimir archivos (.tar.gz)"
  echo "28. Mostrar procesos activos"
  echo "29. Mostrar configuración de red"
  echo "30. Limpiar caché de APT"
  echo "31. Salir"
  echo "===================================="
  read -p "Selecciona una opción [1-31]: " opcion

  case $opcion in
    1) uname -a ;;
    2) read -p "Nombre del archivo: " f; nano "$f" ;;
    3) echo "SOLO PARA ENTORNO GRAFICO";;
    4) sudo apt install samba -y ;;
    5) sudo apt install libnss3-tools -y ;;
    6) ls -l ;;
    7) read -p "Archivo/carpeta: " f; read -p "Permisos (Ej: 755): " p; chmod $p "$f" ;;
    8) cal ;;
    9) cowsay "¡Hola, soy la vaquita simpática!" ;;
    10) read -p "Comando: " c; man "$c" ;;
    11) read -p "Archivo: " f; cat "$f" ;;
    12) read -p "Archivo: " f; stat "$f" ;;
    13) read -p "Archivo origen: " o; read -p "Nombre enlace: " e; ln -s "$o" "$e" ;;
    14) clear ;;
    15) read -p "Nombre de la carpeta: " d; mkdir "$d" ;;
    16) read -p "Nombre del archivo: " f; touch "$f" ;;
    17) read -p "Nombre del usuario: " u; sudo adduser "$u" ;;
    18) read -p "Nombre del grupo: " g; sudo addgroup "$g" ;;
    19) read -p "Carpeta origen: " o; read -p "Carpeta destino: " d; cp -r "$o" "$d" ;;
    20) read -p "Carpeta a eliminar: " d; rm -r "$d" ;;
    21) read -p "Archivo a eliminar: " f; rm "$f" ;;
    22) read -p "Usuario: " u; read -p "Grupo: " g; sudo usermod -aG "$g" "$u" ;;
    23) compgen -u ;;
    24) compgen -g ;;
    25) sudo apt update && sudo apt upgrade -y ;;
    26) read -p "Nombre del archivo/carpeta a comprimir: " c; tar -czvf "$c.tar.gz" "$c" ;;
    27) read -p "Nombre del archivo .tar.gz: " f; tar -xzvf "$f" ;;
    28) top ;;
    29) ifconfig ;;
    30) sudo apt-get clean; sudo apt-get autoclean ;;
    31) echo "Saliendo..."; sleep 1; clear ;;
    *) echo "Opción inválida."; sleep 1 ;;
  esac
  echo
  read -p "Presiona Enter para continuar..." pausa
done

