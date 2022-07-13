@echo off
title Advinhando numeros
mode 60,30
color 0a

:inicio

set /a cont = 5
set /a sort = (%random% %% 50) + 1

:jogo
cls

echo.
echo =========================================
echo ADIVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo -----------------------------------------
echo  Quantidade de tentativas: %cont%
echo -----------------------------------------
echo =========================================

echo.
set /p tenta= DIGITE O SEU PALPITE: 

if %cont% equ 0 (goto:perdeu)
if %tenta% equ %sort% (goto:ganhou)	  
if %tenta% lss %sort% (goto:maior)
if %tenta% gtr %sort% (goto:menor)

:perdeu
echo.
echo  _________________________
echo.
echo         Vc perdeu!!!      
echo    O numero era: %sort%  
echo  _________________________ 
echo.
set /p a= Deseja jogar novamente ? [S/N]:
if /i %a% equ s (goto:inicio) else (exit)

:ganhou
echo.
echo _________________________________
echo.
echo          Voce acertou !!!!
echo _________________________________
echo.
set /p esc= Deseja jogar novamente ? [S/N]:
if /i %esc% equ s (goto:inicio) else (exit)

:maior
echo.
echo _________________________________
echo.
echo      Digite um numero maior!!!
echo _________________________________
pause > nul
set /a cont=%cont% - 1
goto:jogo

:menor
echo.
echo _________________________________
echo.
echo     Digite um numero menor!!!
echo _________________________________
pause > nul
set /a cont=%cont% - 1
goto:jogo