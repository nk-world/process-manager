@echo off
cd ..
cd Bin
cd dev
echo Thank You VERY MUCH for being a developer!!!
echo Lets begin!!
echo ==================================================
set /p name=Name Your app: 
set /p ver=Choose a version!: 
echo Thank You!!
echo These are only info we need right now!!
echo Sit back, until we make your app.
echo ======================================================
echo Creating your app
mkdir ..\user
copy *.* ..\user\
cd ..
cd user
figlet %name%>fign
echo %ver%>vindicate.sun
pause
echo Application Created Successfully! Congratulations!!!
echo Further instructions are in GitHub...
echo.
echo Press any key to exit... 
pause>nul