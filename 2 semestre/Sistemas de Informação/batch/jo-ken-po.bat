@echo off

 
title JO-KEN-PO

mode 50, 50

color 0a

:inicio

echo Digite seu nome:

set /p nome= 

echo     ----------------------------------------

echo.

echo ---------------------------------------------

echo      ----------------------------------

echo       BEM VINDO AO JO-KEN-PO %nome%!!!

echo      ----------------------------------

echo     [1] PEDRA

echo     [2] PAPEL

echo     [3] TESOURA

echo     [4] LAGARTO

echo     [5] SPOCK

echo     [E] ENCERRAR JOGO

echo     [R] REGRAS

echo  ----------------------------------------------

set /p op=     SELECIONE UMA DAS OPCOES PARA INICIAR:

echo  ----------------------------------------------

:rodadas

set /a adversario= (%adversario%)+1
set /a adversario= 0


if /i %op% == 1 (goto:pedra)

:pedra
if %adversario%= pedra (
echo
echo ---------------------------------------------
echo                EMPATOU!!!
echo ---------------------------------------------
) 
if %adversario%= papel (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
)
if %adversario%= tesoura (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
) 
if %adversario%= Lagarto (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
) 
if %adversario%= Spock (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
)

if /i %op% == 2 (goto:papel)
:papel

if %adversario%= papel (
echo
echo ---------------------------------------------
echo                EMPATOU!!!
echo ---------------------------------------------
) 
if %adversario%= pedra (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
)
if %adversario%= tesoura (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
) 
if %adversario%= Spock (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
) 
if %adversario%= lagarto (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
)
if /i %op% == 3 (goto:tesoura)

tesoura:

if %adversario%= tesoura (
echo
echo ---------------------------------------------
echo                EMPATOU!!!
echo ---------------------------------------------
) 
if %adversario%= papel (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
)
if %adversario%= pedra (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
) 
if %adversario%= Lagarto (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
) 
if %adversario%= Spock (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
)

if /i %op% == 4  (goto:Lagarto)

:Lagarto

if %adversario%= Lagarto (
echo
echo ---------------------------------------------
echo                EMPATOU!!!
echo ---------------------------------------------
) 
if %adversario%= papel (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
)
if %adversario%= tesoura (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
) 
if %adversario%= pedra (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
) 
if %adversario%= Spock (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
)

if /i %op% == 5 (goto:Spock)

:Spock

if %adversario%= Spock (
echo
echo ---------------------------------------------
echo                EMPATOU!!!
echo ---------------------------------------------
) 
if %adversario%= papel (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
)
if %adversario%= tesoura (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
) 
if %adversario%= Lagarto (
echo ---------------------------------------------
echo              VOCE PERDEU!!!
echo ---------------------------------------------
) 
if %adversario%= pedra (
echo ---------------------------------------------
echo              VOCE VENCEU!!!
echo ---------------------------------------------
)



if /i %op% == R (goto:regras)

:regras

echo --------------------------------------------------------------------
echo PEDRA:
echo Empata com Pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock;
echo --------------------------------------------------------------------
echo PAPEL:
echo Empata com Papel; Ganha de Pedra e Spock; Perde dr Tesoura e Lagarto;
echo --------------------------------------------------------------------
echo TESOURA:
echo Empata com tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock;
echo --------------------------------------------------------------------
echo LAGARTO:
echo Empata com Lagarto: Ganha de Papel e Spock; Perde de Pedra e Tesoura;
echo --------------------------------------------------------------------
echo SPOCK:
echo Empata com Spock; Ganha de Pedra e Tesoura; Perde de Lagarto e Papel;
echo --------------------------------------------------------------------

pause

(goto:inicio)

if /i %op% == E (goto:sair)

:sair

echo.

set /p resp= Deseja realmente sair? [S/N]:

if /i %resp% == S (exit) else (goto:inicio)


