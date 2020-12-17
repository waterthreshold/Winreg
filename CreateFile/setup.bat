@echo off 
gsudo  >nul 2>&1
 if %errorLevel% == 0 (
	echo Success: Have Gsudo
) else (
	echo Failure: Please install gsudo
)


if NOT EXIST  %USERPROFILE%\Desktop\bin\gsudo.exe (
copy gsudo.exe C:\Windows\System32\
)
if NOT EXIST  %USERPROFILE%\Desktop\bin\createFile.bat (
gsudo copy CreateFile.bat %USERPROFILE%\Desktop\bin
)
gsudo CreateFile.reg
pause