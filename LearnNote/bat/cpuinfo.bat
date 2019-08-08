@echo off
adb shell "cat /proc/cpuinfo" >log\cpuinfo.txt
echo task finish
pause