@echo off
Title Loop Through Files and Folders

:: Ask user for folder path
set /p folder_path=Enter the folder path: 

:: Check if the folder exists
if not exist "%folder_path%" (
    echo The folder does not exist!
    pause
    exit /b
)
set /a total_count=0

:: Loop through files and folders
for /f "delims=" %%f in ('dir /b "%folder_path%"') do (
    echo Found files in "%folder_path%": %%f
    set /a total_count+=1
)

echo =============================
echo Total Items (Files + Folders): %total_count%
echo =============================

pause
