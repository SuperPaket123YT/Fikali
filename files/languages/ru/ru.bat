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
echo �������� ������ ��஫� (�� ����ᠭ � ��� ���堡 ९����ਨ ���� ����� "fikali" � ����� Enter)

echo.
Set /p choice="��஫�: "
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
echo ��� ��� �����?

echo.
Set /p name="���: "
if not defined name goto namet
if "%name%"=="0" (goto hello)
cls
goto hello

:hello
cls
type C:\fikali\files\art.txt
echo.
echo ��ࠢ����, %name%
echo.
timeout /t 3 /nobreak >nul
cls
goto menu

:menu
cls
title Fikali by SuperPaket123YT and help from GGYT :3
type C:\fikali\files\art.txt
echo.
echo %name%, �롥�� ����⢨�:
echo.
echo 1 - �������� �����
echo 2 - ����ன��
echo 3 - ������� ����� �� ��⮧���㧪�
echo 4 - ��������
echo 5 - ���

echo.
Set /p choice="��� �롮�: "
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
echo %name%, �� 㢥७�, �� ��� �������� �����? (y/n)

echo.
Set /p choice="�끮�: "
if not defined choice goto q
if "%choice%"=="y" (goto q2)
if "%choice%"=="n" (goto menu)
cls
goto q1

:q2
cls
type C:\fikali\files\art.txt
echo.
echo ��������� ��������������!!! 
echo �� �ਫ������ �㤥� ��������� �� ������ ��������� ��/��������!!! %name%, �� 㢥७� � ᢮�� ����⢨��? (y/n)

echo.
Set /p choice="�����: "
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
echo ����� Enter �⮡� ������� ��.
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
echo ����� �� ��⮧���㧪� 㤠��
echo.
echo ��� �த������� ������ Enter...
pause >nul
goto menu

:setng
cls
type C:\fikali\files\art.txt
echo.
echo %name%, �롥�� �㭪�:
echo.
echo 1 - �������� 梥� ⥪��
echo 2 - ����� ���������� (᪮�)
echo 3 - �����

echo.
Set /p choice="�롮�: "
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
echo %name%, �롥�� 梥� ⥪��
echo.
echo 1 - ����
echo 2 - �����
echo 3 - ����
echo 4 - ���㡮�
echo 5 - �����
echo 6 - ����
echo 7 - ����
echo 8 - ��� � ��������� ��ப�
echo 9 - �� ������� ���� ����! ����� �������!
echo 10 - �����

echo.
Set /p choice="�롮�: "
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
echo � �� ����ᠫ "(᪮�)". �� ������!
echo.
echo ��� �����饭�� � ���� ������ Enter
pause >nul
goto setng

:exit
cls
type C:\fikali\files\art.txt
echo.
echo %name%, �� �筮 ��� ���? (y/n)

echo.
Set /p choice="�롮�: "
if not defined choice goto exit
if "%choice%"=="y" (goto exwt)
if "%choice%"=="n" (goto menu)
cls
goto exit

:exwt
cls
type C:\fikali\files\art.txt
echo.
echo �������� ��������...
timeout /t 5 /nobreak >nul
del C:\temp_fikali /s /q
exit

:hlp
cls
type C:\fikali\files\art.txt
echo.
echo !!!FIKALI, ��� ����� ������� ����� ��������� ���� ������� �� ����, ��� �� �� ������� �� ������������!!! 
echo.
echo ��������:
echo.
echo ����� �� ��諨 � ����䥩� �ਫ������ �� ����� 5 ���祪 �롮�:
echo.
echo 1 - �������� �����
echo 2 - ����ன��
echo 3 - ������� ����� �� ��⮧���㧪�
echo 4 - �������� (�� ����)
echo 5 - ���
echo.
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 1: "�������� �����"
echo.
echo �᫨ �� �롥�� "1 - �������� �����", � ������� 2 �।�०����� � ⮬, 
echo �� ��१���㧪� �������� ��� �� �������, ⠪ ��� ��� ����� �ய��뢠���� � ��⮧���㧪�. 
echo ��⥬ ������� ᯠ� ࠧ�묨 �ਫ�����ﬨ � ��������� ��㧥�, ��� ������ ���୥� �� �㦥�.
echo ��᫥ ��१���㧪� �� ����� ��� �������. ��襭�� �⮣� ᬮ��� � �㭪� 3
echo. 
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 2: "����ன��"
echo.
echo ����� �� ��諨 � "����ன��" ���� �㭪��:
echo.
echo 1 - �������� 梥� ⥪��
echo 2 - ����� ���������� (�� ᪮�)
echo 3 - �����
echo.
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 2.1: "�������� 梥� ⥪��"
echo.
echo ����� �� �롥�� ��� �㭪�, ������� 梥� �� �롮�, ⠪�� ��� ����, �����, ᨭ��, ���㡮�, ����� � �.�.
echo.
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 2.2: "����� ����������"
echo.
echo �� �� ࠡ�⠥� ���� ��. ��祬 ��� ���� ����� ��������?
echo.
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 2.3: "�����"
echo.
echo ��ࠢ ��� �㭪�, �� ������� � ������� ���� �ਫ������.
echo.
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 3: "������� ����� �� ��⮧���㧪�"
echo.
echo ����� �� �롥�� ��� �㭪� ����� �� �㤥� ����㦠���� �� ����祭�� ��
echo.
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 4: "��������" (�� ����)
echo.
echo ��祬 �� �⠥�� �������� ��� ������樨?
echo.
echo ����� ����� (������ Enter)
pause >nul
cls
type C:\fikali\files\art.txt
echo.
echo �㭪� 5: "���"
echo.
echo ����� �� �롥�� ��� �㭪�, �ਫ������ � ��� ���� "�� �筮 ��� ���?".
echo �᫨ �� ������ "y" � Enter, � �ਫ������ 㤠���� �६���� 䠩�� � ���஥���.
echo.
echo ����� ������樨
echo.
echo ��� �����饭�� � ���� ������ Enter...
pause >nul
goto menu

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)
