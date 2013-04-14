@echo off
for /f "delims=." %%a in ('dir /b *.rar') do (
ren "%%a.*" "%%a.cbr"
)