@echo off 
set FILEPATH=%1
set OUTPUTFORMAT=%2


if "%OUTPUTFORMAT%" == "code" (
goto COPYCODEFORMAT
echo 123
)
if "%OUTPUTFORMAT%" == "unix" (
goto COPYUNIXFORMAT
)
goto COPYPATH
:COPYCODEFORMAT
set FILEPATH=%FILEPATH:\=\\%
echo %FILEPATH%|clip
goto eof
:COPYPATH
echo %FILEPATH%|clip
goto eof
:COPYUNIXFORMAT
set FILEPATH=%FILEPATH:\=/%
set FILEPATH=%FILEPATH:~3%
echo %FILEPATH%|clip
goto eof
:eof
exit