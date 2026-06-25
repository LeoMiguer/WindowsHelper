@echo off

set "IMG=C:\Users\%username%\WallpaperDesign.png"

powershell -NoProfile -Command ^
"Add-Type '[DllImport(\"user32.dll\")]public static extern bool SystemParametersInfo(int uAction,int uParam,string lpvParam,int fuWinIni);' -Name Win32 -Namespace API; [API.Win32]::SystemParametersInfo(20,0,'%IMG%',3)"

exit