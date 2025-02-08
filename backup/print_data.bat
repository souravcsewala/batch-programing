@echo off
Title The data store 
:: not only we create .txt format but also .csv or .xlxs etc 
echo %USERNAME% your system information is under below .... >>systeminfo.txt
systeminfo >> systeminfo.txt
pause  
