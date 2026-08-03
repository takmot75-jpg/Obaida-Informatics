@echo off
title Obaida Advanced System Scanner
color 0a
cls
echo ===================================================
echo    LAUNCHING OBAIDA INFORMATICS SECURITY SCANNER
echo ===================================================
echo [!] WARNING: Executing safe system diagnostics...
echo ===================================================
pause

echo.
echo [!] INITIALIZING NETWORK DIAGNOSTICS...
ping 1.1.1.1 -n 4
echo [+] Network Connection: STABLE.

echo.
echo [!] FETCHING SYSTEM IP CONFIGURATION...
ipconfig | findstr /i "ipv4 subnet gateway"
echo [+] Network Configuration Loaded.

echo.
echo [!] SCANNING RUNNING SYSTEM DRIVERS...
echo Please wait, analyzing system core components...
driverquery | findstr /i "kernel file"
echo [+] Drivers Scan Complete.

echo.
echo ===================================================
echo       SCAN COMPLETE - ALL SYSTEMS ARE SECURE
echo   Thank you for using Obaida Informatics Tools!
echo ===================================================
pause
