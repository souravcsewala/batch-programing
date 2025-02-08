@echo off
Title Backup Files with Batch Scripting


set /p folder_direction=Enter the folder path you want to backup from:


set /p backup_direction=Enter the destination folder for the backup:


if not exist "%backup_direction%" mkdir "%backup_direction%"


cd /d "%folder_direction%" || (
    echo Error: Source folder not found!
    pause
    exit /b
)


for %%i in (*.bat *.txt) do (
    copy "%%i" "%backup_direction%"
    echo Copied: %%i
)

echo Backup completed successfully!
pause
