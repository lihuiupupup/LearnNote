@echo off
set "dest=log\toplog.txt"
md log
if exist %cd%\%dest% (
   set /p flagflag="toplog is exist,whether delete it(y/n):"
) else (
  set /a flagflag=n
  echo toplog not exist
)
if  %flagflag% == y del %dest% 
set /p filter=input filter keyword:
echo task is started,press "ctrl + c" to stop
:myTask
echo %date% %time% >> %dest%
adb shell "top -n 1 |grep %filter%" >> %dest%
timeout /t 60 /nobreak > nul
goto myTask