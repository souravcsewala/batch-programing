@echo off 
Title here i learn timeout 
color 3 
echo here is the list of currently running task:
tasklist 
set /p input_imgName=Enter the process name you want to kill(eg: notepd.exe):
timeout  /t 5 /nobreak 
taskkill /f /im %input_imgName%
tasklist | findstr notepad.exe || echo task kill successfully 
pause 