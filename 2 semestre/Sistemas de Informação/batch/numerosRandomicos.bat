@echo off
title Aula 03 - Exemplos Numeros Randomicos
mode 60,30
color 0a

set /a cont=0

:sorteio 
cls 
set /a numero=(%random% %% 100) + 1
set /a cont=%cont% + 1
echo.
echo ==============================
echo Numero Sorteado: %numero% 
echo Quantidade de Sorteios: %cont%
echo ==============================
echo.

set /p resp= Deseja realizar novo sorteio ? [s/n]: 
if /i %resp% == s (goto:sorteio) else(exit)