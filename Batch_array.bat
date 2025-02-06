@echo off
Title Here we learn the batch array script
set Winners_list=sourav chirosree raima
set /a set_rank=0

setlocal enabledelayedexpansion

for %%n in (%Winners_list%) do (
    set /a set_rank+=1
    echo The !set_rank! position got : %%n
    timeout /t 3 /nobreak
)

pause
