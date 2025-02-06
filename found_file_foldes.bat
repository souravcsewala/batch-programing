@echo off
Title Batch Program to found Folders and Files in a Directory




set /p folder_path=Enter the folder path: 


if not exist "%folder_path%" (
    echo The folder does not exist!
    pause
    exit /b
)


set /a files_count=0
set /a folder_count=0


for /f "delims=" %%f in ('dir /b /a:-d "%folder_path%"') do (
    echo Found file: %%f
    set /a files_count+=1
)


for /f "delims=" %%f in ('dir /b /ad "%folder_path%"') do (
    echo Found folder: %%f
    set /a folder_count+=1
)


echo =======================================
echo Total files   : %files_count%
echo ---------------------------------------
echo Total folders : %folder_count%
echo =======================================

pause
exit /b
