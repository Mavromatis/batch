@echo off
for /f "delims=*.*" %%a in ('dir /b *.z64') do (echo "%%a")