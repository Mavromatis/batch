@echo off
for /f "delims=*." %%a in ('dir /b *.cdi') do (
"C:\Program Files\7-Zip\7z" a -mx9 -t7z "%%a.7z" "%%a.cdi"
) 