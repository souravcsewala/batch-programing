@echo off
Title Add Numbers from User Input

:start
set /p first_number=Enter the first number: 
set /p second_number=Enter the second number: 

:: Check if first_number is empty
if not defined first_number (
    echo Please enter a valid number.
    goto start
)


if not defined second_number (
    echo Please enter a valid number.
    goto start
)


set /a grand_total=%first_number% + %second_number%


echo The sum of %first_number% and %second_number% is: %grand_total%

pause
