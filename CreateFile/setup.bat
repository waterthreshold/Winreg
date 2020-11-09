@echo off 
gsudo  >nul 2>&1
 if %errorLevel% == 0 (
	echo Success: Have Gsudo
) else (
	echo Failure: Please install gsudo
)


if NOT EXIST C:\Windows\System32\gsudo.exe (
copy gsudo.exe C:\Windows\System32\
)
if NOT EXIST C:\Windows\System32\createFile.bat (
gsudo copy CreateFile.bat C:\Windows\System32\
)
gsudo CreateFile.reg
pause