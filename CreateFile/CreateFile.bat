@echo off 
SET PATH=%1
cd %PATH%


:InputFileName
set /P FILENAME=Please Enter FileName:
set PATHFILENAME=%PATH%
if "%PATH%" == "" (
set PATHFILENAME=%FILENAME%
) else (
set PATHFILENAME=%PATH%\%FILENAME%
)
if "%FILENAME%" == "" (
goto InputFileName
)
if EXIST %PATHFILENAME% (
goto InputFileName
)
type NUL > %FILENAME%
"C:\Program Files (x86)\Notepad++\notepad++.exe" "%PATHFILENAME%"
exit