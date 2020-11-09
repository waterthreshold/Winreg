@echo off 
for /f "delims=" %%D in ('dir /A:d /B') do (
	set SETUP_PATH=%%~fD/setup.bat
	start /W %%~fD/setup.bat
)
pause