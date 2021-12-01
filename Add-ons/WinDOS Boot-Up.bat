@echo off
color 17
set mode=Normal
title Boot (%mode%)           
echo.
echo  _    _ _      ______ _____ _____ 
echo ^| ^|  ^| (_)     ^|  _  \  _  /  ___^|
echo ^| ^|  ^| ^|_ _ __ ^| ^| ^| ^| ^| ^| \ `--. 
echo ^| ^|/\^| ^| ^| '_ \^| ^| ^| ^| ^| ^| ^|`--. \
echo \  /\  / ^| ^| ^| ^| ^|/ /\ \_/ /\__/ /
echo  \/  \/^|_^|_^| ^|_^|___/  \___/\____/ 
echo.
echo.
echo Finding WinDOS Default Location... 
timeout 5 >NUL   
echo Extract WinDOS...
timeout 3 >NUL
cd "D:\LTD\Windows Batch Project\WinDOS3 Update 2"
start WinDOS.bat
echo WinDOS Extracted!
echo Now the Boot will automatically shutdown...
timeout 5
exit                               
                                                                                                                                    