@echo off 
Title User Input Yes or No
 
:start
set /p input=Do you want to continue? (y/n):  

:: Check if the input is empty
if not defined input goto :start

:: Properly handle input cases
if /i "%input%"=="y" goto :yes
if /i "%input%"=="n" goto :no

:: If the input is neither 'y' nor 'n', go to invalid
goto :invalid

:yes
echo User input is yes 
goto :start

:no
echo User input is no 
goto :start

:invalid
echo Your entry value is invalid.
echo You entered: "%input%"
set input=
pause
goto :start
