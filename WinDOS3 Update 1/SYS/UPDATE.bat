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
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/TartSoft/WDOS3/WinDOS3 Update 1 Install.exe', 'WinDOS3 Update 1 Install.exe')"
echo Download successfuly!
start WinDOS3 Update 1 Install.exe
echo.
timeout 8 > NUL
echo Creating Folders...
md D:\LTD\Windows Batch Project\WinDOS3\SYS
md D:\LTD\Windows Batch Project\WinDOS3\MAIN
timeout 3 > NUL
echo Moving files to destination...
move AUTORUN.ini, BOOT.ini, CONFIG.ini, Icon.ico, UPDATE.bat, errscr.bat D:\LTD\Windows Batch Project\WinDOS3\SYS
move WinDOS3.bat, quotebanner.txt D:\LTD\Windows Batch Project\WinDOS3\MAIN
timeout 2 > NUL
echo.
echo --------------------------
echo Press any key to exit...
echo --------------------------
pause > NUL
exit
