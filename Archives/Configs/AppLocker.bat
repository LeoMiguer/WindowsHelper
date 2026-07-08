@echo off

sc config AppIDSvc start=auto
sc start AppIDSvc

powershell -ExecutionPolicy Bypass -Command "Set-AppLockerPolicy -XMLPolicy D:\Archives\Configs\policies.xml -Merge"

gpupdate /force

exit