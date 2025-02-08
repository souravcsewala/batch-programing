@echo off
Title Set color of the CMD with a BAT script
echo Here is the list of colors. See them and make a color combination you want:
color /?
echo.
set /p input_color=Enter the color combination you want (e.g., 0A, 1F, 4E): 
color %input_color%
echo Color changed to %input_color%!
pause
