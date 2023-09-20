@echo off
chcp 866
title Calc
color e
cls
goto calc

:calc
%windir%\System32\calc.exe
cls
goto calc
