@echo off
for /f "delims=." %%a in ('dir /b') do ("c:\Program Files\WinRAR\rar" a -r0 "%%a" -m0 "%%a")
