@echo off
:inicio
echo ==================================
echo      Bienvenido a Mi Bash Menu
echo ==================================
echo 1. Abrir Microsoft Word
echo 2. Abrir Microsoft Excel
echo 3. Abrir Página de la Universidad Javeriana Cali
echo 4. Abrir Página Favorita
echo 5. Reproducir Video Musical Favorito 1
echo 6. Reproducir Video Musical Favorito 2
echo 7. Salir
echo ==================================
set /p opcion=Elige una opcion (1-7): 

if %opcion%==1 goto abrirWord
if %opcion%==2 goto abrirExcel
if %opcion%==3 goto abrirJaveriana
if %opcion%==4 goto abrirFavorito
if %opcion%==5 goto videoFavorito1
if %opcion%==6 goto videoFavorito2
if %opcion%==7 goto buscarGoogle
if %opcion%==8 goto salir

rem Manejar opciones inválidas
echo Opción inválida, intenta de nuevo.
goto inicio

:abrirWord
echo Iniciar Microsoft Word
start "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk"
goto inicio

:abrirExcel
echo Iniciar Microsoft Excel 
start "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk"
goto inicio

:abrirJaveriana
echo Acceder a la página web de la Universidad Javeriana Cali
start https://www.javerianacali.edu.co/
goto inicio

:abrirFavorito
echo Abriendo tu página favorita...
start https://www.codedex.io/home
goto inicio

:videoFavorito1
echo Reproduciendo Thnks fr th Mmrs - Fall Out Boy ...
start https://youtu.be/onzL0EM1pKY?si=TRaEU9j_bVZo7RaV
goto inicio

:videoFavorito2
echo Reproduciendo Stay Alive  Rie Takanashi...
start https://youtu.be/YmcMN6ZKPK8?si=SqlUmoIbqMvonyq5
goto inicio

:buscarGoogle
set /p busqueda=Escribe lo que quieres buscar en Google: 
set busqueda=%busqueda: =+%
start "" "https://www.google.com/search?q=%busqueda%"
goto inicio

:salir
echo Saliendo del programa...
exit
:salir
goto inicio