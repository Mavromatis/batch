@echo off
for /f "delims=*." %%b in ('dir /b *.7z') do (
if not exist "%%b.test" (
if not exist "%%b.passed" (
Call :Dead
)
)
)
for /f "delims=*." %%a in ('dir /b *.7z') do (
if exist "%%a.test" (
if not exist "%%a.passed" (
mkdir Failed >> nul
move /y "%%a.*" Failed
)
)
if exist "%%a.passed" (
mkdir Passed >> nul
move /y "%%a.7z" Passed
)
del "%%a.*"
)
:Dead
Exit /B