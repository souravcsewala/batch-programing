@echo off
Title Show Content of the File with Batch Scripting
cls

:: Get directory from the user
set /p input_direction=Enter the directory path:

:: Change directory (use /d to support different drives)
cd /d "%input_direction%" || (echo Invalid Directory! & pause & exit)

:: Get filename from the user
set /p input_file_name=Enter the file name with extension:

:: Check if the file exists
if not exist "%input_file_name%" (
    echo File does not exist!
    pause
    exit
)


echo.
echo ---- File Content ----
for /f "usebackq delims=" %%i in ("%input_file_name%") do (
    echo %%i
)
echo ----------------------
pause
