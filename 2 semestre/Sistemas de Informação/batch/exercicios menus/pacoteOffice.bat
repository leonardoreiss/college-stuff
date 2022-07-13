@echo off
title Pacote Office
color 0a

:inicio 
cls
echo.

echo         Pacote Office
echo ==============================
echo [W]ord
echo [E]xcel
echo [A]ccess
echo [P]ower Point
echo [R]etornar ao menu
echo ===============================
echo.

set /p op=Escolha uma Opcao :

if /i %op% == W (goto:word)
if /i %op% == E (goto:excel)
if /i %op% == A (goto:access)
if /i %op% == P (goto:ppt)
if /i %op% == R (call menuPrincipal.bat) else (
      echo.
	  echo -----------------------------
	  echo        Opcao Invalida!
	  echo -----------------------------
	  echo.
	  pause
	  goto:inicio)

:word
start winword.exe
goto:inicio

:excel
start excel.exe
goto:inicio

:access
start msaccess.exe
goto:inicio

:ppt
start powerpnt.exe
goto:inicio




