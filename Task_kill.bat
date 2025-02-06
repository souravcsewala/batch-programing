@echo off
Title Kill a process with batch scripting
color 3
echo Here is the list of tasks currently running:
echo.
tasklist
set /p input_imgName=Enter the process name you want to kill (e.g., notepad.exe):
taskkill /f /im %input_imgName%
tasklist | findstr %input_imgName% || echo Task killed successfully
pause
