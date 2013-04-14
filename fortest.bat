for /f "delims=*." %%f in ('dir /b "*.test"') do Call :Finder %%f
exit /B

:Finder
find /c /i "Everything is Ok" "%~1.test"
echo %errorlevel%
if %ERRORLEVEL%==0 (
ren "%~1.test" "%~1.passed"
Goto :Dead
)
Exit /B
:Dead
Exit /B