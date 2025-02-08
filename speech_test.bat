@echo off       
echo hello sourav sir 
echo.
echo Today's date %DATE%
echo.
echo Current Time %TIME%
powershell -c  "Add-Type -AssemblyName System.Speech; $os = (Get-CimInstance Win32_OperatingSystem).Caption; $pc = (Get-CimInstance Win32_ComputerSystem).Model; $cpu = (Get-CimInstance Win32_Processor).Name; $speech = 'Welcome Sourav Engineer Wala Sir, your system is running ' + $os + '. You are using a ' + $pc + ' with a ' + $cpu + '. Lets do work together!'; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak($speech)"
pause
