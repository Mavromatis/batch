@echo off
for /f "delims=*." %%a in ('dir /b *.nes') do ("C:\Program Files\7-Zip\7z" a -mx9 -tzip "%%a.zip" "%%a.nes") 
