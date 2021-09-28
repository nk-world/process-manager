@echo off
title Start
color 3f
if /I "%*" NEQ "by-app" exit
echo Start a task. Please enter the name just like we start from Run app.
set /p c=Name: 
start %c%
exit
