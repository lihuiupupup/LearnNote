@echo off
set "dest=log\procranklog.txt"
md log
if exist %cd%\%dest% (
   set /p "flagflag=procranklog is exist,whether delete it(y/n):"
    
) else (
  set /a flagflag=n
  echo procranklog not exist
) 
if  %flagflag% == y del %dest% 
set /p root=input root permission keyword:
set /p filter=input filter keyword:
echo task is started,press "ctrl + c" to stop
:myTask
echo %date% %time% >> %dest%
adb shell %root% -c "procrank |grep %filter%" >> %dest%
timeout /t 60 /nobreak > nul
goto myTask