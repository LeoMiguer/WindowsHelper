@echo off
powershell.exe -ExecutionPolicy Bypass -File "D:\Archives\Windows\AtivarWindowsPowerShell.ps1"

color 5f
echo =====================================
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo =!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=
echo DESABILITE AS ATUALIZACOES DO OFFICE
echo =!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo =====================================
echo -
echo Desabilite e pressione [0] para sair...
echo -

start "" "C:\Program Files\Microsoft Office\root\Office16\WINWORD"

timeout 60

exit