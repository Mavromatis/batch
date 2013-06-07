@echo off
for /f "delims=*." %%a in ('dir /b *.7z') do (
"C:\Program Files\7-Zip\7z" e "%%a.7z" -o"X:\Depus\tester\_v\%%a(E)" "*(E)*[!].gba" -r
"C:\Program Files\7-Zip\7z" e "%%a.7z" -o"X:\Depus\tester\_v\%%a(U)" "*(U)*[!]).gba" -r
"C:\Program Files\7-Zip\7z" e "%%a.7z" -o"X:\Depus\tester\_v\%%a(J)" "*(J)*[!]).gba" -r
)

