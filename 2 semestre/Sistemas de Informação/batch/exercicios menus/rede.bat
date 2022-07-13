@echo off
title Rede
color 0a

:inicio 
cls
echo.
echo          Redes
echo ==========================
echo [N]avegar internet
echo [T]estar conexao de rede
echo [O]bter IP da maquina
echo [R]etornar ao menu
echo ==========================
echo.

set /p op=Escolha sua opcao:

if /i %op% == N (goto:web)
if /i %op% == T (goto:teste)
if /i %op% == O (goto:ip)
if /i %op% == R (call menuPrincipal.bat) else (
      echo.
	  echo -----------------------------
	  echo        Opcao Invalida!
	  echo -----------------------------
	  echo.
	  pause
	  goto:inicio)

:web
echo.
set /p site=Digite o endereco da pagina web:
start %site%
goto:inicio

:teste
echo.
set /p conexao=Digite o endereco IP ou pagina web:
ping %conexao% -t
goto:inicio

:ip
ipconfig /all
pause
goto:inicio