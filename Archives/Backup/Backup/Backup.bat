@echo off
echo -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo Pressione qualquer tecla para iniciar a criacao do Backup.
echo -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo O Programa vai criar um ponto de restauracao
echo -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo CERTIFIQUE-SE DE QUE TODAS AS OPERACOES FORAM FINALIZADAS!!!
timeout 3
color 0c
pause

powershell -ExecutionPolicy Bypass -Command "Enable-ComputerRestore -Drive 'C:\'"

powershell -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'DesignBackup' -RestorePointType MODIFY_SETTINGS"

start rstrui.exe

exit