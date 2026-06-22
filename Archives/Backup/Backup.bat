powershell -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'DesignBackup' -RestorePointType MODIFY_SETTINGS"

start rstrui.exe