@echo off
:start_of_file
choice /m "Would you like to install Process Manager? (Y/n): " /n /c yn /d y
if errorlevel 2 exit
echo ========================================================================
echo Preparing...
timeout /t 1>nul
echo ========================================================================
echo.
echo If you are a developer please refer to https://github.com/nk-world/process-manager#developer
echo.
echo Installing
cd ..
mkdir %localappdata%\ProcessManager
cd bin
cd install
copy *.* %localappdata%\ProcessManager
cls
echo Done!
timeout /t 2>nul
exit
