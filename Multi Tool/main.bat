@echo off
cd /d "%~dp0"
title A Multi Tool - by Doan Gia Thinh
chcp 65001 > nul
:start
call :banner
cd /d "%~dp0\files" > nul
:menu
echo 	[43mNOTE: Beta version[0m
echo 	[42mEnter your choice and press Enter, 0 to exit[0m
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo 		╔══1) Winutil
echo.		║  
echo 		╠═══2) Massgravel
echo.		║  
echo.		╠════3) Backup driver
echo.		║
echo.		╚╦═════4) Tools
echo.		 ║
set /p input=%BS%		 ╚════════^>
if /I %input% EQU 1 start winutil.bat
if /I %input% EQU 2 start massgravel.bat
if /I %input% EQU 3 start export-driver.bat
if /I %input% EQU 4 start tools.bat
if /I %input% EQU 0 exit
cls
set "input="
cd /d "%~dp0"
goto start
pause

:banner
echo   [1;4m0.2 beta[0m
echo.
echo.
echo. 		  [38;2;255;0;0m █████╗     ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     [0m
echo. 		  [38;2;255;51;0m██╔══██╗    ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     [0m
echo 		  [38;2;255;102;0m███████║    ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     [0m
echo 		  [38;2;255;204;0m██╔══██║    ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     [0m
echo 		  [38;2;255;204;0m██║  ██║    ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo 		  [38;2;255;255;0m╚═╝  ╚═╝    ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.
echo.                                                
