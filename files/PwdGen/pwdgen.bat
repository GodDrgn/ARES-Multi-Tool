@echo off
title Passwordlist Generator - by GodDrgn
color 4
echo.

echo.
echo Do not close! The results will be listed here.
echo.
echo Fill out the .exe and finish with two Presses of the ENTER Key. To skip a question, press ENTER.
echo.
timeout /t 6 /nobreak >nul
start pwdgen.exe
timeout /t 1 /nobreak >nul
pause

setlocal enabledelayedexpansion
set wordlist=C:\Users\Admin\Desktop\Programmieren\BATCH\Multitool\files\PwdGen\wordlist.txt

cls
echo.
echo The Password List is now available at the following path: Multitool\files\PwdGen\wordlist
echo.
choice /c YN /n /m "Do you want the passwords listed here? (Y/N)"

if errorlevel 2 (
	cls
	echo.
	timeout /t 1 /nobreak >nul
	color 6
	echo Thanks for Using!
	timeout /t 4 /nobreak >nul
	exit
)else (
	cls
	timeout /t 1 /nobreak >nul
	for /f %%a in (%wordlist%) do (
		echo %%a
		set /a count=!count!+1
	)
	timeout /t 3 /nobreak >nul
	cls
	echo.
	color 6
	echo Thanks for Using!
	timeout /t 2 /nobreak >nul
	exit
)