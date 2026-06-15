@echo off

set "IMG=C:\Users\%username%\WallpaperDesign.png"

:: Área de trabalho
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%IMG%" /f >nul

powershell -NoProfile -Command ^
"Add-Type '[DllImport(\"user32.dll\")]public static extern bool SystemParametersInfo(int uAction,int uParam,string lpvParam,int fuWinIni);' -Name Win32 -Namespace API; [API.Win32]::SystemParametersInfo(20,0,'%IMG%',3)"

:: Tela de bloqueio
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f >nul

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" ^
 /v LockScreenImage ^
 /t REG_SZ ^
 /d "%IMG%" ^
 /f >nul

exit