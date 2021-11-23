@echo off
color 17
title WinDOS3 Updater
echo Welcome to the WinDOS3 Updater!
echo.
echo Please close all running instances and save your files of WinDOS3 if they have not closed already.
echo.
timeout 1 >NUL
echo Please wait, preparing update...
if exist "D:\LTD\Windows Batch Project\WinDOS3\WinDOS3.bat" (
echo You are up to date!
echo ------------------------
echo Press any key to exit...
echo ------------------------
pause > NUL
exit
) else (
goto update
echo Sorry, your WinDOS version is under 3. We don't supported any version lower than
echo version 3
echo The updating will happen now...
echo.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/TartSoft/WDOS3/WinDOS3.exe', 'WinDOS3.exe')"
echo Download successfuly!
echo.
echo --------------------------
echo Press any key to exit...
echo --------------------------
pause > NUL
exit