@echo off
for /f "delims=*." %%a in ('dir /b *.7z') do (
"C:\Program Files\7-Zip\7z" e "%%a.7z" -o"X:\Depus\tester\%%a" "*(U).gba" -r
)
