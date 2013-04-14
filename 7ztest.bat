@echo off
for /f "delims=*." %%a in ('dir /b *.7z') do (
if not exist %%a.passed (
if not exist %%a.test (
"C:\Program Files (x86)\7-Zip\7z" t "%%a.7z" *.* -r > %%a.test
)
)
)
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