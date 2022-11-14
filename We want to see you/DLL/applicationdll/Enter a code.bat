@echo off
title Enter a Uniqe code
color 0a

:menu
cls
title Enter a code please
color 0a
echo Enter a unqie code!
echo TIP: If you have visited the DeveloperDock once, just press ENTER and you'll go there again directly!
echo Type "/help" for info
echo --------------------
pause

set /p player= 

if %player% == 5589 goto Secret1
if %player% == 0032 goto DeveloperDock
if %player% == 1223 goto Toolbox
if %player% == 16 goto Agreement
if %player% == /help goto helppanel
goto menu

:Secret1
cls
title YOU FOUND A SECRET
color 0a
echo Tip: There is no point saying "No" to anything ,it will continue
echo ----------------------------------------------------------------
echo.
pause
cls
goto menu

:DeveloperDock
cls
title DeveloperDock
color 1a
echo Enter a code action
echo Type "ViewAllCodes" to see what you can do
echo ------------------------------------------
echo.
pause

set /p CodeAction=

if %CodeAction% == Close goto menu
if %CodeAction% == OpenSecret1 goto Secret1
if %CodeAction% == Codes goto Codes
if %CodeAction% == ViewAllCodes goto Commands
if %CodeAction% == CodePrompt goto CodePrompt
if %CodeAction% == FreeTool goto FreeTool
if %CodeAction% == Story goto Story
if %CodeAction% == Status goto status
if %CodeAction% == 009 goto 009
if %CodeAction% == openafile goto openfile
goto DeveloperDock


:Codes
cls
title All Active codes
color 1a
echo 5589 - Active - Secret Code
echo 0032 - Active - Dev only code
echo 1223 - Toolbox menu - Usable to everyone
echo 16 - Opens the Game agreement
echo ---------------------
echo.
pause
cls
goto DeveloperDock

:Commands
cls
title All commands
color 0b
echo Close - This command closes the dock
echo OpenSecret1 - Automaticlly opens Secret1 without entering the code
echo ViewAllCodes - Opens this
echo CodePrompt - Opens Windows original Prompt
echo FreeTool - Type anything, it turns into a text
echo Status - See the status of the game
echo 009 - A code to the dev only debug
echo Codes - View what codes are valid
echo openafile - Open a dll file
echo --------------------------------------------------------------------
echo.
pause
cls
goto DeveloperDock


:Toolbox
cls
title Tooblox - Version 1.0.0
color 0a
echo No actions avaliable...
echo ------------------------
echo.
pause
cls
goto menu


:CodePrompt
start "CodePrompt"

:Agreement
@echo
C:\Users\aleja\OneDrive\Desktop\We want to see you\Agreements and others

:FreeTool
cls
echo Press enter to create a textfile
echo ---------------------
echo.
pause

CREATE > DeveloperTextNote.txt

:Story
open ("what.vbs")

:status
cls
title Status
color 0a
echo -----------------Game acts----------------------------
echo [ACT 1] - Completed - Small inprovment expected
echo [ACT 2] - In development - Small inprovment expected
echo -------Enter a code version and other-----------------
echo Version : 1.0.0
echo Dll : Optinal
echo.
pause
goto DeveloperDock
cls









{ - Developer only - }
editing tools software

:009
cls
title Editor only
color 3d
echo { - Developer only - }
echo editing tools software
echo ---Tools---
echo 1. Back to deck
echo 2. Visit toolbox
echo 3. View status
echo 4. Reset
echo.
pause

set /p IR=

if %IR% == 1 goto DeveloperDock
if %IR% == 2 goto ToolBox
if %IR% == 3 goto status
if %IR% == 4 goto menu
goto 009



:openfile
cls
title Open a file
color 0d
echo Open a file...
echo 1. DLL FILE (.config)
echo.
pause

set /p ActionForFILE =

if %ActionForFILE% == ("open(("C:\Users\aleja\OneDrive\Desktop\We want to see you\DLL\applicationdll"))
goto openfile

:helppanel
cls
title Help panel (BETA)
color 4b
echo Weclcome to the help panel, here are some articles
echo 1. Developer Agreement
pause

set /p ActionForPassage=

if %ActionForPassage% == 1 goto PassageNotReadyError
goto helppanel


:PassageNotReadyError
echo.
echo Uh oh!
echo Looks like this articel is not ready... (Yet)
echo [Error Code: 834]
echo ---------------------------------------------------
pause
goto helppanel
cls


To run file...
1. Copy the scripts above
2. Put into a notepad
3. save as {notepadname}.bat
4. run system
