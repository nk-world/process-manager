@echo off
:start
echo %cd%>%temp%\pm-update.tmp
title Process Manager Updater
echo Initializing...
if "%cd%" NEQ "%temp%" goto TMP
:WORK
git clone https://github.com/nk-world/process-manager.git
set dir=<pm-update.tmp
del pm-update.tmp
cd process-manager
del %dir%\*.*
copy *.* %dir%\
echo ====================================================================================================================
echo DONE!
pause>nul
exit
:TMP
copy updater.bat %temp%\updater.bat
copy git.exe %temp%\git.exe
cd %temp%
start updater.bat
exit
