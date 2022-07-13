@echo off
title Menu Principal
color 0a

:inicio 
cls
echo.
echo       Menu Principal
echo ==========================
echo [P]acote Office
echo [S]ervicos de rede
echo [A]plicativos Windows
echo [E]ncerrar sessao
echo [F]inalizar programa
echo ==========================
echo.
set /p op=Escolha sua opcao:

if /i %op% == P (goto:office)
if /i %op% == S (goto:rede)
if /i %op% == A (goto:win)
if /i %op% == E (goto:logOff)
if /i %op% == F (goto:sair)
   echo.
   echo -----------------------
   echo    Opcao Invalida !
   echo -----------------------
   pause > nul
   goto inicio)

:office
call pacoteOffice.bat

:rede
call rede.bat

:win
call winApps.bat

:logOff
call login.bat

:sair
echo.
set /p resp=Deseja realmente sair? [s/n]:
if /i %resp% == s (exit) else (goto:inicio)