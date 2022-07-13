@echo off
title - Aula 01 (SISTEMAS DE INFORMACAO)
rem comentario 
mode 60 ,30
color 0a
:inicio 
cls
echo.
echo            ( o o )
echo ========ooO==(_)==Ooo======
echo         Menu Principal
echo [1] Executar word
echo [2] Executar Excel
echo [3] Executar PowerPoint
echo [4] Teclado Virtual
echo [5] Calculadora
echo [6] Navegar Web
echo [7] Testar Conexao Rede
echo [8] Encerrar o Programa
echo ==========================
echo.
set /p op=Escolha sua opcao:

if %op% == 1 (goto:texto)
if %op% == 2 (goto:planilha)
if %op% == 3 (goto:slides)
if %op% == 4 (goto:teclado)
if %op% == 5 (goto:calculo)
if %op% == 6 (goto:web)
if %op% == 7 (goto:teste)
if %op% == 8 (goto:sair) else (
   echo.
   echo -----------------------
   echo    Opcao Invalida !
   echo -----------------------
   pause > nul
   goto inicio)

:texto
start winword.exe
goto inicio

:planilha
start excel.exe
goto inicio 

:slides
start powerpnt.exe
goto inicio 

:teclado
start osk.exe
goto inicio 

:calculo
start calc.exe
goto inicio 

:web
echo.
set /p site=Digite o endereco da pagina:
start %site%
goto inicio

:teste
echo.
set /p testar= Digite o IP da maquina ou endereco da pagina:
ping %testar% -t 
goto inicio

:sair
echo.
set /p resp=Deseja realmente sair? [s/n]:
if /i %resp% == s (exit) else (goto:inicio)




