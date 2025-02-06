@echo off
set /p password="Enter your password: "
if "%password%" EQU "souravcharu" (
    echo Welcome to the system
) else (
    echo You are not allowed to access the system
)
pause
