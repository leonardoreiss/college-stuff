@echo off
title - LOGIN
mode 60,30
color 0a

:inicio
cls

echo ======================
echo         Login
echo ======================
echo.

set /p user=usuario: 
set /p key=senha: 

if /i %user% equ FATEC (goto:testeSenha) else (goto:msgErro)

:testeSenha
if %key% equ 123 (call menuPrincipal.bat) else (goto:msgErro)

:msgErro
echo.
echo ======================
echo  DADOS INCORRETOS !!!
echo ======================
echo.
pause
goto:inicio