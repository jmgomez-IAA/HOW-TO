REM Multi-Disk install, part 2.

:try2
echo Por favor, inserta "Disco 2" en unidad
cd
pause
echo 
if exist disk02.lec goto docopy2
goto try2

:docopy2
echo Copiando ficheros del "Disco 2" a %1\MONKEY...
copy *.* %1\MONKEY > NUL
if not exist %1\MONKEY\disk02.lec goto InstallError

:try3
echo Por favor, inserta "Disco 3" en unidad
cd
pause
echo 
if exist disk03.lec goto docopy3
goto try3

:docopy3
echo Copiando ficheros del "Disco 3" a %1\MONKEY...
copy *.* %1\MONKEY > NUL
if not exist %1\MONKEY\disk03.lec goto InstallError

:try4
echo Por favor, inserta "Disco 4" en unidad
cd
pause
echo 
if exist disk04.lec goto docopy4
goto try4

:docopy4
echo Copiando ficheros del "Disco 4" a %1\MONKEY...
copy *.* %1\MONKEY > NUL
if not exist %1\MONKEY\disk04.lec goto InstallError

cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ  "Monkey Island" ha sido instalado con xito en tu disco duro.        บ
echo บ                                                                       บ
echo บ  Para jugar "Monkey Island" teclea MONKEY y pulsa ENTER.              บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%1
cd %1\MONKEY
goto End

:InstallError
:InstallError
echo ERROR:  La instalaciขn de "Monkey" en %1\MONKEY no ha tenido xito. Esto puede
echo         deberse a que tu disco duro est  lleno.  "Monkey Island" necesita 2.880K de
echo         espacio libre como mกnimo.
:End
echo 
