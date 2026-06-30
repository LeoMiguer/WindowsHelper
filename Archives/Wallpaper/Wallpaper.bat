@echo off

set username=Design
set userprofile=C:\Users\Design\
set "IMG=C:\Users\%username%\WallpaperDesign.png"

::Regra Area de Trabalho
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%IMG%" /f

::Regra Tela de Bloqueio
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v NoChangingLockScreen /t REG_DWORD /d 1 /f

gpupdate /force

start /wait D:\Archives\Wallpaper\ForceWallpaper.exe

xcopy /h /y "D:\Archives\Wallpaper\WallpaperDesign.png" "C:\Users\%username%\"

xcopy /h /y "D:\Archives\Wallpaper\ForceWallpaper.exe" "C:\Users\%username%\"


schtasks /create ^
 /tn "ForcarWallpaper" ^
 /tr "C:\Users\%username%\ForceWallpaper.exe" ^
 /sc onlogon ^
 /ru Design ^
 /rl HIGHEST ^
 /f

timeout 1 /nobreak

:again
cls
echo ------------------------------------------
echo 1 - Apagar os icones Velhos
echo 2 - Manter os icones Velhos
echo ------------------------------------------
set /p opcao=Digite uma opcao 

if %opcao%==1 (
echo Apagar
cd /d %userprofile%\Desktop
del * /a-h /q
cd /d C:\Users\Public\Desktop
del * /a-h /q
) else (
if %opcao%==2 (
echo Manter
) else (goto again)
)
timeout 1 /nobreak

if not exist "%userprofile%\Desktop\CapCut" (
if exist "C:\Users\%username%\AppData\Local\CapCut\Apps\CapCut.exe" (
mklink "%userprofile%\Desktop\CapCut" "C:\Users\%username%\AppData\Local\CapCut\Apps\CapCut.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\CapCut" "C:\Users\%username%\AppData\Local\CapCut\Apps\CapCut.exe"
)
echo Atalho CapCut Criado
)
)

if not exist "%userprofile%\Desktop\GDevelop" (
if exist "C:\Program Files\GDevelop\GDevelop.exe" (
mklink "%userprofile%\Desktop\GDevelop" "C:\Program Files\GDevelop\GDevelop.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\Desktop\GDevelop" "C:\Program Files\GDevelop\GDevelop.exe"
)
echo Atalho GDevelop Criado
)
)

if not exist "%userprofile%\Desktop\Chrome" (
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
mklink "%userprofile%\Desktop\Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe"
)
echo Atalho Chrome Criado
)
)


timeout 1


if not exist "%userprofile%\Desktop\Word" (
if exist "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" (
mklink "%userprofile%\Desktop\Word" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\Word" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
)
echo Atalho Word Criado
)
)

if not exist "%userprofile%\Desktop\PowerPoint" (
if exist "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE" (
mklink "%userprofile%\Desktop\PowerPoint" "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\PowerPoint" "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE"
)
echo Atalho PowerPoint Criado
)
)

if not exist "%userprofile%\Desktop\Excel" (
if exist "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE" (
mklink "%userprofile%\Desktop\Excel" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\Excel" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
)
echo Atalho Excel Criado
)
)



timeout 1


if not exist "%userprofile%\Desktop\Photoshop" (
if exist "C:\Program Files\Adobe\Adobe Photoshop 2026\Photoshop.exe" (
mklink "%userprofile%\Desktop\Photoshop" "C:\Program Files\Adobe\Adobe Photoshop 2026\Photoshop.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\Photoshop" "C:\Program Files\Adobe\Adobe Photoshop 2026\Photoshop.exe"
)
echo Atalho Photoshop Criado
)
)

if not exist "%userprofile%\Desktop\AfterEffects" (
if exist "C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\AfterFX.exe" (
mklink "%userprofile%\Desktop\AfterEffects" "C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\AfterFX.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\AfterEffects" "C:\Program Files\Adobe\Adobe After Effects 2024\Support Files\AfterFX.exe"
)
echo Atalho After Effects Criado
)
)

if not exist "%userprofile%\Desktop\Illustrator" (
if exist "C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\Illustrator.exe" (
mklink "%userprofile%\Desktop\Illustrator" "C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\Illustrator.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\Illustrator" "C:\Program Files\Adobe\Adobe Illustrator 2024\Support Files\Contents\Windows\Illustrator.exe"
)
echo Atalho Illustrator Criado
)
)

if not exist "%userprofile%\Desktop\Lightroom" (
if exist "C:\Program Files\Adobe\Adobe Lightroom Classic\Lightroom.exe" (
mklink "%userprofile%\Desktop\Lightroom" "C:\Program Files\Adobe\Adobe Lightroom Classic\Lightroom.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\Lightroom" "C:\Program Files\Adobe\Adobe Lightroom Classic\Lightroom.exe"
)
echo Atalho Lightroom Criado
)
)

if not exist "%userprofile%\Desktop\Premiere" (
if exist "C:\Program Files\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe" (
mklink "%userprofile%\Desktop\Premiere" "C:\Program Files\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe"
if exist "%userprofile%\OneDrive\Desktop" (
mklink "%userprofile%\OneDrive\Desktop\Premire" "C:\Program Files\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe"
)
echo Atalho Premiere Criado
)
)

color 1c
echo vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
echo DEFINA O CHROME COMO PDF PADRAO
echo ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

timeout 2

start chrome D:\Archives\PDF_Padrao.pdf

timeout 15

exit
