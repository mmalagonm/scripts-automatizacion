@echo off
title Bienvenidos al menu
:menu
pause
cls
echo Selecciona una de las opciones.
echo 1- www.google.es
echo 2- www.hotmail.es
echo 3- Abrir word
echo 4- Abrir excel
echo 5- Abrir Access
echo 6- Abrir PowerPoint
echo 7- Abrir paint
echo 8- Abrir bloc notas
echo 9- Visualizar IP
echo 10- Limpiar pantalla
echo 11- Visualizar atributos
echo 12- Visualizar hora del sistema
echo 13- Visualizar en arbol
echo 14- **Tirar Dado**
echo 15- Mostrar toda la configuracion de red
echo 16- Mostrar la MAC
echo 17- Informacion del sistema
echo 18- Mostrar estructura de directorios y carpetas
echo 19- Ir a youtube 
echo 20- Ir a chatGPT
echo 21- Entrar en GitHub
echo 22- Abrir Gmail
echo 23- ** Tomate un descanso **
echo 24- ** Colores de Texto **
echo 25- ** Suma **
echo 26- Salir




echo elige una opcion 
set /p variable=
if %variable% ==1 goto opcion1
if %variable% ==2 goto opcion2
if %variable% ==3 goto opcion3
if %variable% ==4 goto opcion4
if %variable% ==5 goto opcion5
if %variable% ==6 goto opcion6
if %variable% ==7 goto opcion7
if %variable% ==8 goto opcion8
if %variable% ==9 goto opcion9
if %variable% ==10 goto opcion10
if %variable% ==11 goto opcion11
if %variable% ==12 goto opcion12
if %variable% ==13 goto opcion13
if %variable% ==14 goto opcion14
if %variable% ==15 goto opcion15
if %variable% ==16 goto opcion16
if %variable% ==17 goto opcion17
if %variable% ==18 goto opcion18
if %variable% ==19 goto opcion19
if %variable% ==20 goto opcion20
if %variable% ==21 goto opcion21
if %variable% ==22 goto opcion22
if %variable% ==23 goto opcion23
if %variable% ==24 goto opcion24
if %variable% ==25 goto opcion25
if %variable% ==26 goto opcion26


:opcion1
start www.google.es
goto menu

:opcion2
start www.hotmail.es
goto menu

:opcion3
start winword.exe
goto menu

:opcion4
start excel.exe
goto menu

:opcion5
start msaccess.exe
goto menu

:opcion6
start powerpnt.exe 
goto menu

:opcion7
start mspaint.exe
goto menu

:opcion8
notepad.exe
goto menu

:opcion9
ipconfig
goto menu

:opcion10
cls
goto menu

:opcion11
attrib
goto menu

:opcion12
time
goto menu

:opcion13
tree
goto menu

:opcion14
cls
echo Tirando dados...
:: Un poco de tiempo para crear intriga
timeout /t 2 /nobreak >nul 
set /a D=%random% %%6 +1
echo. 
echo       RESULTADO: %D% 
echo.
pause
goto :menu

:opcion15
ipconfig /all
goto menu

:opcion16
getmac
goto menu

:opcion17
systeminfo
goto menu

:opcion18
dir
goto menu

:opcion19
start https://www.youtube.com/
goto menu

:opcion20
start https://chat.openai.com/auth/login
goto menu

:opcion21
start https://github.com/
goto menu

:opcion22
start www.gmail.com 
goto menu

:opcion23
echo Iniciando proceso....
for /l %%i in (0,10,100) do (
    echo Descansando: [%%i]%%
    timeout /t 1 /nobreak >nul
)
echo Listo para continuar.
goto menu

:opcion24
cls
echo ######## COLOR ######## 
:disco
color 0A
timeout /t 1 /nobreak >nul
color 0B
timeout /t 1 /nobreak >nul
color 0C
timeout /t 1 /nobreak >nul
color 0E
timeout /t 1 /nobreak >nul
color 07
goto menu

:opcion25
cls
@echo off
echo sumar numeros
echo.
echo.
echo introduce el primer numero
set/p num1=
echo introduce el segundo numero
set/p num2=
set/a cal=(%num1% + %num2%)
echo.
echo la suma es %cal%
goto menu

:opcion26
exit