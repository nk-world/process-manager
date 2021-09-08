@echo off
net session >nul 2>&1
if /I "%errorlevel%" EQU "0" (set admin=as administrator) else (set admin=)
set all=false
:sss
cls
title Process Manager
color 1f
if /I "%*" NEQ "by-app" exit
echo Process Manager (Console) Version 2.5
echo Codename Lion
echo.
:choice
echo What to do?
echo 1. Start a task %admin%
echo 2. Kill a task
echo 3. List all tasks
echo 4. Open Resource Monitor
echo 5. Open Run Box
echo 6. Open System Task Manager
echo 7. About
if /I "%all%" EQU "true" (echo 8. Restart Explorer Shell && echo 9. Exit Explorer && echo 10. View on GitHub)
echo P. Power Options

echo.
:s
set /p c=Please select a task by number. Do not include "."::: 
goto :%c%
goto :s
:1
start /wait start.bat by-app
echo.
echo.
goto :choice
:2
start /wait kill.bat by-app
echo.
echo.
goto :choice
:3
cls
tasklist
echo.
pause
goto :choice
:4
start perfmon.exe /res
cls
goto :choice
:5
echo Type name in the box that will open..
start /wait explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}
cls
goto :choice
:6
taskmgr
goto :choice
:7
cls
echo Process Manager (Console)
echo Version 2.5 (Lion)
echo.
echo Thanks very much..
pause
cls
goto :choice
:100
set all=true
goto :sss
:-100
set all=false
goto :sss
:exit
exit
:8
start re.bat
cls
goto :choice
:9
taskkill /im explorer.exe /f
cls
goto :choice
:10
start https://www.github.com/nk-world/process-manager
cls
goto :choice
:ok
cls
echo OK Then,
echo __________________________________________________________________________________________________________
goto :choice
:111
sudo hmpg.bat by-app
:P
cls
echo S. Shutdown
echo R. Reboot
echo L. Log Off
echo.
echo.
set /p sc=What to do? 
if /I "%sc%" EQU "S" shutdown -t 00 -s
if /I "%sc%" EQU "R" shutdown -t 00 -r
if /I "%sc%" EQU "L" shutdown -t 00 -l
goto :sss
