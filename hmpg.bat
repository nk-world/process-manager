@echo off
title Process Manager
color 1f
if /I "%*" NEQ "by-app" exit
echo Process Manager (Console) Version 2.0.1
echo.
:choice
echo What to do?
echo 1. Start a task
echo 2. Kill a task
echo 3. List all tasks
echo 4. Exit
echo 5. Open Run Box
echo 6. Open System Task Manager
echo 7. About
echo.
:s
set /p c=Please select a task by number. Do not include "." 
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
exit
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
echo Version 2.0.1
echo.
echo Thanks very much..
pause
cls
goto :choice