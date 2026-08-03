@echo off
title Obaida Smart Backup Tool v1.0
color 0b
cls
echo ===================================================
echo        Welcome to Obaida Informatics Backup Tool
echo ===================================================
echo  This tool will safely backup your important files.
echo ===================================================
echo.
echo Press any key to start the backup process...
pause > nul

:: هنا نحدد المجلد المراد نسخه (مثلاً مجلد المستندات) والمجلد الاحتياطي الجديد
set "source=%userprofile%\Documents"
set "destination=C:\Obaida_Backup_Folder"

echo.
echo [!] Creating backup directory if it doesn't exist...
if not exist "%destination%" mkdir "%destination%"

echo.
echo [!] Copying files and folders... please wait...
:: أمر robocopy هو أسرع وأقوى أمر في الويندوز لنقل الملفات مع الحفاظ على الحقول والمجلدات الفرعية
robocopy "%source%" "%destination%" /E /Z /R:2 /W:5 /MT:8

echo.
echo ===================================================
echo       SUCCESS: Backup completed successfully!
echo   Your files are now safe in: %destination%
echo ===================================================
pause
