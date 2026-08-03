@echo off
title Obaida PC Optimizer v1.0
color 0b
echo ===================================================
echo       Welcome to Obaida Informatics PC Optimizer
echo ===================================================
echo  This tool is 100%% safe and will clean your system.
echo ===================================================
pause

echo.
echo [1/3] Cleaning Windows Temporary Files...
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%

echo.
echo [2/3] Cleaning Prefetch Cache (Speed Up Boot)...
del /s /f /q C:\Windows\Prefetch\*.*

echo.
echo [3/3] Flushing DNS Cache (Speed Up Internet)...
ipconfig /flushdns

echo.
echo ===================================================
echo     Optimization Complete! Your PC is now faster.
echo       Thank you from Obaida Informatics Channel.
echo ===================================================
pause
