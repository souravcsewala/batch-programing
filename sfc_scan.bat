@echo off
Title System File Checker Utility
:: Check for Admin Privileges
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Requesting Administrator Privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~fnx0\"' -Verb RunAs"
    exit
)

cls
echo.
echo ================================
echo  Running System File Checker...
echo ================================
echo.

:: Run sfc /scannow
sfc /scannow 

echo.
echo ================================
echo  Scan Completed!
echo ================================
echo.

pause
