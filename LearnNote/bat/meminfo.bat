@echo off
adb shell "cat /proc/meminfo" >log\meminfo.txt
echo task finish
pause