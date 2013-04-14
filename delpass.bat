@echo off
mkdir Passed
mkdir Failed
for /f "delims=*." %%a in ('dir /b *.7z') do (
if exist "%%a.test" (
if not exist "%%a.passed" (
move /y "%%a.*" Failed
)
)
if exist "%%a.passed" (
move /y "%%a.7z" Passed
move /y "%%a.passed" Passed 
)
del "%%a.*"
)
