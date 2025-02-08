:: print array data through the loop 
@echo off 
Title show array data through loop 

set array=sourav charu raima computer physics 

  

  for %%i in (%array%) do (
     echo %%i
  )
  
  pause