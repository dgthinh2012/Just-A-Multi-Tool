@echo off
title A Multi Tool - by Doan Gia Thinh
chcp 65001 >nul
:start
call :banner
cd /d "%~dp0"\tools
:menu
echo 	[43mNOTE: Beta version[0m
echo 	[42mEnter your choice and press Enter, 0 to exit[0m
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo 		╔══1) Godmode
echo.		║  
echo 		╠═══2) Unavaiable
echo.		║  
echo.		╠════3) Unavaiable
echo.		║
echo.		╚╦═════4) Unavaiable
echo.		 ║
set /p input=%BS%		 ╚════════^>
if /I %input% EQU 1 start GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}
if /I %input% EQU 2 exit
if /I %input% EQU 3 exit
if /I %input% EQU 4 exit
if /I %input% EQU 0 exit
cls
set "input="
cd /d "%~dp0"
goto start
pause

:banner
echo   [1;4mv0.2.0 alpha[0m
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
