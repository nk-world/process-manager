@echo off
timeout /t 5
taskkill /im explorer.exe /f
pause
start explorer.exe
exit
