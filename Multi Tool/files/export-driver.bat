@echo off

echo.
echo Driver Backup is working, please wait...
echo.

@echo off
setlocal enabledelayedexpansion

REM Dinh nghia duong dan den file PowerShell script
set "psScriptPath=%~dp0\BrowseForFolder.ps1"

echo.
echo Please choose path to backup folder
echo.

REM Open Powershell and save destination to %destinationFolder%
for /f "delims=" %%i in ('powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%psScriptPath%"') do (
    set "destinationFolder=%%i"
)

REM Check is the selected folder exist
if not "!destinationFolder!"=="" (
    echo.
    echo Your selected path: !destinationFolder!
    echo.
    echo Backup Driver is running
    echo.

REM Backing up driver
	dism /online /export-driver /destination:"%destinationFolder%"

) else (
    echo.
    echo Canceled, press any key to go back
	pause > nul
	exit
)

REM Create destination folder if not exist
if not exist "%destinationFolder%" (
    mkdir "%destinationFolder%"
    echo Path not exist, creating folder to export: "%destinationFolder%"
)

echo.
echo Backup driver successfully, exported driver to "%destinationFolder%"
echo Press any key to go back
pause > nul
exit