@echo off
title MultiTool - by GodDrgn
chcp 65001 >nul
color 4
cd files

:start
cls
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A

echo                                      ╔═══════════════════════════════════════════╗
echo                                      ║ Choose your Program!  Type 'exit' to exit ║
echo                                      ╚═════════════════════╦═════════════════════╝
echo                                                            ║
echo                                       Auto Clicker (1)═════╬═════(2) Wifi Password Grabber
echo                                   SMB Bruteforce (3)═══════╬═══════(4) Wifi Bruteforce
echo                         Passwordlist Generator (5)═════════╬═════════(6) Password Troll Hack
echo                                        ValoBatch (7)═══════╬═══════(8) Higher or Lower Game
echo                                                            ║

set /p inputMenu=%BS%                                                           ╚═══^>  
cd "C:\Users\Admin\Desktop\Programmieren\BATCH\Multitool\files"
if /I %inputMenu% EQU exit exit
if /I %inputMenu% EQU Exit exit
if /I %inputMenu% EQU EXIT exit
if /I %inputMenu% EQU close exit
if /I %inputMenu% EQU Close exit
if /I %inputMenu% EQU CLOSE exit
if /I %inputMenu% EQU leave exit
if /I %inputMenu% EQU Leave exit
if /I %inputMenu% EQU Leave exit
if /I %inputMenu% EQU terminate exit
if /I %inputMenu% EQU Terminate exit
if /I %inputMenu% EQU TERMINATE exit
if /I %inputMenu% EQU help goto :help
if /I %inputMenu% EQU Help goto :help
if /I %inputMenu% EQU HELP goto :help
if /I %inputMenu% EQU 1 start autoclicker.exe
if /I %inputMenu% EQU 2 (
    powershell -Command "Start-Process 'allwifipwd.bat' -Verb runAs"
)
if /I %inputMenu% EQU 3 start crackpwd.bat
if /I %inputMenu% EQU 4 start crackwifi.bat
if /I %inputMenu% EQU 5 (
	cd PwdGen
	start pwdgen.bat
)
if /I %inputMenu% EQU 6 start trollhack.bat
if /I %inputMenu% EQU 7 start valo.bat
if /I %inputMenu% EQU 8 (
    powershell -Command "Start-Process 'hol.exe' -Verb runAs"
)
cls
goto :start


:help
cd color
cls
echo                                                                                                               by GodDrgn
echo.
echo                                                      ╔═══════════╗
echo                                                      ║ HELP MENU ║
echo                                                      ╚═════╦═════╝
echo                                                            ║
echo           ┌───────────────────┬────────────────────────────║────────────────────────────────────────────────┐
echo           │      CREDITS      │                     'Help' ║ Shows this page                                │
echo           │___________________│----------------------------║------------------------------------------------│
echo           │                   │           (1) Auto Clicker ║ Opens an auto clicker                          │
echo           │      made by:     │----------------------------║------------------------------------------------│
echo           │                   │  (2) Wifi Password Grabber ║ Opens a Wifi Password Grabber                  │
echo           │     - GodDrgn     │----------------------------║------------------------------------------------│
echo           │                   │         (3) SMB Bruteforce ║ Opens a Windows User Bruteforcer               │
echo           │-------------------│----------------------------║------------------------------------------------│
echo           │                   │        (4) Wifi Bruteforce ║ Opens a Wifi Password Bruteforcer        │     │
echo           │    inspired by:   │                            ║            [CURRENTLY UNAVAILABLE]       ○     │
echo           │                   │----------------------------║------------------------------------------------│
echo           │    - ebola man    │ (5) Passwordlist Generator ║ Opens a Custom Passwordlist Generator          │
echo           │    - YouTube ig   │                            ║ [Useful for (3) and (4)]                       │
echo           │                   │----------------------------║------------------------------------------------│
echo           │-------------------│  (6) Wifi Password Grabber ║ Opens a Troll IP Grabber that sends all of the │
echo           │                   │                            ║ Users Wifi Passwords to "C:\Windows\Temp\"     │
echo           │   thnx Notepad++  │----------------------------║------------------------------------------------│
echo           │                   │              (7) ValoBatch ║ A Valorant Troll because CS ^> Valorant         │
echo           │    thnx PyCharm   │────────────────────────────║────────────────────────────────────────────────│
echo           │                   │  (8) Higher or Lower Game  ║ A selfmade Higher or Lower Card Game           │
echo           └───────────────────┴────────────────────────────║────────────────────────────────────────────────┘
echo                                                            ║
echo                                                ╔═══════════╩═══════════╗
echo                                                ║ Press any key to exit ║
echo                                                ╚═══════════════════════╝

pause >nul
goto :start

:banner
echo                                                                                                               by GodDrgn
echo					        ▄▄▄         ██▀███    ▓█████     ██████ 
echo					       ▒████▄      ▓██ ░ ██▒  ▓█   ▀   ▒██    ▒ 
echo					       ▒██  ▀█▄    ▓██  ▄█    ▒███     ░ ▓██▄   
echo					       ░██▄▄▄▄██   ▒██▀▀█▄     ▓█  ▄     ▒   ██▒
echo					        ▓█   ▓██▒  ░██▓ ▒██▒   ▒████▒  ▒██████▒▒
echo					        ▒▒   ▓▒█░  ░ ▒▓ ░▒▓░░    ▒░ ░  ▒ ▒▓▒ ▒ ░
echo					        ▒   ▒▒ ░    ░▒ ░ ▒░ ░   ░  ░  ░ ░▒  ░ ░
echo					        ░   ▒       ░░   ░      ░   ░    ░  ░ 
echo					            ░  ░     ░          ░  ░        ░ 
echo.

