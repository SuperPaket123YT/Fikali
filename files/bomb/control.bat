@echo off
chcp 866
color e
title Control Panel
goto control

:control
%windir%\System32\control.exe
cls
goto control
