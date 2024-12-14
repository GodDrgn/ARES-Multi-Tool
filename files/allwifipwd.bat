@echo off
title Wifi Password Grabber - byGodDrgn
chcp 65001 >nul
color 4


:start
echo.
echo This will list all Wifis and their Passwords.
echo.
echo.
echo Press any key to start...
pause >nul
echo.


:exe
cls
color A
echo.
echo.
echo -----------------------------------------------------------------------------

for /f "skip=9 tokens=1,2 delims=:" %%i in ('netsh wlan show profiles') do (
    @echo %%j | findstr -i -v echo | netsh wlan show profiles %%j key=clear
)

echo -----------------------------------------------------------------------------

for /f "skip=9 tokens=1,2 delims=:" %%i in ('netsh wlan show profiles') do (
    @echo %%j | findstr -i -v echo | netsh wlan show profiles %%j key=clear >> "C:\AllWifiPasswordsOfUser.txt"
)

echo.
echo.
echo.
echo Press any key to exit. The passwords are now saved at the following patch: "C:\AllWifiPasswordsOfUser.txt"
pause >nul
exit