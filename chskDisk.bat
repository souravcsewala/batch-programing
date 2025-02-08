:: cheak disk 

@echo off 
Title cheak the disk utility 
chkdsk /?
set /p input_drive=Enter the drive name to cheak:

if not exist "%input_drive%:\" (
    echo The drive %drive% does not exist!
    pause
    exit
)

:: Run chkdsk on the specified drive
echo Running CHKDSK on %input_drive%:
chkdsk %input_drive%:

pause