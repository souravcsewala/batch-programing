@echo off
Title Remove Substring

set "a=hello sourav chiroslhree"

rem Remove the exact substring "oslh"
set "a=%a: =%"  &:: remove space 
set "a=%a:o=%"  &:: remove o from the string 
set "a=%a:s=%"  &:: remove s from the string 
set "a=%a:h=%"  &:: remove h from the string 
echo %a%

pause
