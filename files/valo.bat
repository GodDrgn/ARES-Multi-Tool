@echo off
title ValoBatch - by GodDrgn
chcp 65001 >nul
color 4
cd ..\img

:main
echo.
choice /c YN /n /m "Do you want to play Valorant? (Y/N)"

if errorlevel 2 (
	echo.
	echo.
	echo Thats what I was hoping...	
	timeout /t 3 /nobreak >nul
	exit
) else (
	timeout /t 3 /nobreak >nul
	echo.
	echo.
	echo 						   ╦  ╦┌─┐┬  ┌─┐┬─┐┌─┐┌┐┌┌┬┐┌─┐┬
	echo 						   ╚╗╔╝├─┤│  │ │├┬┘├─┤│││ │  ┌┘│
	echo 						    ╚╝ ┴ ┴┴─┘└─┘┴└─┴ ┴┘└┘ ┴  o o
	timeout /t 1 /nobreak >nul
	echo.
	echo.
	echo.
	echo 						   ╔╦╗┬ ┬┬┌─┐  ┬ ┬┌─┐┬ ┬┌─┐
	echo 						    ║ ├─┤│└─┐  └┬┘│ ││ │ ┌┘
	echo 						    ╩ ┴ ┴┴└─┘   ┴ └─┘└─┘ o 
	timeout /t 1 /nobreak >nul
	start femboy.png
	timeout /t 2 /nobreak >nul
	echo.
	echo.
	echo.
	echo 						   ╔═╗┌─┐┌─┐┌─┐┬ ┬  ╔═╗┬ ┬┬ ┬
	echo 						   ║ ╦│ ││ │├┤ └┬┘  ╠═╣├─┤├─┤
	echo 						   ╚═╝└─┘└─┘└   ┴   ╩ ╩┴ ┴┴ ┴
	echo.
	echo.
	echo.
	echo.
	timeout /t 5 /nobreak >nul
	exit
)