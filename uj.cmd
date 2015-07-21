@echo off

rem missing parameter
if "%1"=="" GOTO BLANK
if "%2"=="" GOTO BLANK

rem remove old junction
rd %1

rem create new junction
mklink /j %1 %2

GOTO DONE

:BLANK
ECHO.
ECHO  Replace the target of a directory junction
ECHO.
ECHO  uj ^<name^> ^<target^>
ECHO.
ECHO     name	  Name for the directory junction
ECHO     target   Target folder
ECHO.

:DONE