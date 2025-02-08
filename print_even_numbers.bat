@echo off
Title List of Even Numbers

echo Printing even numbers using FOR loop...

for /L %%i in (2,2,200) do (
    echo %%i
)

pause
