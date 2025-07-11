@echo off
echo This may take a few, please wait...
powershell.exe -Command "& {irm "https://christitus.com/win" | iex}"
echo Press any key to exit
pause > nul
exit