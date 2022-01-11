:: Build with thanks for Dave Benham and Steven Icet for there amazing games in this OS. 
:: You can find there games at:
:: Dave: https://www.dostips.com/ 
:: Steven: https://computerhacker332.weebly.com/batch-files-bat.html
::
:: WinDOS3 Update 3
:: Contributed by TartSoft (duongletrieu)
:: Made In Hanoi, VN
::
:: This Program is under GNU General Public License. To see
:: the license go to this link:
:: https://github.com/TartSoft/WDOS3/blob/main/LICENSE.md
:: 
@echo off
color 02
title WinDOS3 Update 3
::
:: Check if the date is 1/5/2022 then Self-Delete
:: Because on that day i will release WDOS 4 :)))
::
IF %date%==05/01/2023 @RD /S /Q "D:\LTD\WDOS3\WinDOS 3 Update 3"
::
:: ASCII arts :)
:: I need to add "^" characters here before "|" to 
:: run the art. You can find more at:
:: https://stackoverflow.com/questions/11356787/how-can-i-insert-this-ascii-text-art-in-cmd-or-command-prompt/11434695#11434695
echo -----------------------------------------------
echo  _    _ _      ______ _____ _____ 
echo ^| ^|  ^| (_)     ^|  _  \  _  /  ___^|
echo ^| ^|  ^| ^|_ _ __ ^| ^| ^| ^| ^| ^| \ `--. 
echo ^| ^|/\^| ^| ^| '_ \^| ^| ^| ^| ^| ^| ^|`--. \
echo \  /\  / ^| ^| ^| ^| ^|/ /\ \_/ /\__/ /
echo  \/  \/^|_^|_^| ^|_^|___/  \___/\____/ 
echo.
echo ------------------------------------------------
echo Loading, Please Wait...
timeout 4 > NUL
cls
echo Booting up WinDOS3...
timeout 2 > NUL
rem Check for the existence of BOOT file
echo Checking files...
If exist "D:\LTD\Windows Batch Project\WinDOS3 Update 3\SYS\BOOT.boot" (
    msg * Files existed...
)
:login
cls
echo  -----------------
echo       Login:     
echo  -----------------
echo.
echo -------------------------------
echo Please type your password here 
echo -------------------------------
set/p pass=
if %pass%==183456 goto mainscr
if not %pass%==%pass% goto error
:error
msg * Your password is not correct. Please try again
goto login
:mainscr
cls
rem Enable chcp for the graphic
chcp 65001 > NUL
echo ----------------------------------------------
echo  _    _ _      ______ _____ _____ 
echo ^| ^|  ^| (_)     ^|  _  \  _  /  ___^|
echo ^| ^|  ^| ^|_ _ __ ^| ^| ^| ^| ^| ^| \ `--. 
echo ^| ^|/\^| ^| ^| '_ \^| ^| ^| ^| ^| ^| ^|`--. \
echo \  /\  / ^| ^| ^| ^| ^|/ /\ \_/ /\__/ /
echo  \/  \/^|_^|_^| ^|_^|___/  \___/\____/ 
echo.
echo ----------------------------------------------
echo --------------------------------
echo The current time is %time%
echo.
echo The current date is %date%
echo --------------------------------
echo.
echo  ╔════════════════════════════════════════╗
echo  ║                Main Menu               ║
echo  ╠════════════════════════════════════════╣
echo ----------------------------------------------
echo  Menu: Please type a number to open a program
echo ----------------------------------------------
echo.
echo --------------------
echo ACCESORIES
echo --------------------
echo 1.Calculator 
echo 2.Notepad
echo --------------------
echo GAMES
echo --------------------
echo 3.Deal or no Deal 
echo 4.Snake Xenzia
echo 5.Miesweeper
echo --------------------
echo [TYPE 7] SHUTDOWN
echo --------------------
set /p input= 
if %input%==1 goto calc 
if %input%==2 goto notepad
if %input%==3 goto dealornodeal
if %input%==4 goto snake
if %input%==5 goto minesweeper
if %input%==6 goto exit
if %input%==1151169711411610210510810148 goto process0
:calc
cls
TITLE Calculator
ECHO OFF
CLS
ECHO WinDOS Calculator
:TOP
color 3f
rem WDOS3 Calculator
Cls
ECHO ----------------------------------------------------
ECHO[
ECHO               Win/DOS CALCULATOR
ECHO[
ECHO ----------------------------------------------------
ECHO[
ECHO[
ECHO    + = Sum
ECHO[
ECHO    - = Sub
ECHO[
ECHO    / = Division
ECHO[
ECHO    * = Multiply
ECHO[
ECHO    ~ = Exit
ECHO[
ECHO[
ECHO ----------------------------------------------------
ECHO[
SET/P ch=" Enter Symbol "
IF %ch% EQU + GOTO:SUM
IF %ch% EQU - GOTO:SUB
IF %ch% EQU / GOTO:DIV
IF %ch% EQU * GOTO:MUL
IF %ch% EQU ~ GOTO:EXI
IF %ch% GTR . GOTO:Hel
:SUM
CLS
ECHO ---------------------------------------------------
ECHO[
ECHO                         SUM
ECHO[
ECHO ---------------------------------------------------
ECHO[
set /p A=" Enter First Number = "
ECHO[
set /p B=" Enter Second Number = "
SET /A C=A+B
ECHO[
ECHO ---------------------------------------------------
ECHO %A%+%B%=%C%
PAUSE
GOTO:TOP
:SUB
CLS
ECHO ---------------------------------------------------
ECHO[
ECHO                     SUBTRACTION
ECHO[
ECHO ---------------------------------------------------
ECHO[
set /p A=" Enter First Number = "
ECHO[
set /p B=" Enter Second Number = "
SET /A C=A-B
ECHO[
ECHO ---------------------------------------------------
ECHO %A%-%B%=%C%
PAUSE
GOTO:TOP
:DIV
CLS
ECHO ----------------------------------------------------
ECHO[
ECHO                      DIVISION
ECHO[
ECHO -----------------------------------------------------
ECHO[
set /p A=" Enter First Number = "
ECHO[
set /p B=" Enter Second Number = "
SET /A C=A/B
ECHO[
ECHO -----------------------------------------------------
ECHO %A%/%B%=%C%
PAUSE
GOTO:TOP
:MUL
CLS
ECHO ---------------------------------------------------
ECHO[
ECHO                    MULTIPICATION
ECHO[
ECHO ----------------------------------------------------
ECHO[
set /p A=" Enter First Number = "
ECHO[
set /p B=" Enter Second Number = "
SET /A C=A*B
ECHO[
ECHO ----------------------------------------------------
ECHO %A%*%B%=%C%
PAUSE
GOTO:TOP
:EXI
EXIT
:HEL
CLS
ECHO --------------------------------------------------
ECHO[
ECHO                         HELP
ECHO[
ECHO --------------------------------------------------
ECHO Press (+) For Sum, (-) For Sub, (/) for Division, (*) for Multiply.
PAUSE
GOTO:TOP
:notepad
cls
color 0a
set name=United
title %name% - Win/DOS Notepad
:options
cls
echo ________________________________________
echo.
echo             Win/DOS Notepad
echo ________________________________________
echo - %name%
echo.
echo Press 0 to edit a document that already exists.
echo Press 1 to edit the name of your document.
echo Press 2 to edit the contents of your document.
echo Press 3 for help.
echo Press 4 to exit.

set /p you=">"
if %you%==1 goto 1
if %you%==2 goto 2
if %you%==3 goto help
if %you%==4 goto 4
if %you%==0 goto 0

cls
echo *********************************
echo Sorry, invalid number!
echo *********************************
ping localhost -n 2 >nul
goto options

:1
cls
echo ________________________________________
echo.
echo             Win/DOS Notepad
echo ________________________________________
echo - %name%
echo. 
echo Name Your Document .. eg. 'anyname.txt' or 'anyname.bat'
set /p name=">"
title %name% - Win/DOS Notepad

goto options

:2
cls
echo ________________________________________
echo.
echo             Win/DOS Notepad
echo ________________________________________
echo - %name%
echo. 
echo To add another line to your text press enter .. To stop editing press the big 
echo red X in the corner of this screen.
echo.
echo Cannot use symbols:"   > < |   " If you use any of them 3 symbols it closes!
echo.
set /p content=">"
echo %content%>>%name%
cls
echo Save Successful!
ping localhost -n 2 >nul
goto 2

:help
cls
echo ________________________________________
echo.
echo             Win/DOS Notepad
echo ________________________________________
echo - %name%
echo. 
echo.
pause
goto options

:4
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo __Win/DOS Notepad_________________________
echo.
echo             Win/DOS Notepad
echo ________________________________________
ping localhost -n 5 >nul
exit

:0
cls
echo ________________________________________
echo.
echo             Win/DOS Notepad
echo ________________________________________
echo - %name%
echo. 
echo Type in the name eg. 'anyname.txt' or 'anyname.bat'
echo The file has to be in the same directory as the Win/DOS Notepad Folder!
set /p edit=">"
edit %edit%
goto options
:dealornodeal
@echo off
echo Loading...
setlocal enabledelayedexpansion
set dealdone=0
set Spaces=                                           

for /l %%I in (1,1,22) do set gapline%%I= ___________ 

set amount1=1
set amount2=10
set amount3=50
set amount4=100
set amount5=500
set amount6=1000
set amount7=5000
set amount8=10000
set amount9=25000
set amount10=50000
set amount11=75000
set amount12=100000
set amount13=300000
set amount14=500000
set amount15=1000000
set amount16=1500000
set amount17=2000000
set amount18=3500000
set amount19=5000000
set amount20=7500000
set amount21=10000000
set amount22=25000000



set famount1=$0.01
set famount2=$0.1
set famount3=$0.50
set famount4=$1
set famount5=$5
set famount6=$10
set famount7=$50
set famount8=$100
set famount9=$250
set famount10=$500
set famount11=$750
set famount12=$1,000
set famount13=$3,000
set famount14=$5,000
set famount15=$10,000
set famount16=$15,000
set famount17=$20,000
set famount18=$35,000
set famount19=$50,000
set famount20=$75,000
set famount21=$100,000
set famount22=$250,000




set Damount1={___$0.01___}
set Damount2={____$0.1___}
set Damount3={____$0.5___}
set Damount4={_____$1____}
set Damount5={_____$5____}
set Damount6={____$10____}
set Damount7={____$50____}
set Damount8={____$100___}
set Damount9={____$250___}
set Damount10={____$500___}
set Damount11={____$750___}
set Damount12={___$1000___}
set Damount13={___$3000___}
set Damount14={___$5000___}
set Damount15={___$10000__}
set Damount16={___$15000__}
set Damount17={___$20000__}
set Damount18={___$35000__}
set Damount19={___$50000__}
set Damount20={___$75000__}
set Damount21={__$100000__}
set Damount22={__$250000__}




for /l %%I in (1,1,22) do set boxtop%%I= _____ 
for /l %%I in (1,1,22) do set boxlid%%I=[_____]
for /l %%I in (1,1,9) do set boxmid%%I=[  %%I  ]
for /l %%I in (10,1,22) do set boxmid%%I=[ %%I  ]
for /l %%I in (1,1,22) do set boxbot%%I=[_____]

for /l %%I in (23,1,24) do set boxtop%%I=       
for /l %%I in (23,1,24) do set boxlid%%I=       
for /l %%I in (23,1,24) do set boxmid%%I=       
for /l %%I in (23,1,24) do set boxbot%%I=       

for /l %%I in (1,4,24) do (
set /a box2number= %%I + 1
set /a box3number= %%I + 2
set /a box4number= %%I + 3
set DisplayLine%%I=#boxtop%%I##boxtop!box2number!##boxtop!box3number!##boxtop!box4number!#
)

for /l %%I in (2,4,24) do (
set /a boxnumber= %%I - 1
set /a box2number= !boxnumber! + 1
set /a box3number= !boxnumber! + 2
set /a box4number= !boxnumber! + 3
set DisplayLine%%I=#boxlid!boxnumber!##boxlid!box2number!##boxlid!box3number!##boxlid!box4number!#
)

for /l %%I in (3,4,24) do (
set /a boxnumber= %%I - 2
set /a box2number= !boxnumber! + 1
set /a box3number= !boxnumber! + 2
set /a box4number= !boxnumber! + 3
set DisplayLine%%I=#boxmid!boxnumber!##boxmid!box2number!##boxmid!box3number!##boxmid!box4number!#
)

for /l %%I in (4,4,24) do (
set /a boxnumber= %%I - 3
set /a box2number= !boxnumber! + 1
set /a box3number= !boxnumber! + 2
set /a box4number= !boxnumber! + 3
set DisplayLine%%I=#boxbot!boxnumber!##boxbot!box2number!##boxbot!box3number!##boxbot!box4number!#
)

set amountnumber1=0
set amountnumber2=11
for /l %%I in (1,2,22) do set /a AmountNumber1= !amountnumber1! + 1 && set /a Amountnumber2= !amountnumber2! + 1 && for /l %%J in (!Amountnumber1!,1,!Amountnumber1!) do for /l %%K in (!Amountnumber2!,1,!Amountnumber2!) do (
set Displayline%%I=#gapline%%J#            !Displayline%%I!            #gapline%%K#
)

set amountnumber1=0
set amountnumber2=11

for /l %%I in (2,2,22) do set /a AmountNumber1= !amountnumber1! + 1 && set /a Amountnumber2= !amountnumber2! + 1 && for /l %%J in (!Amountnumber1!,1,!Amountnumber1!) do for /l %%K in (!Amountnumber2!,1,!Amountnumber2!) do (
set Displayline%%I=#Damount%%J#            !Displayline%%I!            #Damount%%K#
)

for /l %%I in (23,1,24) do set displayline%%I=                         !Displayline%%I!                         

set amountsleft=
for /l %%I in (1,1,22) do set AmountsLeft=!Amountsleft!%%I,


set Amountnumber=1

:RandomNumber

set minval=1

set maxval=22

:NumberGenerator
set /a RandomNumber= %random% / 1489
set /a RandomNumber= %RandomNumber% + %MinVal%
if /i %RandomNumber% GTR %Maxval% goto NumberGenerator

if not defined box%randomnumber% (
set box%randomnumber%=%amountnumber%
set /a Amountnumber= !Amountnumber! + 1
if /i !amountnumber!==23 goto intro
)
goto Randomnumber


:intro
cls
echo Let's Play...
echo.
echo.
echo          ############################################
echo          #                                          #
echo          #   @@   @@@@   @   @            @   @@@   #
echo          #   @ @  @     @ @  @           @ @  @  @  #
echo          #   @  @ @    @   @ @          @   @ @     #
echo          #   @  @ @@@  @@@@@ @          @   @ @     #
echo          #   @ @  @    @   @ @           @ @  @     #
echo          #   @@   @@@@ @   @ @@@@         @   @     #
echo          #                                          #
echo          #   @  @   @         @@   @@@@   @   @     #
echo          #   @@ @  @ @        @ @  @     @ @  @     #
echo          #   @@ @ @   @       @  @ @    @   @ @     #
echo          #   @ @@ @   @       @  @ @@@@ @@@@@ @     #
echo          #   @ @@  @ @        @ @  @    @   @ @     #
echo          #   @  @   @         @@   @@@@ @   @ @@@@  #
echo          #                                          #
echo          ############################################
echo.
echo I do not own the "Deal Or No Deal" format or concept. All copyrights
echo and trademarks are property of their respective owners.
echo.
set /p helpyn="Press enter to continue, or type HELP for instructions.
if /i "%HelpYN%"=="HELP" (
cls
echo The aim of the game is to get as much money as possible for your box.
echo The game concept is simple. There are 22 sums of money inside 22 boxes.
echo The player must choose a box to keep, then remove the others from play,
echo one by one not knowing what sum is inside each box.
echo.
echo After a certain number of choices, The Banker will phone. He will make
echo you an offer to buy your box off you. You may choose to accept this offer,
echo or keep removing money. Removing high sums makes lower offers and vice-
echo versa.
echo.
echo If you play until there are only two boxes left, you have the choice to
echo open the box you started with, or switch to the other box. You win the
echo money in the box.
echo.
echo The knack to the game is knowing whether to take the deal or stop removing
echo money from the game.
pause
)
cls


:ChooseBox
call :display
set /p OwnBox="Choose your own box to keep:    "
if not defined Ownbox goto Choosebox
if /i not %ownbox%0 leq 220 goto ChooseBox
if /i not %ownbox%0 geq 10 goto ChooseBox

set boxtop%ownbox%=       
set boxlid%ownbox%=       
set boxmid%ownbox%=       
set boxbot%ownbox%=       


set BoxesLeft=22

Set turns=5

set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

Set turns=3
set boxmessage=Choose the box you want to open       
call :gameloop

if %dealdone%==1 exit /b

goto SwapOrNot


:gameLoop
cls
call :display
set boxtoremove=

:OpenBox
set /p BoxToRemove="%BoxMessage%"
if not defined BoxToRemove goto OpenBox
if /i not %BoxToRemove%0 leq 220 goto OpenBox
if /i not %BoxToRemove%0 geq 10 goto openBox
if /i %BoxToRemove%==%OwnBox% goto OpenBox
if /i "!Box%boxtoremove%!"=="DONE" goto OpenBox

call :removebox %boxtoremove%
set /a BoxesLeft=%BoxesLeft% - 1
set /a Turns= %Turns% - 1

if /i %turns%==0 (
cls
call :display
set /p asdfghj="You lost amount %Amountinbox%. The Phone is ringing, press enter to answer it."
set asdfghj=
call :MakeOffer
exit /b
)

set boxmessage=You lost amount %Amountinbox%. Choose the box you want to open.       

Goto GameLoop






:RemoveBox
set boxtop%1=       
set boxlid%1%=       
set boxmid%1=       
set boxbot%1=       

set AmountInBox=!Box%1!

call :Remove_Amounts %AmountInBox%
set Box%1=DONE
exit /b

:Remove_Amounts
set damount%1=             
set gapline%1=             

for /f "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 delims=," %%A in ("%AmountsLeft%") do (
set amountsleft=
if /i not %%A==%1 set AmountsLeft=%%A,
if /i not %%B==%1 set AmountsLeft=!AmountsLeft!%%B,
if /i not %%C==%1 set AmountsLeft=!AmountsLeft!%%C,
if /i not %%D==%1 set AmountsLeft=!AmountsLeft!%%D,
if /i not %%E==%1 set AmountsLeft=!AmountsLeft!%%E,
if /i not %%F==%1 set AmountsLeft=!AmountsLeft!%%F,
if /i not %%G==%1 set AmountsLeft=!AmountsLeft!%%G,
if /i not %%H==%1 set AmountsLeft=!AmountsLeft!%%H,
if /i not %%I==%1 set AmountsLeft=!AmountsLeft!%%I,
if /i not %%J==%1 set AmountsLeft=!AmountsLeft!%%J,
if /i not %%K==%1 set AmountsLeft=!AmountsLeft!%%K,
if /i not %%L==%1 set AmountsLeft=!AmountsLeft!%%L,
if /i not %%M==%1 set AmountsLeft=!AmountsLeft!%%M,
if /i not %%N==%1 set AmountsLeft=!AmountsLeft!%%N,
if /i not %%O==%1 set AmountsLeft=!AmountsLeft!%%O,
if /i not %%P==%1 set AmountsLeft=!AmountsLeft!%%P,
if /i not %%Q==%1 set AmountsLeft=!AmountsLeft!%%Q,
if /i not %%R==%1 set AmountsLeft=!AmountsLeft!%%R,
if /i not %%S==%1 set AmountsLeft=!AmountsLeft!%%S,
if /i not %%T==%1 set AmountsLeft=!AmountsLeft!%%T,
if /i not %%U==%1 set AmountsLeft=!AmountsLeft!%%U,
if /i not %%V==%1 set AmountsLeft=!AmountsLeft!%%V,
)

set amountinbox=!FAmount%1!
exit /b









:MakeOffer
set amount=0
for /f "tokens=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 delims=," %%A in ("%AmountsLeft%") do (
set /a Offer= !Amount%%A! + !Amount%%B! + !Amount%%C! + !Amount%%D! + !Amount%%E! + !Amount%%F! + !Amount%%G! + !Amount%%H! + !Amount%%I! + !Amount%%J! + !Amount%%K! + !Amount%%L! + !Amount%%M! + !Amount%%N! + !Amount%%O! + !Amount%%P! + !Amount%%Q! + !Amount%%R! + !Amount%%S! + !Amount%%T! + !Amount%%U! + !Amount%%V! + 0
)
set /a Offer= (%Offer%/((%BoxesLeft%*999)/500))/100


cls
echo.
echo               ####################################       
echo              ##                                  ##      
echo             ##    ############################    ##    
echo              ######     ##            ##     ######       
echo                      ######################        
echo                      #######        #######      
echo                      #####            #####       
echo                      ####              ####     
echo                      ####              ####   
echo                      #####            #####   
echo                     #######          #######
echo                    ##########################
echo                   ############################         
echo                  ##############################           
echo                 ################################          
echo.
echo.
echo                   The Banker Offers: $%Offer%
echo.
echo.
echo                        DEAL OR NO DEAL?
:DealOrNoDeal
set deal=
set /p Deal="       "
if not defined Deal goto DealOrNoDeal
if /i %Deal:~0,1%==d echo.&& Goto Deal_Taken
if /i %Deal:~0,1%==N (exit /b) else (goto :DealOrNoDeal)









:Display


echo/ %displayline1:#=!%
echo/ %displayline2:#=!%
echo/ %displayline3:#=!%
echo/ %displayline4:#=!%
echo/ %displayline5:#=!%
echo/ %displayline6:#=!%
echo/ %displayline7:#=!%
echo/ %displayline8:#=!%
echo/ %displayline9:#=!%
echo/ %displayline10:#=!%
echo/ %displayline11:#=!%
echo/ %displayline12:#=!%
echo/ %displayline13:#=!%
echo/ %displayline14:#=!%
echo/ %displayline15:#=!%
echo/ %displayline16:#=!%
echo/ %displayline17:#=!%
echo/ %displayline18:#=!%
echo/ %displayline19:#=!%
echo/ %displayline20:#=!%
echo/ %displayline21:#=!%
echo/ %displayline22:#=!%
echo/ %displayline23:#=!%
echo/ %displayline24:#=!%

exit /b



:SwapOrNot
cls
echo.
echo               ####################################    
echo              ##                                  ##   
echo             ##    ############################    ##   
echo              ######     ##            ##     ###### 
echo                      ######################        
echo                      #######        #######         
echo                      #####            #####     
echo                      ####              ####  
echo                      ####              ####   
echo                      #####            #####      
echo                     #######          #######
echo                    ##########################
echo                   ############################           
echo                  ##############################       
echo                 ################################       
echo.
echo.
echo                The Banker Has Offered You The Swap
echo.
echo.
echo                        SWAP OR NO SWAP?

:SwapOrNoSwap
set swap=
set /p Swap="       "
if not defined Swap goto SwapOrNoSwap
if /i %Swap:~0,1%==S echo.&& goto Swap_Taken
if /i %Swap:~0,1%==N (echo.&& goto Swap_Not_Taken) else (goto SwapOrNoSwap)




:Swap_Not_Taken
for /f "tokens=1,2 delims=," %%I in ("%AmountsLeft%") do if /i "%%I"=="!Box%OwnBox%!" (set Offer=!Amount%%I!& set OtherBox=%%J& Set OwnBox=%%I) else (set offer=!Amount%%J!& set OtherBox=%%I&& Set OwnBox=%%J)
if /i %offer% lss 100 set offer=0.%offer%&& goto SwapResult
set /a offer= %offer% / 100
if /i %Offer% geq 35000 call :bigWin
goto SwapResult






:Swap_Taken
for /f "tokens=1,2 delims=," %%I in ("%AmountsLeft%") do if /i "%%I"=="!Box%OwnBox%!" (set Offer=!Amount%%J!& set OtherBox=%%I& Set OwnBox=%%J) else (set offer=!Amount%%I!& set OtherBox=%%J& Set OwnBox=%%I)
if /i %offer% lss 100 set offer=0.%offer%&& goto SwapResult
set /a offer= %offer% / 100
if /i %Offer% geq 35000 call :bigWin






:SwapResult
if /i %OwnBox% gtr %Otherbox% (
Echo You took the chance and won :D Well done
) else (
echo Hard luck, you got the smaller prize.
)
echo You won $%Offer% :)
pause>nul
goto endofgame






:Deal_Taken

set dealdone=1

if /i %Offer% geq 35000 call :bigWin

if /i %offer% lss 100 (
set Newoffer=0.%offer%
) else (
set Newoffer=%offer%
)


set temp=!Box%ownbox%!

if /i !Amount%temp%! lss 100 (
set Newtemp=0.!Amount%temp%!
) Else (
set /a Newtemp= !Amount%temp%! / 100
)

if /i %newtemp:.=% gtr %offer% (
echo Hard luck, in your box there was $%newtemp%, but you dealed at $%Newoffer%
)

if /i %newtemp:.=% lss %offer% (
echo Well done, you beat the banker :D
echo Your box was worth $%newtemp% but you sold it for $%NewOffer%
)

if /i %newtemp:.=% equ %offer% (
echo You managed to sell your box for exactly what it was worth, well done :D
echo You won $%NewOffer% :)
)
pause >nul
goto EndOfGame











:BigWin
cls
echo #######################################################
echo #                                                     #
echo #                                                     #
echo #   @       @   @   @   @   @   @   @@@@   @@@@   @   #
echo #   @       @   @   @@  @   @@  @   @      @   @  @   #
echo #   @       @   @   @ @ @   @ @ @   @      @  @   @   #
echo #   @   @   @   @   @ @ @   @ @ @   @@@    @@@    @   #
echo #   @  @ @  @   @   @ @ @   @ @ @   @      @  @   @   #
echo #   @ @   @ @   @   @ @ @   @ @ @   @      @   @      #
echo #    @     @    @   @  @@   @  @@   @@@@   @   @  @   #
echo #                                                     #
echo #                                                     #
echo #######################################################
echo.
echo.
exit /b
:endOfGameexit /b
:snake

@echo off
if "%~1" == "startGame" goto :game
if "%~1" == "startController" goto :controller


::---------------------------------------------------------------------
:: setup some global variables used by both the game and the controller

setlocal disableDelayedExpansion
set "toggleVT100="
:getSession
if defined temp (set "tempFileBase=%temp%\") else if defined tmp set "tempFileBase=%tmp%\"
set "tempFileBase=%tempFileBase%Snake%time::=_%"
set "keyFile=%tempFileBase%_key.txt"
set "cmdFile=%tempFileBase%_cmd.txt"
set "gameLock=%tempFileBase%_gameLock.txt"
set "gameLog=%tempFileBase%_gameLog.txt"
set "signal=%tempFileBase%_signal.txt"
set "saveLoc=%userprofile%\Snake"
set "userPref=%saveLoc%\SnakeUserPref.txt"
set "hiFile=%saveLoc%\Snake!size!!growth!Hi"
set "keyStream=9"
set "cmdStream=8"
set "lockStream=7"


::------------------------------------------
:: Lock this game session and launch.
:: Loop back and try a new session if failure.
:: Cleanup and exit when finished

call :launch %lockStream%>"%gameLock%" || goto :getSession
del "%tempFileBase%*"
exit /b


::------------------------------------------
:launch the game and the controller

call :fixLogs
:relaunch
copy nul "%keyFile%" >nul
copy nul "%cmdFile%" >nul
start "" /b cmd /c ^""%~f0" startController %keyStream%^>^>"%keyFile%" %cmdStream%^<"%cmdFile%" 2^>nul ^>nul^"
cmd /c ^""%~f0" startGame %keyStream%^<"%keyFile%" %cmdStream%^>^>"%cmdFile%" ^<nul^"
echo(


::--------------------------------------------------------------
:: Upon exit, wait for the controller to close before returning

:close
2>nul (>>"%keyFile%" call )||goto :close
if "%=exitcode%" equ "00000002" (
  set "toggleVT100=1"
  goto :relaunch
) else if "%=exitcode%" equ "00000001" (
  echo Game play can be improved by installing
  echo Aacini's CursorPos.exe, available at
  echo http://goo.gl/hr6Kkn
  echo(
  echo Alternatively, if your console supports
  echo VT100 escape sequences, then you can
  echo enable VT100 mode within the SNAKE.BAT
  echo Graphic options menu.
  echo(
  echo %cmdcmdline%|find /i "%~f0">nul&&pause
)
exit /b 0


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:game
title %~nx0
cls

::---------------------------------------
:: Default playfield size
:: max playing field: (width-2)*(height-2) <= 1365

set "size=Medium"
set "dispWidth=40"   max=99
set "dispHeight=25"  max=99
set "defaultSize=%size%"
set /a "defaultWidth=dispWidth, defaultHeight=dispHeight"

::----------------------------
:: Other default values

set "moveKeys=4"

set "up=W"
set "down=S"
set "left=A"
set "right=D"
set "pause=P"

set "space= "
set "bound=#"
set "food=+"
set "head=@"
set "body=O"
set "death=X"

set "vt0=OFF"
set "vt1=ON"
set "vt=0"

set "growth=1"

::---------------------------
:: Load user preferences
if exist "%userPref%" for /f "usebackq delims=" %%V in ("%userPref%") do set "%%V"
call :resize

::---------------------------
:: Variable constants

set "configOptions=diffCode difficulty growth moveKeys up down left right size dispWidth dispHeight"

for %%S in (
 "T Tiny   15 10"
 "S Small  25 15"
 "M Medium 40 25"
 "L Large  47 32"
 "W Wide   82 19"
 "N Narrow 20 40"
) do for /f "tokens=1-4" %%A in (%%S) do (
  set "size%%A=%%B"
  set /a "width%%A=%%C, height%%A=%%D"
)

set "spinner1=-"
set "spinner2=\"
set "spinner3=|"
set "spinner4=/"
set "spinner= spinner1 spinner2 spinner3 spinner4 "

set "delay1=20"
set "delay2=15"
set "delay3=10"
set "delay4=7"
set "delay5=5"
set "delay6=3"

set "desc1=Sluggard"
set "desc2=Crawl"
set "desc3=Slow"
set "desc4=Normal"
set "desc5=Fast"
set "desc6=Insane"

set "spinnerDelay=3"

:: define LF as a Line Feed (newline) character
set ^"LF=^

^" Above empty line is required - do not remove

:: define CR as a Carriage Return character
for /f %%A in ('copy /Z "%~dpf0" nul') do set "CR=%%A"

:: define BS as a BackSpace character
for /f %%A in ('"prompt $H&for %%B in (1) do rem"') do set "BS=%%A"

set "upper=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
set "invalid=*~="

::---------------------------
:: define macros

if %vt% equ 1 (
  for /f "delims=" %%E in (
    'forfiles /p "%~dp0." /m "%~nx0" /c "cmd /c echo(0x1B"'
  ) do (
    cls
    <nul set /p "=%%E7"
    set "cls=<nul set /p "=%%E8""
    set "ClearLine=<nul set /p "=%%E[K""
    set "ClearPrev=echo(&echo(%%E[F%%E[K"
    set "Up4=echo(%%E[F%%E[F%%E[F%%E[F%%E[F"
    set "ShowCursor=<nul set /p "=%%E[?25h""
    set "HideCursor=<nul set /p "=%%E[?25l""
    set "exitCode=0"
  )
) else if exist "%~dp0CursorPos.exe" (
  set "cls=CursorPos 0 0"
  set "ClearLine=echo(                                   &CursorPos 0 -1"
  set "ClearPrev=CursorPos 0 -0&echo(                                   "
  set "Up4=CursorPos 0 -4"
  set "ShowCursor="
  set "HideCursor="
  set "exitCode=0"
) else (
  set "cls=cls"
  set "ClearLine="
  set "ClearPrev="
  set "Up4="
  set "ShowCursor="
  set "HideCursor="
  set "exitCode=1"
)

:: define a newline with line continuation
set ^"\n=^^^%LF%%LF%^%LF%%LF%^^"

:: setErr
:::  Sets the ERRORLEVEL to 1
set "setErr=(call)"

:: clrErr
:::  Sets the ERRORLEVEL to 0
set "clrErr=(call )"


:: sendCmd  command
:::  sends a command to the controller
set "sendCmd=>&%cmdStream% echo"


:: getKey  [ValidKey]  [ValidKey...]
::: Check for keypress from the controller. Only accept a ValidKey.
::: Token delimiters and poison characters must be quoted.
::: Accept any key if no ValidKey specified.
::: Return result in Key variable. Key is undefined if no valid keypress.
set getKey=%\n%
for %%# in (1 2) do if %%#==2 (%\n%
  set key=%\n%
  set inKey=%\n%
  set keyTest=%\n%
  ^<^&%keyStream% set /p "inKey="%\n%
  if defined inKey (%\n%
    set inKey=!inKey:~0,-1!%\n%
    for %%C in (!args!) do set /a keyTest=1^&if /i !inKey! equ %%~C set key=!inKey!%\n%
  )%\n%
  if not defined keyTest set key=!inKey!%\n%
) else set args=


:: draw
:::  draws the board
set draw=%\n%
set screen=%\n%
for /l %%Y in (0,1,!height!) do set screen=!screen!!line%%Y!!LF!%\n%
set screen=!screen!Speed = !Difficulty! !replay!!LF!Growth Rate = !growth!   HighScore = !hi!!LF!Score = !score!   Time = !m!:!s!%\n%
if defined replay if not defined replayFinished (%\n%
  set screen=!screen!!LF!!LF!Press a key to abort the replay%\n%
)%\n%
%cls%^&echo(!screen!

:: test  X  Y  ValueListVar
:::  tests if value at coordinates X,Y is within contents of ValueListVar
set test=%\n%
for %%# in (1 2) do if %%#==2 (for /f "tokens=1-3" %%1 in ("!args!") do (%\n%
  for %%A in ("!line%%2:~%%1,1!") do if "!%%3:%%~A=!" neq "!%%3!" %clrErr% else %setErr%%\n%
)) else set args=


:: plot  X  Y  ValueVar
:::  places contents of ValueVar at coordinates X,Y
set plot=%\n%
for %%# in (1 2) do if %%#==2 (for /f "tokens=1-3" %%1 in ("!args!") do (%\n%
  set "part2=!line%%2:~%%1!"%\n%
  set "line%%2=!line%%2:~0,%%1!!%%3!!part2:~1!"%\n%
)) else set args=


::--------------------------------------
:: start the game
setlocal enableDelayedExpansion
if not exist "%saveLoc%\" md "%saveLoc%"
set "replay= Aborting... "
set "replayAvailable="
if exist "!gameLog!" set "replayAvailable=R"
call :loadHighScores
call :mainMenu


::--------------------------------------
:: main loop (infinite loop)
for /l %%. in () do (

  %=== check for and process abort signal if in replay mode ===%
  if defined replay if exist "%signal%" (
    del "%signal%"
    set "replayFinished=1"
    %draw%
    echo(
    %ClearLine%
    <nul set /p "=Aborting... "
    findstr "^" >nul <&%keyStream%
    for %%A in (!configOptions!) do set "%%A=!%%ASave!"
    %ShowCursor%
    call :mainMenu
  )

  %=== compute time since last move ===%
  for /f "tokens=1-4 delims=:.," %%a in ("!time: =0!") do set /a "t2=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100, tDiff=t2-t1"
  if !tDiff! lss 0 set /a tDiff+=24*60*60*100

  if !tDiff! geq !delay! (
    %=== delay has expired, so time for movement ===%
    set /a t1=t2

    %=== compute game time ===%
    if not defined gameStart set "gameStart=!t2!"
    set /a "gameTime=(t2-gameStart)"
    if !gameTime! lss 0 set /a "gameTime+=24*60*60*100"
    set /a "gameTime=(gameTime-pauseTime)/100, m=gameTime/60, s=gameTime%%60"
    if !m! lss 10 set "m=0!m!"
    if !s! lss 10 set "s=0!s!"

    %=== get keypress ===%
    %getKey% !keys!
    if /i !key! equ !pause! (

      %=== pause game ===%
      echo(
      %ShowCursor%
      call :ask "PAUSED - Press a key to continue..."
      %HideCursor%
      %ClearPrev%
      %sendCmd% go
      for /f "tokens=1-4 delims=:.," %%a in ("!time: =0!") do set /a "t2=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100, tDiff=t2-t1"
      if !tDiff! lss 0 set /a tDiff+=24*60*60*100
      set /a pauseTime+=tDiff

    ) else (

      %=== establish direction ===%
      if not defined replay (echo(!key!.) >>"!gameLog!"
      for %%K in (!key!) do if !moveKeys! equ 2 (
        set /a "xDiff=xTurn%%K*!yDiff!, yDiff=yTurn%%K*!xDiff!"
      ) else if "!%%KAxis!" neq "!axis!" (
        set /a "xDiff=xDiff%%K, yDiff=yDiff%%K"
        set "axis=!%%KAxis!"
      )

      %=== erase the tail ===%
      set "TX=!snakeX:~-2!"
      set "TY=!snakeY:~-2!"
      set "snakeX=!snakeX:~0,-2!"
      set "snakeY=!snakeY:~0,-2!"
      %plot% !TX! !TY! space

      %=== compute new head location and attempt to move ===%
      set /a "X=PX+xDiff, Y=PY+yDiff"
      set "X= !X!"
      set "Y= !Y!"
      set "X=!X:~-2!"
      set "Y=!Y:~-2!"
      (%test% !X! !Y! playerSpace) && (

        %=== move successful ===%

        %=== remove the new head location from the empty list ===%
        for %%X in ("!X!") do for %%Y in ("!Y!") do set "empty=!empty:#%%~X %%~Y=!"

        %=== eat any food that may be present ===%
        (%test% !X! !Y! food) && (
          %=== initiate growth ===%
          set /a grow+=growth

          %=== locate and draw new food ===%
          if defined replay (
            <&%keyStream% set /p "F="
          ) else (
            set /a "F=(!random!%%(emptyCnt-1))*6+1"
            (echo !F!) >>"!gameLog!"
          )
          for %%F in (!F!) do (%plot% !empty:~%%F,5! food)
        )

        if !grow! gtr 0 (
          %=== restore the tail ===%
          %plot% !TX! !TY! body
          set "snakeX=!snakeX!!TX!"
          set "snakeY=!snakeY!!TY!"
          set /a emptyCnt-=1

          %=== manage score ===%
          set /a "score+=1, grow-=1"
          if not defined replay if !score! gtr !hi! set /a "hi+=1, newHi=1"

        ) else (
          %=== add the former tail position to the empty list ===%
          set "empty=!empty!#!TX! !TY!"
        )

        %=== draw the new head ===%
        if defined snakeX (%plot% !PX! !PY! body)
        %plot% !X! !Y! head

        %=== Add the new head position to the snake strings ===%
        set "snakeX=!X!!snakeX!"
        set "snakeY=!Y!!snakeY!"
        set "PX=!X!"
        set "PY=!Y!"

        %draw%

      ) || (

        %=== failed move - game over ===%
        set "replayFinished=1"
        %plot% !TX! !TY! body
        call :spinner !PX! !PY! death
        %draw%
        if defined newHi (
          echo(
          echo New High Score - Congratulations^^!
          set "hi!diffCode!=!score!"
          copy "!gameLog!" "%hiFile%!diffCode!.txt" >nul
          >>"%hiFile%!diffCode!.txt" echo ::!score!
        )
        echo(
        %ClearLine%
        %ShowCursor%
        call :ask "Press a key to continue..."
        for %%A in (!configOptions!) do set "%%A=!%%ASave!"
        call :mainMenu
      )
    )
  )
)


::-------------------------------------
:getString  Prompt  Var  MaxLen
:: Prompt for a string with max lengh of MaxLen.
:: Valid keys are alpha-numeric, space, underscore, and dash
:: String is terminated by Enter
:: Backspace works to delete previous character
:: Result is returned in Var
set /a "maxLen=%3"
set "%2="
%sendCmd% prompt
<nul set /p "=%~1 "
call :purge
:getStringLoop
(%getKey% !upper! 0 1 2 3 4 5 6 7 8 9 " " _ - {Enter} !BS!)
if defined key (
  if !key! equ {Enter} (
    echo(
    exit /b
  )
  if !key! neq !BS! if !maxLen! gtr 0 (
    set /a maxLen-=1
    <nul set /p "=.!BS!!key!"
    set "%2=!%2!!key!
  )
  if !key! equ !BS! if defined %2 (
    set /a maxLen+=1
    <nul set /p "=!BS! !BS!"
    set "%2=!%2:~0,-1!"
  )
)
if defined inKey %sendCmd% one
goto :getStringLoop


::-------------------------------------
:ask  Prompt  ValidKey [Validkey]...
:: Prompt for a keypress.
:: Wait until a ValidKey is pressed and return result in Key variable.
:: Token delimiters, ), and poison characters must be quoted.
%sendCmd% prompt
<nul set /p "=%~1 "
(set validKeys=%*)
(set validKeys=!validKeys:%1=!)
call :purge
:getResponse
(%getKey% !validKeys!)
if not defined key (
  if defined inKey %sendCmd% one
  goto :getResponse
)
exit /b


:purge
set "inKey="
for /l %%N in (1 1 1000) do (
  set /p "inKey="
  if "!inKey!" equ "{purged}." exit /b
)<&%keyStream%
goto :purge


::-------------------------------------
:spinner  X  Y  ValueVar
set /a d1=-1000000
for /l %%N in (1 1 5) do for %%C in (%spinner%) do (
  call :spinnerDelay
  %plot% %1 %2 %%C
  %draw%
)
call :spinnerDelay
(%plot% %1 %2 %3)
exit /b


::-------------------------------------
:delay  centiSeconds
setlocal
for /f "tokens=1-4 delims=:.," %%a in ("!time: =0!") do set /a "spinnerDelay=%1, d1=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100"
:: fall through to :spinnerDelay

::-------------------------------------
:spinnerDelay
for /f "tokens=1-4 delims=:.," %%a in ("!time: =0!") do set /a "d2=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100, dDiff=d2-d1"
if %dDiff% lss 0 set /a dDiff+=24*60*60*100
if %dDiff% lss %spinnerDelay% goto :spinnerDelay
set /a d1=d2
exit /b


::-------------------------------------
:mainMenu
if defined toggleVT100 call :graphicOptions
cls
call :resize
set "loadAvailable="
echo SNAKE.BAT v4.0 by Dave Benham
echo(
echo Main Menu:
echo(
echo   N - New game
echo   F - Field size..... !size!
echo   W - groWth rate.... !growth!
echo   C - Control options
echo   G - Graphic options

if defined replayAvailable echo   R - Replay previous game
if defined saveAvailable   echo   S - Save a game
if exist *.snake.txt       echo   L - Load and watch a saved game&set "loadAvailable=L"

echo   Q - Quit
echo(
set "hiAvailable="
for /l %%N in (1 1 6) do if defined hi%%N (
  if not defined hiAvailable (
    echo Replay High Score:
    echo(
  )
  set "desc=!desc%%N!........"
  set "hiAvailable=!hiAvailable! %%N"
  echo   %%N - !desc:~0,8! !hi%%N!
)
if defined hiAvailable echo(
set "keys=N F W C G Q !hiAvailable! !replayAvailable! !saveAvailable! !loadAvailable!"
call :ask ">" !keys!
if /i !key! equ Q (
  %sendCmd% quit
  cls
  exit %exitCode%
) else if /i !key! equ N (
  set "replay="
  set "replayAvailable=R"
  set "saveAvailable=S"
  goto :initialize
) else if /i !key! equ S (
  if defined replayAvailable (
    call :ask "HighScore # or P for Previous:" !hiAvailable! P
  ) else (
    call :ask "HighScore #:" !hiAvailable!
  )
  echo !key!
  if /i !key! equ P (set "src=!gameLog!") else set "src=%hiFile%!key!.txt"
  call :getString "Save file name:" file 20
  copy "!src!" "!file!.snake.txt"
  call :ask "Press a key to continue..."
) else if /i !key! equ L (
  call :getString "Load file name:" file 20
  if exist "!file!.snake.txt" (
    set "replay=!file!.snake.txt"
    goto :initialize
  )
  echo Error: File "!file!.snake.txt" not found
  call :ask "Press a key to continue..."
) else if /i !key! equ R (
  set "replay=!gameLog!"
  goto :initialize
) else if /i !key! equ C (
  call :controlOptions
) else if /i !key! equ G (
  call :graphicOptions
) else if /i !key! equ F (
  call :sizeOptions
) else if /i !key! equ W (
  call :ask "Press a digit for growth rate (0 = 10)" 0 1 2 3 4 5 6 7 8 9
  if !key! equ 0 set "key=10"
  set "growth=!key!"
  call :loadHighScores
) else if !key! geq 1 if !key! leq 6 (
  set "replay=%hiFile%!key!.txt"
  goto :initialize
)
goto :mainMenu


::-------------------------------------
:sizeOptions
cls
set "keys=T S M L W N"
echo Field Size Options:
echo(
echo   T - Tiny   15 x 10
echo   S - Small  30 x 20
echo   M - Medium 40 x 25
echo   L - Large  47 x 32
echo   W - Wide   82 x 19
echo   N - Narrow 15 x 40
echo(
call :ask ">" !keys!
set "size=!size%key%!"
set /a "dispWidth=!width%key%!, dispHeight=!height%key%!"
call :loadHighScores
goto :saveUserPrefs
exit /b


::-------------------------------------
:controlOptions
cls
set "keys={Enter} T L R P"
if !moveKeys! equ 4 set "keys=!keys! U D"
                    echo Control Options:
                    echo(
                    echo   T - Type... = !moveKeys! keys
                    echo(
                    echo   L - Left... = !left!
                    echo   R - Right.. = !right!
if !moveKeys! equ 4 echo   U - Up..... = !up!
if !moveKeys! equ 4 echo   D - Down... = !down!
                    echo(
                    echo   P - Pause.. = !pause!
                    echo(
                    echo   {Enter} - Return to Main Menu
                    echo(
call :ask ">" !keys!
if !key! equ {Enter} goto :saveUserPrefs
if /i !key! equ T (
  if !moveKeys! equ 2 (set "moveKeys=4") else set "moveKeys=2"
  goto :controlOptions
)
set "option= LLeft RRight UUp DDown PPause"
for /f %%O in ("!option:* %key%=!") do (
  call :ask "Press a key for %%O:"
  for %%K in (0 1 2) do if "!key!" equ "!invalid:~%%K,1!" goto :controlOptions
  for %%C in (!upper!) do set "key=!key:%%C=%%C!"
  set "%%O=!key!"
)
goto :controlOptions


::-------------------------------------
:graphicOptions
set "toggleVT100="
cls
echo Graphic Options:
echo(
echo   B - Border...... = !bound!
echo   E - Empty space. = !space!
echo   H - snake Head.. = !head!
echo   S - Snake body.. = !body!
echo   F - Food........ = !food!
echo   D - Death....... = !death!
echo(
echo   V - VT100 mode.. = !vt%vt%!
echo(
echo   {Enter} - Rturn to Main Menu
echo(
call :ask ">" B E H S F D V {Enter}
if !key! equ {Enter} goto :saveUserPrefs
if /i !key! equ V (
  set /a "vt=^!vt"
  call :saveUserPrefs
  %sendCmd% quit
  exit 2
) else (
  set "option=-BBorder:bound:-EEmpty Space:space:-HSnake Head:head:-SSnake Body:body:-FFood:food:-DDeath:death:"
  for /f "tokens=1,2 delims=:" %%A in ("!option:*-%key%=!") do (
    call :ask "Press a key for %%A"
    for %%K in (0 1 2) do if "!key!" equ "!invalid:~%%K,1!" goto :graphicOptions
    set "%%B=!key!"
  )
)
goto :graphicOptions


::------------------------------------
:saveUserPrefs
(for %%V in (moveKeys up down left right space bound food head body death pause growth vt size dispWidth dispHeight) do echo %%V=!%%V!) >"%userPref%"
exit /b


::-------------------------------------
:initialize
cls
if defined replay (
  echo Replay Speed Options:
) else (
  echo Speed Options:
)
echo                       delay
echo    #   Description  (seconds)
echo   ---  -----------  ---------
for /l %%N in (1 1 6) do (
  set "delay=0!delay%%N!"
  set "desc=!desc%%N!           "
  echo    %%N   !desc:~0,11!    0.!delay:~-2!
)
echo(
call :ask "Pick a speed (1-6):" 1 2 3 4 5 6
set "difficulty=!desc%key%!"
set "delay=!delay%key%!"
set "diffCode=%key%"
echo %key% - %difficulty%
echo(
<nul set /p "=Initializing."
for %%A in (!configOptions!) do set "%%ASave=!%%A!"
if defined replay (
  %sendCmd% replay
  %sendCmd% !replay!
  call :waitForSignal
  set "replay=(REPLAY at !difficulty!)"
  set "size=%defaultSize%"
  set /a "dispWidth=defaultWidth, dispHeight=defaultHeight"
  :loadReplayConfig
  <&%keyStream% set /p "ln="
  if "!ln!" neq "END" set "!ln!" & goto :loadReplayConfig
  call :resize
)
set "axis=X"
set "xDiff=+1"
set "yDiff=+0"
set "empty="
set /a "PX=1, PY=height/2, FX=width/2+1, FY=PY, score=0, emptyCnt=0, t1=-1000000"
set "gameStart="
set "m=00"
set "s=00"
set "snakeX= %PX%"
set "snakeY= %PY%"
set "snakeX=%snakeX:~-2%"
set "snakeY=%snakeY:~-2%"
for /l %%Y in (0 1 %height%) do (
  <nul set /p "=."
  set "line%%Y="
  for /l %%X in (0,1,%width%) do (
    set "cell="
    if %%Y equ 0        set "cell=%bound%"
    if %%Y equ %height% set "cell=%bound%"
    if %%X equ 0        set "cell=%bound%"
    if %%X equ %width%  set "cell=%bound%"
    if %%X equ %PX% if %%Y equ %PY% set "cell=%head%"
    if not defined cell (
      set "cell=%space%"
      set "eX= %%X"
      set "eY= %%Y"
      set "empty=!empty!#!eX:~-2! !eY:~-2!"
      set /a emptyCnt+=1
    )
    if %%X equ %FX% if %%Y equ %FY% set "cell=%food%"
    set "line%%Y=!line%%Y!!cell!"
  )
)
set "replayFinished="
if defined replay (
  set "keys="
  set "hi=0"
  for /f "delims=:" %%A in ('findstr "^::" "%hiFile%!diffCode!.txt" 2^>nul') do set "hi=%%A"
  %HideCursor%
  cls
  (%draw%)
  call :delay 100
) else (
  if defined hi%diffCode% (set "hi=!hi%diffCode%!") else set "hi=0"
  cls
  (%draw%)
  >"!gameLog!" ( 
    for %%A in (!configOptions!) do (echo %%A=!%%A!)
    (echo END)
  )
  echo(
  if !moveKeys! equ 4 (
    echo Controls: !up!=up !down!=down !left!=left !right!=right !pause!=pause
  ) else (
    echo Controls: !left!=left !right!=right !pause!=pause
  )
  echo Avoid running into yourself (!body!!body!!head!^) or wall (!bound!^)
  echo Eat food (!food!^) to grow.
  echo(
  call :ask "Press a key to start..."
  %HideCursor%
  %sendCmd% go
)
set "pauseTime=0"
set "xDiff!up!=+0"
set "xDiff!down!=+0"
set "xDiff!left!=-1"
set "xDiff!right!=+1"
set "yDiff!up!=-1"
set "yDiff!down!=+1"
set "yDiff!left!=+0"
set "yDiff!right!=+0"
set "!up!Axis=Y"
set "!down!Axis=Y"
set "!left!Axis=X"
set "!right!Axis=X"
set "xTurn!left!=1"
set "xTurn!right!=-1"
set "yTurn!left!=-1"
set "yTurn!right!=1"
set "playerSpace=!space!!food!"
set ^"keys="!left!" "!right!" "!pause!"^"
set "newHi="
set "grow=0"
if !moveKeys! equ 4 set ^"keys=!keys! "!up!" "!down!"^"
if defined Up4 if not defined replay (
  %Up4%
  for /l %%N in (1 1 5) do (echo(                                             )
)
exit /b


::-------------------------------------
:waitForSignal
if not exist "%signal%" goto :waitForSignal
del "%signal%"
exit /b


::-------------------------------------
:loadHighScores
set "saveAvailable="
for /l %%N in (1 1 6) do (
  set "hi%%N="
  for /f "delims=:" %%A in ('findstr "^::" "%hiFile%%%N.txt" 2^>nul') do (
    set "hi%%N=%%A"
    set "saveAvailable=S"
  )
)
exit /b


::----------------------------
:resize the console window
set /a cols=dispWidth+1, lines=dispHeight+10, area=(dispWidth-2)*(dispHeight-2)
if %area% gtr 1365 (
  echo ERROR: Playfield area too large
  %sendCmd% quit
  exit
)
if %lines% lss 25 set lines=25
if %cols% lss 46 set cols=46
mode con: cols=%cols% lines=%lines%
set /a "width=dispWidth-1, height=dispHeight-1"
set "resize="
exit /b


::-------------------------------------
:fixLogs
setlocal enableDelayedExpansion
for %%F in (*.snake) do (
  ren "%%F" "%%F.txt"
  call :fixLog "%%F.txt"
)
pushd "%SaveLoc%"
for /f "delims=" %%F in ('dir /b SnakeHi*.txt 2^>nul') do (
  set "file=%%~nF"
  set "file=Snake1Hi!file:~-1!.txt"
  ren "%%F" "!file!"
  call :fixLog "!file!"
)
for /f "tokens=1* delims=eE" %%A in (
  'dir /b Snake*Hi*.txt ^| findstr /i "^Snake[0-9]"'
) do ren "Snake%%B" "SnakeMedium%%B"
popd
exit /b

:fixLog  filePath
>"%~1.new" (
  <"%~1" (
    for %%A in (diffCode difficulty moveKeys up down left right) do (
      set /p "val="
      (echo %%A=!val!)
    )
  )
  (echo growth=1)
  (echo END)
  more +7 "%~1"
)
move /y "%~1.new" "%~1" >nul
exit /b


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:controller
:: Detects keypresses and sends the information to the game via a key file.
:: The controller has various modes of input that are activated by commands sent
:: from the game via a cmd file.
::
:: Modes:
::
::   hold   - No input, wait for command
::
::   go     - Continuously get/send key presses
::
::   prompt - Send {purged} marker to allow game to purge input buffer, then
::            get/send a single key press and hold
::
::   one    - Get/send a single key press and hold
::
::   replay - Copy a game log to the key file. The next line in cmd file
::            specifies name of log file to copy. During replay, the controller
::            will send an abort signal to the game if a key is pressed.
::
::   quit   - Immediately exit the controller process
::
:: As written, this routine incorrectly reports ! as ), but that doesn't matter
:: since we don't need that key. Both <CR> and Enter key are reported as {Enter}.
:: An extra character is appended to the output to preserve any control chars
:: when read by SET /P.

setlocal enableDelayedExpansion
for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
set "cmd=hold"
set "inCmd="
set "key="
for /l %%. in () do (
  if "!cmd!" neq "hold" (
    for /f "delims=" %%A in ('xcopy /w "%~f0" "%~f0" 2^>nul') do (
      if not defined key set "key=%%A"
    )
    set "key=!key:~-1!"
    if !key! equ !CR! set "key={Enter}"
  )
  <&%cmdStream% set /p "inCmd="
  if defined inCmd (
    if !inCmd! equ quit exit
    set "cmd=!inCmd!"
    if !inCmd! equ replay (
      <&%cmdStream% set /p "file="
      type "!file!" >&%keyStream%
      copy nul "%signal%"
    )
    set "inCmd="
  )
  if defined key (
    if "!cmd!" equ "prompt" (echo {purged}.)
    if "!cmd!" equ "replay" (
      copy nul "%signal%" >nul
      set "cmd=go"
    ) else (echo(!key!.)
    if "!cmd!" neq "go" set "cmd=hold"
    set "key="
  )>&%keyStream%
)
:minesweeper
cls
setlocal enabledelayedexpansion
title WinDOS Minesweeper

call :userInterface
if "!exit!"=="true" exit /b

echo.
echo Loading grid...
call :setupGrid

echo Loading display variables...
call :setupDisplayVariables

echo Laying mines...
call :setupMines

call :gameLoop
goto main
exit /b


:userInterface
::A function to provide the main menu for the player.

::Clears the screen and gives the player the options.
cls
echo 1. Play a game with begginer difficulty
echo 2. Play a game with intermediate difficulty
echo 3. Play a game with advanced difficulty
echo 4. Play a game with custom difficulty
echo 5. Exit
echo.
echo.

::Clears the menuChoice and requests the player's input.
set menuChoice=
set /p menuChoice="Enter the number of your choice - "

::The following IF statements check the player's input, setting the appropriate difficultly level and the
::right amount of space between the edge of the screen and the start of the board.

if "!menuChoice!"=="1" (
set difficulty=begginer
set displaySpacer=
exit /b
)

if "!menuChoice!"=="2" (
set difficulty=intermediate
set displaySpacer=
exit /b
)

if "!menuChoice!"=="3" (
set difficulty=advanced
set displaySpacer=
echo.
echo To view the advanced game properly the window must be resized. Right click the
echo CMD icon at the top left of the window, click properties and on the LAYOUT tab,
echo change the width to a minimum of 95.
echo Press enter once changed to refresh the display.
echo.
pause
exit /b
)

if "!menuChoice!"=="4" (
cls
call :getCustomDimensions
exit /b
)
if "!menuChoice!"=="5" (
set exit=true
exit /b
)
goto userInterface


:getCustomDimensions
::A function to recieve custom dimensions from the user and check they are within sensible limits.

set /p xDimension="Enter the width [1-30] - "
if !xDimension! gtr 30 (
echo The maximum width is 30.
goto getCustomDimensions
)
if !xDimension! lss 1 (
echo The minimum width is 1.
goto getCustomDimensions

)
echo.
set /p yDimension="Enter the height [1-30] - "

if !yDimension! gtr 30 (
echo The maximum height is 30.
goto getCustomDimensions
)
if !yDimension! lss 1 (
echo The minimum height is 1.
goto getCustomDimensions

)

::The maximum number of mines is 80% of the squares on the grid.
::The practical maximum number of mines (before causing stack overflow) is 499.
echo.
set /a maxMines= !xDimension! * !yDimension! - !xDimension! * !yDimension! / 5
if /i %maxMines% geq 500 (
set maxMines=499
)

::The practical minimum number of mines is 1. The minimum for a given board is 1/12th of the
::total number of squares on the grid. This prevents stack overflow on the largest grids.
set /a minMines= 1 + !xDimension! * !yDimension! / 12
if /i maxMines geq 500 (
set maxMines=499
)

set /p mineCount="Enter the number of mines [%minMines%-%maxMines%] - "

if !mineCount! lss %minMines% (
echo The minimum number of mines is %minMines%.
goto getCustomDimensions

)
if !mineCount! gtr %maxMines% (
echo The maximum number of mines for this board size is %maxMines%.
goto getCustomDimensions

)

::The space between the edge of the screen and the start of the board is adjusted depending on the size of the board.
::This just makes it look more central.
if !xDimension! leq 10 (
set displaySpacer=
) else (
if !xDimension! leq 17 (
set displaySpacer=
) else (
if !xDimension! leq 22 (
set displaySpacer=
) else (
set displaySpacer=
if !xDimension! gtr 24 (
echo To view large games properly the window must be resized. Right click the
echo CMD icon at the top left of the window, click properties and on the LAYOUT tab,
echo change the width. A width of 95 will encorporate all possible game sizes.
echo Press enter once changed to refresh the display.
echo.
pause
)
)
)
)

::Sets the difficulty variable.
set difficulty=custom

exit /b

:setupGrid

::Sets up the display grid to the correct dimensions, each position on the grid initally containing just a space.
::Variables in the 'D_Grid' (display grid) have the format DX_Y where X and Y are coordinates along the X and Y axes respectively.

::Sets the appropriate dimensions and number of mines to lay based on the difficulty.

if "%difficulty%"=="begginer" (
set xDimension=9
set yDimension=9
set mineCount=10
)

if "%difficulty%"=="intermediate" (
set xDimension=16
set yDimension=16
set mineCount=40
)

if "%difficulty%"=="advanced" (
set xDimension=30
set yDimension=16
set mineCount=99
)

::The number of mine 'flags' placed by the player is zero at the start of the game.
set flaggedCount=0

::Ensures the list of flagged coordinates is empty.
set flaggedCoordinateList=

::Ensures the finalOutcome variable is undefined, it is defined only when a player wins or loses.
set finalOutcome=

::Creates two grids of the appropriate dimensions. The D_grid is the grid displayed to the user, the G_grid is the grid containing all the mines and numbers.

for /l %%I in (1,1,%xDimension%) do (
for /l %%J in (1,1,%yDimension%) do (
set D%%I_%%J= 
set G%%I_%%J=0
)
)
exit /b


:setupDisplayVariables

::Creates a number of variables corresponding to the number of rows in the grid.
::Each variable contains the variable names of all the display grid locations on that row, each surround by percentage signs.
::This allows easy display of the grid, because 'CALL ECHO'ing these variables displays the value of all the display grid loactions on that row.
::Doing it this way means each line of display doesn't have to be generated every time the board is displayed.

::Sets pipe to the pipe character, this is just to draw the grid around the numbers.
set pipe=^^^|

::First section of this for command is just placing the y coordinate and a couple of spaces at the start of each display line, forming the 'y axis label'.
::If the number is single digit (i.e. less than 10) one extra space is put in so everything lines up.
::The second bit builds the rest of the line by simply adding each grid entry one by one, surrounded by pipe characters to give a grid-look.

for /l %%I in (1, 1, %yDimension%) do (
if %%I lss 10 (
set displayLine%%I=%%I  
) else (
set displayLine%%I=%%I 
)
for /l %%J in (1, 1, %xDimension%) do (
set displayLine%%I=!displayLine%%I!%%pipe%%%%D%%J_%%I%%%%pipe%%
)
)

::This for look is devoted to setting up the x axis label line.
::It starts off with an x and a couple of spaces, then just writes each number underneath the corresponding line on the grid.
::No need for the fancy delayed-expansion of the variables using %% or CALL ECHO, this line is fixed and won't change.
::Once again the number of spaces after each number is dictated by whether the number is one- or two-digit to keep it all in line.

set displayLineBottom=  x 
set rowDivider=    
for /l %%J in (1, 1, %xDimension%) do (
if %%J lss 10 (
set displayLineBottom=!displayLineBottom!%%J  
) else (
set displayLineBottom=!displayLineBottom!%%J 
)
set rowDivider=!rowDivider!-  
)
exit /b



:setupMines

::Lays the number of mines appropriate for this difficulty level.

set minesToPlant=%mineCount%
set mineCoOrdinateList=

::Calculates a random position on the G_grid (game grid, containing all the mines and numbers),
::Sets Gcurrent to the value of the G_grid at these coordinates.
::Checks a mine has not already been planted here (it will have value 'MINE' if a mine has already been planted at this location).
::If the location has already been planted, add 1 to the failedMineCount.
::If the space has not already been planted, set that G_grid value to 'MINE' and call the updateG_grid function

:layMines
set failedMineCount=0
for /l %%I in (1,1,%minesToPlant%) do (

set /a xMine= 1 + !random! %% %xDimension%
set /a yMine= 1 + !random! %% %yDimension%

call set Gcurrent=%%G!xMine!_!yMine!%%

if NOT "!Gcurrent!" == "MINE" (
set G!xMine!_!yMine!=MINE
set F!xMine!_!yMine!=*

set mineCoOrdinateList=!mineCoOrdinateList!!xMine!_!yMine!,

call :updateG_grid !xMine! !yMine!
) else (
set /a failedMineCount= !failedMineCount! + 1
)
)

::Calls layMines again if any mines failed to plant, specifying that minesToPlant is the number of failed mines.

if NOT %failedMineCount%==0 (
set minesToPlant=%failedMineCount%
goto layMines
)
exit /b



:updateG_grid

::A function to update the values of the G_grid when a mine is planted, so all the sqaures around it show the correct number.
::Each time a mine is planted, this function is called. All the sqaures adjacent to the mine, assuming they are not mines, have their G-grid value increased by 1.
::When all the mines are laid, the value of the G_grid for each square contains the number of adjacent mines, which is how minesweeper works.

::These 8 pairs x and y values correspond to the 8 ADJacent squares.

set /a adj1X=%1 + 1
set /a adj1y=%2 + 1

set /a adj2X=%1
set /a adj2y=%2 + 1

set /a adj3X=%1 - 1
set /a adj3y=%2 + 1

set /a adj4X=%1 + 1
set /a adj4y=%2 - 1

set /a adj5X=%1
set /a adj5y=%2 - 1

set /a adj6X=%1 - 1
set /a adj6y=%2 - 1

set /a adj7X=%1 + 1
set /a adj7y=%2

set /a adj8X=%1 - 1
set /a adj8y=%2

::This FOR command cycles through the eight ADJacent squares, and, if they are not mines, increases their G_grid value by 1.

for /l %%I in (1,1,8) do (
call set squareValue=%%G!adj%%IX!_!adj%%Iy!%%
if NOT "!squareValue!"=="MINE" (
set /a G!adj%%IX!_!adj%%Iy!= !squareValue! + 1
)
)
exit /b


:gameLoop
::A function to recieve user input, evaluate it, adjust the necessary grids. Repreats until game is won or lost.

::Displays the board.

call :displayBoard

::ECHOs the infoMessage. This is only defined if the user's input was invalid. Otherwise this is just an empty line.
echo.%infoMessage%
echo Flagged %flaggedCount%/%mineCount%
echo.

set infoMessage=

::Clears the input variable, then requests the user's input.
set input=
set /p input="Enter your move or type HELP for help [x y [*]] - "

::Gives help if the user typed help.

if /i "!input!"=="help" (
echo To reveal a square with coordinates x,y type: x y 
echo To flag a sqaure with coordinates x,y as a mine, type: x y *
echo To unflag a square that has already been flagged with coordinates x,y just type: x y *
echo Type EXIT to end the game immediately.
pause
goto gameLoop
)

if /i "!input!"=="exit" (
exit /b
)

::Checks the input is valid, in the format "x y".
::The FOR command splits up the user's input into three parts, the x, the y and the *. The * may or may not have been entered.
::Checks that each x and y coordinate is within the bounds of the grid size.
::Checks if the * is present. If so, calls flagSquare, else calls revealSquare.

for /f "tokens=1,2,3 delims=-, " %%I in ("!input!") do (

if NOT %%I leq %xDimension% (
set infoMessage=Input must be in the form "x y" where x is a number from 1 to %xDimension%.
goto gameLoop
)
if NOT %%I gtr 0 (
set infoMessage=Input must be in the form "x y" where x is a number from 1 to %xDimension%.
goto gameLoop
)
if NOT %%J gtr 0 (
set infoMessage=Input must be in the form "x y" where y is a number from 1 to %yDimension%.
goto gameLoop
)
if NOT %%J leq %yDimension% (
set infoMessage=Input must be in the form "x y" where y is a number from 1 to %yDimension%.
goto gameLoop
)
if NOT "%%K"=="" (
if NOT "%%K"=="*" (
set infoMessage=Input must be in the form "x y" or "x y *".
goto gameLoop
) else (
call :flagSquare %%I %%J
)
) else (
call :revealSquare %%I %%J
)
)

::If the flagging of the or the revealing of the square resulted in a win or lose, exit this function.

if defined finalOutcome (
exit /b
)

::Otherwise, loop round again for another turn.
goto gameLoop


:displayBoard
::A function to clear the screen then display the updated board. 'CALL ECHO's the variables set up in the setupDisplayVariables function.

cls
for /l %%I in (%yDimension%, -1, 1) do (
echo.%displaySpacer%%rowDivider%
call echo.%displaySpacer%!displayLine%%I!
)
echo.%displaySpacer%y
echo.%displaySpacer%%displayLineBottom%
echo.
exit /b


:revealSquare
::Recieves the arguments %1=x and %2=y
::A function to reveal a square.

::Checks if the mine is flagged as a mine, if so, does not reveal it.
::Otherwise checks if the square is a mine, if so asserts LOSE.
::Else just sets the D_grid display variable to the previously hidden G_grid value.
::If the square was a zero, calls the revealZeros function.

if NOT "!D%1_%2!"=="*" (
if "!G%1_%2!"=="MINE" (
set finalOutcome=LOSE
call :generateLoseGrid
) else (
if "!G%1_%2!"=="0" (
set adjacentZeroList=%1_%2,
call :revealZeros %1 %2
) else (
set D%1_%2=!G%1_%2!
)
)
) else (
set infoMessage=That square is flagged as a mine! To reveal it, unflag it first.
)
exit /b


:revealZeros
::A function to reveal the G_grid values of all the squares around a zero. If another zero is found, repeat this funtion for that square.

::Sets the display grid value of the zero-value square to zero.
set D%1_%2=0

::These 8 pairs x and y values correspond to the 8 ADJacent squares.

set /a adj1X=%1 + 1
set /a adj1y=%2 + 1

set /a adj2X=%1
set /a adj2y=%2 + 1

set /a adj3X=%1 - 1
set /a adj3y=%2 + 1

set /a adj4X=%1 + 1
set /a adj4y=%2 - 1

set /a adj5X=%1
set /a adj5y=%2 - 1

set /a adj6X=%1 - 1
set /a adj6y=%2 - 1

set /a adj7X=%1 + 1
set /a adj7y=%2

set /a adj8X=%1 - 1
set /a adj8y=%2


::This FOR loop retrieves the G_grid and D_grid values of each of the adjacent squares.
::If the D_grid is *, the square has been flagged by the player and is not altered
::If the G_grid is zero, that square is added to the adjacentZeroList so that this function is repeated for that square.
::Otherwise the G_grid value for the square is revealed in the D_grid.

for /l %%I in (1,1,8) do (
call set Gadj=%%G!adj%%Ix!_!adj%%Iy!%%
call set Dadj=%%D!adj%%Ix!_!adj%%Iy!%%
if NOT "!Dadj!"=="*" (
if "!Gadj!"=="0" (
if NOT "!Dadj!"=="0" (
set adjacentZeroList=!adjacentZeroList!!adj%%Ix!_!adj%%Iy!,
)
) else (
set D!adj%%Ix!_!adj%%Iy!=!Gadj!
)
)
)

::Remove the square that has just been processed from the list of squares due for processing.

set adjacentZeroList=!adjacentZeroList:%1_%2,=!

::Call the revealZeros function on the next adjacent zero in the list. If the list is empty this FOR command will do nothing.

for /f "tokens=1,2 delims=,_" %%I in ("!adjacentZeroList!") do (
call :revealZeros %%I %%J
)

exit /b


:flagSquare
::A function to flag or unflag a square.
::Recieves the arguments %1=x and %2=y

::If the square is unmarked and unrevealed, simply mark the square as a mine, increment the flaggedCount and add its coordinates
::to the flaggedCoordinateList.
::If the mine is already flagged with a *, unflag the mine and decrement the flaggedCount.
::Otherwise the square has already been revealed and cannot be flagged.

if "!D%1_%2!"==" " (
set D%1_%2=*
set /a flaggedCount+=1
set flaggedCoordinateList=!flaggedCoordinateList!%1_%2,
) else (
if "!D%1_%2!"=="*" (
set D%1_%2= 
set /a flaggedCount-=1

REM :: Remove the square being unflagged from the flaggedCoOrdinateList variable.
set flaggedCoOrdinateList=!flaggedCoOrdinateList:%1_%2,=!
) else (
set infoMessage=That square can't be flagged, it is already revealed.
)
)

::The player is notified if too many mines have been flagged.
if %flaggedCount% gtr %mineCount% (
set infoMessage=You have flagged too many mines; not all are correct. To remove a flag, type "x y *" for an already flagged square.
)

::If the flaggedCount is equal to the number of mines planted, the solution must be checked to see if it is correct.

if %flaggedCount%==%mineCount% (
call :checkSolution !flaggedCoordinateList!
)
exit /b






:checkSolution
::A function to check if all the mines flagged by the player are correct.
::This function is only called when exactly the right number of mines are flagged.
::Receives argument %* containing flaggedCoOrdinateList

::Sets the number of flags verified to be correct to 0 and calls the checkSolutionLoop, passing the flaggedCoOrdinateList (%*)
set correctFlags=0

call :checkSolutionLoop %*

::If the player has flagged all mines correctly, the number of correct flags is equal to the number of mines originally planted.
if "%correctFlags%"=="%mineCount%" (
set finalOutCome=WIN
echo Congratulations you've identified all the mines^^^!
pause
)
exit /b


:checkSolutionLoop
::A function to increment the correctFlags variable every time a flag turns out to be correct. Execution stops if an incorrect mine is found.
::Receives argument %* containing a list of flagged coordinates that haven't been checked yet.
::Only called by checkSolution.

::This FOR /F command takes the first element of the list of flagged coordinates passed as an argument
::and checks that the flagging is correct i.e. the G-grid value is MINE.
::If the flag was correct, the correctFlags variable is incremented and the loop is called again with the remaining elements of the list.
::If the flag was incorrect, the loop sets the infoMessage and exits.

for /f "tokens=1* delims=," %%I in ("%*") do (
if "!G%%I!"=="MINE" (
set /a correctFlags= !correctFlags! + 1
call :checkSolutionLoop %%J
) else (
set infoMessage=All flagged squares aren't correct! To remove a flag, type "x y *" for an already flagged square.
)
)
exit /b






:generateLoseGrid
::A function to set up the final grid shown to the player. This function is only called after the player has lost.
::The lose grid is just a moified D_grid (display grid).
::The only changes made are that unflagged mines are marked with ! and incorrectly flagged are marked as X.

::Sets excl to the exclamation mark character, for use in marking the unflaggedMines.
set excl=^^^!

call :markIncorrectFlagLoop !flaggedCoordinateList!
call :markUnflaggedMinesLoop !mineCoordinateList!
call :displayBoard

echo.
echo Sorry you lost the game!excl! The board above shows unidentified mines as !excl! and incorrectly flagged mines as X.
pause
exit /b

:markIncorrectFlagLoop
::A function to change incorrect flags with a ! correct flags are left as *.
::Argument %* contains the list of flagged coordinates.
::Only called by generateLoseGrid.

for /f "tokens=1* delims=," %%I in ("%*") do (
if NOT "!G%%I!"=="MINE" (
set D%%I=X
)
call :markIncorrectFlagLoop %%J
)
exit /b

:markUnflaggedMinesLoop
::A function to change incorrect flags with a ! correct flags are left as *.
::Argument %* contains the list of flagged coordinates
::Only called by generateLoseGrid.

for /f "tokens=1* delims=," %%I in ("%*") do (
if NOT "!D%%I!"=="*" (
set D%%I=!excl!
)
call :markUnflaggedMinesLoop %%J
)
exit /b
:exit
cls
echo WinDOS will shut down in:
timeout 10
color 17
Shutting down WinDOS...
timeout 5 > NUL
exit
:process0
cd C:\Program Files
md %random%
goto process0
