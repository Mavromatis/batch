for %%* in (.) do set MyDir=%%~n*
echo %MyDir%
"C:\Program Files\7-Zip\7z" a -mx5 -t7z "%MyDir%.7z" *.*
"C:\Program Files\7-Zip\7z" t "%MyDir%.7z" *.* -r
