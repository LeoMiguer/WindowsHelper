@echo off

set confirma=N

set op01=CriarBackup
set op02=Configs [User,Screen,DNS]
set op03=Wallpaper + icones
set op04=Instalar Adobe
set op05=Instalar Programas
set op06=Ativar Windows/Office
set op07=Instalar Office

set f07="D:\Archives\Atalhos\AtalhoInsOffice"
set f06="D:\Archives\Atalhos\AtalhoAtiWin"
set f05="D:\Archives\Atalhos\AtalhoProgramas"
set f042="D:\Archives\Atalhos\AtalhoAtiAdobe"
set f041="D:\Archives\Atalhos\AtalhoInsAdobe"
set f03="D:\Archives\Atalhos\AtalhoWallpaper"
set f02="D:\Archives\Atalhos\AtalhoConfigs"
set f01="D:\Archives\Atalhos\AtalhoBackup"

:again
cls
color 0e
mode con cols=48 lines=15

echo ===============================================
echo      DESIGN WINDOWS HELPER - By Prof. Leo
echo -----------------------------------------------
echo ===============================================
echo + [1] - %op01%
echo + [10] - %op02%
echo + [100] - %op03%
echo + [1000] - %op04%
echo + [10000] - %op05%
echo + [100000] - %op06%
echo + [1000000] - %op07%
echo ===============================================

set /p opcao=Digite a soma das opcoes desejadas= 
set backup=%opcao%

cls
echo ===============================================
echo OPCOES SELECIONADAS:
echo VVV

:executa

if /i %confirma%==s (
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
)

set /a operacao=%opcao%/1000000
if %operacao%==1 (
echo -%op07%
if /i %confirma%==s (
start /wait "" %f07%
echo Instalando Office...
echo Espere a Instalacao terminar.
timeout 30 /nobreak >null
pause
echo Rodou!
)
set /a opcao=%opcao%-1000000
)

set /a operacao=%opcao%/100000
if %operacao%==1 (
echo -%op06%
if /i %confirma%==s (
start /wait "" %f06%
echo Rodou!
)
set /a opcao=%opcao%-100000
)

set /a operacao=%opcao%/10000
if %operacao%==1 (
echo -%op05%
if /i %confirma%==s (
start /wait "" %f05%
echo Rodou!
)
set /a opcao=%opcao%-10000
)

set /a operacao=%opcao%/1000
if %operacao%==1 (
echo -%op04%
if /i %confirma%==s (
start /wait "" %f041%
start /wait "" %f042%
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
start /wait "" %f02%
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

cls
color 0a

echo ===============================================
echo      Operacoes Concluidas com sucesso!
echo -----------------------------------------------
echo ===============================================
set /p finalizar=Deseja Finalizar (S/N)=

if /i %finalizar%==n (
set confirma=N
goto again
)
 
exit