@echo off
title Joguinho massa
mode 60,30
color 0a

set /a win = 0
set /a lose = 0
set /a emp = 0
 
:inicio
cls

set /a mqn=(%random% %% 5) + 1

set /a op = 8

echo ======================
echo         Jogo
echo ======================
echo    Vitorias: %win%
echo    Derrotas: %lose%
echo    Empates: %emp%
echo ======================
echo.

echo [1]Spock
echo [2]Tesoura
echo [3]Papel
echo [4]Pedra
echo [5]Lagarto
echo [0]Sair
echo ======================
echo.
set /p op=Escolha sua opcao:

if %op% == 1 (goto:spock)
if %op% == 2 (goto:tesoura)
if %op% == 3 (goto:papel)
if %op% == 4 (goto:pedra)
if %op% == 5 (goto:lagarto)
if %op% == 0 (goto:sair)
   echo.
   echo -----------------------
   echo    Opcao Invalida !
   echo -----------------------
   pause > nul
   goto:inicio

rem -------SPOCK--------

:spock
if %mqn% equ 1 (
		echo.
		echo Spock X Spock
		echo Empate !!
		pause > nul
		set /a emp=%emp% + 1
		goto:inicio
		)
if %mqn% equ 2 (
		echo.
		echo Spock X Tesoura
		echo Spock quebra tesoura
		echo Ganhou !!
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 3 (
		echo.
		echo Spock X Pedra
		echo Spock vaporiza a pedra
		echo Ganhou !!
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 4 (
		echo.
		echo Spock X Papel
		echo Papel refuta o Spock
		echo Perdeu !!
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 5 (
		echo.
		echo Spock X Lagarto
		echo Lagarto envenena Spock
		echo Perdeu !!
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)

rem -------Tesoura--------

:tesoura
if %mqn% equ 1 (
		echo.
		echo tesoura X Spock
		echo Perdeu !!
		echo Spock quebra a tesoura
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 2 (
		echo.
		echo tesoura X Tesoura
		echo Empate !!
		pause > nul
		set /a emp=%emp% + 1
		goto:inicio
		)
if %mqn% equ 3 (
		echo.
		echo tesoura X Pedra
		echo Perdeu !!
		echo A pedra quebra a tesoura
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 4 (
		echo.
		echo tesoura X Papel
		echo Ganhou !!
		echo Tesoura corta o papel
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 5 (
		echo.
		echo tesoura X Lagarto
		echo Ganhou !!
		echo A tesoura mata o lagarto
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)

rem -------Papel--------

:papel
if %mqn% equ 1 (
		echo.
		echo Papel X Spock
		echo Ganhou !!
		echo Papel refuta o Spock
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 2 (
		echo.
		echo Papel X Tesoura
		echo Perde !!
		echo Tesoura corta o papel
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 3 (
		echo.
		echo Papel X Pedra
		echo Ganhou !!
		echo Papel embrulha a Pedra
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 4 (
		echo.
		echo Papel X Papel
		echo Empate !!
		pause > nul
		set /a emp=%emp% + 1
		goto:inicio
		)
if %mqn% equ 5 (
		echo.
		echo Papel X Lagarto
		echo Perde !!
		echo Lagarto come o papel
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)

rem -------Pedra--------

:pedra
if %mqn% equ 1 (
		echo.
		echo Pedra X Spock
		echo Perdeu !!
		echo Spock vaporixa a pedra
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 2 (
		echo.
		echo Pedra X Tesoura
		echo Ganhou !!
		echo Pedra quebra a tesoura
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 3 (
		echo.
		echo Pedra X Pedra
		echo Empate !!
		pause > nul
		set /a emp=%emp% + 1
		goto:inicio
		)
if %mqn% equ 4 (
		echo.
		echo Pedra X Papel
		echo Perdeu !!
		echo Papel embrulha a pedra
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 5 (
		echo.
		echo Pedra X Lagarto
		echo Ganhou !!
		echo Pedra esmaga o lagarto
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)

rem -------Lagarto--------

:lagarto
if %mqn% equ 1 (
		echo.
		echo Lagarto X Spock
		echo Ganhou !!
		echo Lagarto envenena Spock
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 2 (
		echo.
		echo Lagarto X Tesoura
		echo Perdeu !!
		echo Tesoura mata o lagarto
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 3 (
		echo.
		echo Lagarto X Pedra
		echo Perdeu !!
		echo Pedra esmaga lagarto
		pause > nul
		set /a lose=%lose% + 1
		goto:inicio
		)
if %mqn% equ 4 (
		echo.
		echo Lagarto X Papel
		echo Ganhou !!
		echo Lagarto come o papel
		pause > nul
		set /a win=%win% + 1
		goto:inicio
		)
if %mqn% equ 5 (
		echo.
		echo Lagarto X Lagarto
		echo Empate !!
		pause > nul
		set /a emp=%emp% + 1
		goto:inicio
		)

rem -------SAIR--------

:sair
echo.
set /p resp=Deseja realmente sair? [s/n]:
if /i %resp% == s (exit) else (goto:inicio)
