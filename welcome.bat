@echo off
setlocal enabledelayedexpansion



    echo Welcome, Sourav Engineer Wala Sir!
    echo.
    echo Today's date: %DATE%
    echo.
    echo Current time: %TIME%
    echo.
    echo Your system info:
    systeminfo | findstr /B /C:"OS Name" /C:"System Model" /C:"Processor"
    echo.
    echo Your IP details:
    ipconfig
    echo.

    :: Extract system info and make it speak
    

    pause

    :: Open VS Code
    start "" "C:\Users\Dell\AppData\Local\Programs\Microsoft VS Code\Code.exe"

    :: Open Default Browser
    start "" "https://www.google.com"

    :: Keep the command prompt open
    cmd /k


