@echo off
echo This may take a few, please wait...
powershell.exe -noProfile -Execution Bypass -Command "& {irm https://get.activated.win | iex}"
echo Press any key to exit
pause > nul
exit