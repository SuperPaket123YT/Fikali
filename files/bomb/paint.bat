@echo off
chcp 866
color e
title Paint
goto paint

:paint
%windir%\System32\mspaint.exe
cls
goto paint