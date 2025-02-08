@echo off
Title Delete File Batch 

echo Checking if the file exists...

if exist "E:\batch programing\text1.txt" (
    echo File found. Deleting...
    del /Q /F "E:\batch programing\test1.txt"
    echo File deleted.
) else (
    echo File does not exist!
)

pause
