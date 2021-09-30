@echo off
set /p n=Enter Feature Name: 
set /p f=Enter path to executable (exe file only): 
set /p fno=<..\NewApp\fno
set /a fno=%fno%+1 >nul
echo %fno%. %n%>>..\NewApp\add
copy %f% ..\NewApp\%fno%.exe
