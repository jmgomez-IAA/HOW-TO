echo off
REM Multi-Disk install, part 1.
cls

if %0==a:install goto adrive
if %0==A:install goto adrive
if %0==A:INSTALL goto adrive
if %0==b:install goto bdrive
if %0==B:install goto bdrive
if %0==B:INSTALL goto bdrive
if %0==install goto doinstall
if %0==INSTALL goto doinstall
echo Por favor, cambia a la unidad desde la que quieras instalar el juego
echo antes de empezar. Por ejemplo, para instalar desde la unidad A:,
echo Teclea        A:
echo Despus       INSTALL %1
goto End

:adrive
a:
goto doinstall

:bdrive
b:
goto doinstall

:doinstall

if "%1"=="" goto DriveNeeded
if %1==c: goto MakeDir
if %1==C: goto MakeDir
if %1==d: goto MakeDir
if %1==D: goto MakeDir
if %1==e: goto MakeDir
if %1==E: goto MakeDir
if %1==f: goto MakeDir
if %1==F: goto MakeDir
if %1==g: goto MakeDir
if %1==G: goto MakeDir
if %1==h: goto MakeDir
if %1==H: goto MakeDir
if %1==i: goto MakeDir
if %1==I: goto MakeDir
if %1==j: goto MakeDir
if %1==J: goto MakeDir
if %1==k: goto MakeDir
if %1==K: goto MakeDir
if %1==l: goto MakeDir
if %1==L: goto MakeDir
if %1==m: goto MakeDir
if %1==M: goto MakeDir
if %1==n: goto MakeDir
if %1==N: goto MakeDir
if %1==o: goto MakeDir
if %1==O: goto MakeDir
if %1==p: goto MakeDir
if %1==P: goto MakeDir

:InvalidDrive
echo "%1" es un nombre inv lido de unidad. Por favor usa la letra de la
echo unidad seguida de dos puntos:
goto Example

:DriveNeeded
echo Por favor especifica en que unidad quieres instalar "Monkey. Por ejemplo:
:Example
echo 
echo         install c:
goto End

:MakeDir
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                               บ
echo บ                         MONKEY ISLAND                         บ
echo บ                                                               บ
echo บ             Uilidad de instalaciขn en disco duro              บ
echo บ                                                               บ
echo บ                                                               บ
echo บ Este programa instalar  todos los archivos en un directorio   บ
echo บ llamado "MONKEY" en la unidad %1. Si no deseas hacer esto     บ
echo บ pulsa ahora Ctrl-C.                                           บ
echo บ                                                               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %1\MONKEY\*.* goto DirExists
mkdir %1\MONKEY
goto CopyFiles

:DirExists
echo AVISO:    El directorio %1\MONKEY ya existe. Pulsa ahora Ctrl-C si no
echo           quieres sobreescribir el contenido de ese directorio.
echo 
pause
echo 

:CopyFiles
echo Copiando ficheros del "Disco 1" a %1\MONKEY...
copy *.* %1\MONKEY > NUL

if not exist %1\MONKEY\monkey.exe goto InstallError
if not exist %1\MONKEY\_install.bat goto InstallError

%1\MONKEY\_install %1

goto End

:InstallError
echo ERROR:  La instalaciขn de "Monkey Island" en %1\MONKEY no ha tenido xito. Esto puede
echo         deberse a que tu disco duro est lleno. "Monkey Island" necesita  2.880K de
echo         espacio libre como mกnimo.
:End
echo 
