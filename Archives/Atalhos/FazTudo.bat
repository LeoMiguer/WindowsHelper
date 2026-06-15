@echo off

set confirma=N

set op01=Finalizador [Wallpaper + icones]
set op02=Instalar Adobe
set op03=Instalar Programas
set op04=Ativar Windows/Office
set op05=Instalar Office

set f05="D:\Archives\Atalhos\AtalhoInsOffice"
set f04="D:\Archives\Atalhos\AtalhoAtiWin"
set f03="D:\Archives\Atalhos\AtalhoProgramas"
set f022="D:\Archives\Atalhos\AtalhoAtiAdobe"
set f021="D:\Archives\Atalhos\AtalhoInsAdobe"
set f01="D:\Archives\Atalhos\AtalhoFinalizador"

:again
cls
color 0e
mode con cols=48 lines=15

echo ===============================================
echo          WINDOWS HELPER - By LeoMiguer        
echo -----------------------------------------------
echo ===============================================
echo + [1] - %op01%
echo + [10] - %op02%
echo + [100] - %op03%
echo + [1000] - %op04%
echo + [10000] - %op05%
echo ===============================================

set /p opcao=Digite a soma das opcoes desejadas= 
set backup=%opcao%

cls
echo ===============================================
echo OPCOES SELECIONADAS:
echo VVV

:executa


set /a operacao=%opcao%/10000
if %operacao%==1 (
echo -%op05%
if /i %confirma%==s (
start /wait "" %f05%
echo Instalando Office...
echo Espere a Instalacao terminar.
timeout 30 /nobreak >null
pause
)
set /a opcao=%opcao%-10000
)

set /a operacao=%opcao%/1000
if %operacao%==1 (
echo -%op04%
if /i %confirma%==s (
start /wait "" %f04%
echo Rodou!
)
set /a opcao=%opcao%-1000
)

set /a operacao=%opcao%/100
if %operacao%==1 (
echo -%op03%
if /i %confirma%==s (
start /wait "" %f03%
echo Rodou!
)
set /a opcao=%opcao%-100
)

set /a operacao=%opcao%/10
if %operacao%==1 (
echo -%op02%
if /i %confirma%==s (
::start /wait "" %f021%
start /wait "" %f022%
echo Rodou!
)
set /a opcao=%opcao%-10
)

set /a operacao=%opcao%/1
if %operacao%==1 (
echo -%op01%
if /i %confirma%==s (
start /wait "" %f01%
echo Rodou!
)
set /a opcao=%opcao%-1
)


if /i %confirma%==s (goto fim)


echo ==============================
echo   ----- CONFIRMA (S/N) -----
echo ==============================

set /p confirma=Digite (S/N)= 

if /i %confirma%==s (
color 0b
set opcao=%backup%
goto executa
) else (goto again)


:fim
exit