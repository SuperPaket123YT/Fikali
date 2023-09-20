@echo off
call :Adm
chcp 866
color e
title Explorer
goto explorer

:explorer
explorer.exe
cls
goto explorer