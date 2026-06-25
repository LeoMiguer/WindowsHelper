:again
@echo off
set defender=0

for /f %%i in ('powershell -NoProfile -Command "(Get-MpComputerStatus).RealTimeProtectionEnabled"') do (
    if /i "%%i"=="True" set defender=1
)

if "%defender%"=="1" (
color 4f
echo                !!!!
echo             !!!!!!!!!!
echo          !!!!!!!!!!!!!!!!
echo       !!!!!!!!!!!!!!!!!!!!!!
echo    !!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !!!DESATIVE O DEFENDER PRIMEIRO!!!
echo    !!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo       !!!!!!!!!!!!!!!!!!!!!!
echo          !!!!!!!!!!!!!!!!
echo             !!!!!!!!!!
echo                !!!!

timeout 2 /nobreak >null
start windowsdefender://threat/

echo                    ::
echo                    ::
echo                    ::
echo                    ::
echo                 \      /
echo                  \    /
echo                   \  /
echo                    \/
echo ==========================================
echo PRESSIONE QUALQUER TECLA E TENTE NOVAMENTE
echo ==========================================
pause >null
cls
goto again
)

color 0f

set pasta_adobe="C:\Users\%username%\Downloads\Temp\"

echo Processando arquivos Adobe...
echo Copiando arquivos Adobe...
echo Aguarde!

mkdir %pasta_adobe%
timeout 1 /nobreak 
xcopy /h "D:\Archives\AdobeArchives\AdobePack.rar" %pasta_adobe%
xcopy /h "D:\Archives\AdobeArchives\extrator.bat" %pasta_adobe%
timeout 1 /nobreak 
cd /d %pasta_adobe%
start /wait extrator.bat"

timeout 1 /nobreak

del %pasta_adobe%AdobePack.rar
timeout 1 /nobreak >null
del %pasta_adobe%extrator.bat

color a

echo ---------------------
echo ------RELATORIO------
echo ---------------------
cd /d %pasta_adobe%
dir /b
echo ---------------------

timeout 5 /nobreak

exit


