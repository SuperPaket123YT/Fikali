@echo off
call :Adm
chcp 866
color e
ver | find "5.0" >nul && exit
cls
goto pwd

:pwd
cls
title Password...
type C:\fikali\files\art.txt
echo.
echo Пожалуйста введите пароль (он написан в моём гитхаб репозитории либо напиши "fikali" и нажми Enter)

echo.
Set /p choice="Пароль: "
if not defined choice goto pwd
if "%choice%"=="fiksuprpak" (goto namet)
if "%choice%"=="fikali" (goto pass)
cls
goto pwd

:pass
cls
start C:\fikali\files\pass.txt
goto pwd

:namet
cls
type C:\fikali\files\art.txt
echo.
echo Как вас зовут?

echo.
Set /p name="Имя: "
if not defined name goto namet
if "%name%"=="0" (goto hello)
cls
goto hello

:hello
cls
type C:\fikali\files\art.txt
echo.
echo Здравствуйте, %name%
echo.
timeout /t 3 /nobreak >nul
cls
goto menu

:menu
cls
title Fikali by SuperPaket123YT and help from GGYT :3
type C:\fikali\files\art.txt
echo.
echo %name%, выберите действие:
echo.
echo 1 - Запустить вирус
echo 2 - Настройки
echo 3 - Удалить вирус из автозагрузки
echo 4 - Инструкция
echo 5 - Выйти

echo.
Set /p choice="Ваш выбор: "
if not defined choice goto menu
if "%choice%"=="1" (goto q1)
if "%choice%"=="2" (goto setng)
if "%choice%"=="3" (goto drs)
if "%choice%"=="4" (goto hlp)
if "%choice%"=="5" (goto exit)
cls
goto menu

:q1
cls
type C:\fikali\files\art.txt
echo.
echo %name%, вы уверены, что хотите запустить вирус? (y/n)

echo.
Set /p choice="ВыБоР: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto menu)
cls
goto q1

:q2
cls
type C:\fikali\files\art.txt
echo.
echo ПОСЛЕДНЕЕ ПРЕДУПРЕЖДЕНИЕ!!! 
echo Это приложение будет включаться при КАЖДОМ ВКЛЮЧЕНИИ ПК/НОУТБУКА!!! %name%, вы уверены в своих действиях? (y/n)

echo.
Set /p choice="ВЫБОР: "
if not defined choice goto q2
if "%choice%"=="y" (goto strt)
if "%choice%"=="n" (goto menu)

:strt
cls
start C:\fikali\files\bomb\startall.bat
cls
goto stop

:stop
cls
type C:\fikali\files\art.txt
echo.
echo Нажми Enter чтобы закрыть все.
pause >nul
taskkill /IM cmd.exe /F
taskkill /IM conhost.exe /F
exit

:drs
cls
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v iexplore /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v calc /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v explorer /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v paint /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v notepad /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v control /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v ramspam /f
cls
type C:\fikali\files\art.txt
echo.
echo Вирус из автозагрузки удалён
echo.
echo Для продолжения нажмите Enter...
pause >nul
goto menu

:setng
cls
type C:\fikali\files\art.txt
echo.
echo %name%, выберите пункт:
echo.
echo 1 - Поменять цвет текста
echo 2 - Центр обновлений
echo 3 - Назад

echo.
Set /p choice="Выбор: "
if not defined choice goto setng
if "%choice%"=="1" (goto color)
if "%choice%"=="2" (goto updcenter)
if "%choice%"=="3" (goto menu)
cls
goto setng

:color
cls
type C:\fikali\files\art.txt
echo.
echo %name%, выберите цвет текста
echo.
echo 1 - Красный
echo 2 - Зелёный
echo 3 - Жёлтый
echo 4 - Голубой
echo 5 - Синий
echo 6 - Чёрный
echo 7 - Белый
echo 8 - Как в командной строке
echo 9 - НЕ ВЫБИРАЙ ЭТОТ ЦВЕТ! ГЛАЗА ВЫТЕКУТ!
echo 10 - Назад

echo.
Set /p choice="Выбор: "
if not defined choice goto color
if "%choice%"=="1" (goto red)
if "%choice%"=="2" (goto green)
if "%choice%"=="3" (goto yellow)
if "%choice%"=="4" (goto cyan)
if "%choice%"=="5" (goto blue)
if "%choice%"=="6" (goto black)
if "%choice%"=="7" (goto white)
if "%choice%"=="8" (goto cmd)
if "%choice%"=="9" (goto myeyes)
if "%choice%"=="10" (goto setng)
cls
goto color

:red
cls
color c
goto menu

:green
cls
color 2
goto menu

:yellow
cls
color e
goto menu

:cyan
cls
color b
goto menu

:blue
cls
color 1
goto menu

:black
cls
color f0
goto menu

:white
cls
color f
goto menu

:cmd
cls
color 7
goto menu

:myeyes
cls
color ae
goto menu

:updcenter
cls
type C:\fikali\files\art.txt
echo.
echo %name%, вы хотите проверить обновления? (y/n)
echo.

Set /p upd="Ваш выбор: "
if not defined upd goto updcenter
if "%upd%"=="y" (goto updchk)
if "%upd%"=="n" (goto setng)
cls
goto updcenter

:updchk
cls
del C:\temp_fikali\ver.txt
bitsadmin.exe /transfer "GGYT" https://raw.githubusercontent.com/SuperPaket123YT/Fikali/fikali/ver.txt C:\temp_fikali\ver.txt >nul
cd C:\temp_fikali
find /I ver.txt "2.0" >nul
if %errorlevel% equ 0 (
  goto updno
) else (
    goto updfind
  )
goto updchk

:updfind
cls
type C:\fikali\files\art.txt
echo.
echo Обновление найдено. Скачать? (y/n)
echo.

Set /p updd="Ваш выбор: "
if not defined updd goto updfind
if "%updd%"=="y" (goto upddown)
if "%updd%"=="n" (goto setng)
cls
goto updfind

:upddown
cls
type C:\fikali\files\art.txt
echo.
echo Скачивание...
bitsadmin.exe /transfer "GGYT" https://github.com/SuperPaket123YT/Fikali/releases/download/fikalivirus/Fikali.exe C:\temp_fikali\Fikali.exe >nul
cls
type C:\fikali\files\art.txt
echo.
echo Скачивание завершено. Установка....
timeout /t 5 /nobreak
start C:\temp_fikali\Fikali.exe
exit

:updno
type C:\Fikali\files\art.txt
echo.
echo У вас установлена последняя версия.
echo.
echo Нажмите Enter для возвращения в меню...
pause >nul
goto setng

:exit
cls
type C:\fikali\files\art.txt
echo.
echo %name%, вы точно хотите выйти? (y/n)

echo.
Set /p choice="Выбор: "
if not defined choice goto exit
if "%choice%"=="y" (goto exwt)
if "%choice%"=="n" (goto menu)
cls
goto exit

:exwt
cls
type C:\fikali\files\art.txt
echo.
echo Пожалуйста подождите...
timeout /t 5 /nobreak >nul
del C:\temp_fikali /s /q
exit

:hlp
cls
type C:\fikali\files\art.txt
echo.
echo !!!FIKALI, ЭТО ВИРУС КОТОРЫЙ МОЖЕТ НАГРУЗИТЬ ВАШУ СИСТЕМУ ДО ТОГО, ЧТО ВЫ НЕ СМОЖЕТЕ ЕЙ ПОЛЬЗОВАТЬСЯ!!! 
echo.
echo Инструкция:
echo.
echo Когда вы пришли в интерфейс приложения вы видите 5 строчек выбора:
echo.
echo 1 - Запустить вирус
echo 2 - Настройки
echo 3 - Удалить вирус из автозагрузки
echo 4 - Инструкция (это окно)
echo 5 - Выйти
echo.
echo Читать дальше (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 1: "Запустить вирус"
echo.
echo Если вы выберите "1 - Запустить вирус", то появятся 2 предупреждения о том, 
echo что перезагрузка компьютера вам не поможет, так как этот вирус прописывается в автозагрузку. 
echo Затем начнётся спам разными приложениями и вкладками браузера, для которых Интернет не нужен.
echo После перезагрузки ПК опять всё начнётся. Решение этого смотрите в пункте 3
echo. 
echo Читать дальше (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 2: "Настройки"
echo.
echo Когда вы зашли в "Настройки" будут пункты:
echo.
echo 1 - Поменять цвет текста
echo 2 - Центр обновлений (не скоро)
echo 3 - Назад
echo.
echo Читать дальше (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 2.1: "Поменять цвет текста"
echo.
echo Когда вы выберите этот пункт, появятся цвета на выбор, такие как красный, желтый, синий, голубой, зелёный и т.д.
echo.
echo Читать далее (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 2.2: "Центр обновлений"
echo.
echo Он не работает пока что. Зачем для него писать инструкцию?
echo.
echo Читать далее (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 2.3: "Назад"
echo.
echo Выбрав этот пункт, вы вернётесь в главное меню приложения.
echo.
echo Читать далее (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 3: "Удалить вирус из автозагрузки"
echo.
echo Когда вы выберите этот пункт вирус не будет загружаться при включении ПК
echo.
echo Читать дальше (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 4: "Инструкция" (это окно)
echo.
echo Зачем ты читаешь инструкцию для инструкции?
echo.
echo Читать дальше (нажмите Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Пункт 5: "Выйти"
echo.
echo Когда вы выберите этот пункт, приложение у вас спросит "Вы точно хотите выйти?".
echo Если вы нажмёте "y" и Enter, то приложение удалить временные файлы и закроется.
echo.
echo Конец инструкции
echo.
echo Для возвращения в меню нажмите Enter...
pause >nul
goto menu

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)
