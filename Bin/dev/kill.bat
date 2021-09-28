@echo off
title Kill
color 2f
if /I "%*" NEQ "by-app" exit
echo Please enter name seen in "list" section. use /f at last for force kill
set /p c=Name: 
taskkill /im %c%
exit
