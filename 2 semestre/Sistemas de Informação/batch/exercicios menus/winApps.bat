@echo off
title Aplicativos do Windows
color 0a

:inicio 
cls
echo.

echo         Aplicativos do Windows
echo ======================================
echo [C]alculadora
echo [T]eclado Virtual
echo [W]indows Explorer
echo [P]aint
echo [B]loco de notas
echo [R]etornar ao menu
echo ======================================
echo.

set /p op=Escolha uma Opcao :

if /i %op% == C (goto:calculo)
if /i %op% == T (goto:teclado)
if /i %op% == W (goto:winExp)
if /i %op% == P (goto:paint)
if /i %op% == B (goto:notes)
if /i %op% == R (call menuPrincipal.bat) else (
      echo.
	  echo -----------------------------
	  echo        Opcao Invalida!
	  echo -----------------------------
	  echo.
	  pause
	  goto:inicio)

:calculo
start calc.exe
goto:inicio

:teclado
start osk.exe
goto:inicio

:winExp
start explorer.exe
goto:inicio

:paint
start mspaint.exe
goto:inicio

:notes
start notepad.exe
goto:inicio