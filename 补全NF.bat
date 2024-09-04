%~d0
cd "%~dp0"

.\otfccdump.exe --ignore-hints -o base.otd     "%~1"
.\otfccdump.exe --ignore-hints -o nerdfont.otd SymbolsNerdFontMono-Regular.ttf
.\otfccdump.exe --ignore-hints -o twemoji.otd  TwitterColorEmoji.ttf
.\otfccdump.exe --ignore-hints -o cjk.otd      HYQiHei_45S.ttf

.\merge-otd.exe -n "%~2 NFT;Regular;Normal;Normal" base.otd nerdfont.otd twemoji.otd cjk.otd

.\otfccbuild.exe -q -O3 -o "%~2 NFT.ttf" base.otd

del base.otd nerdfont.otd twemoji.otd cjk.otd

pause

@REM  .\补全NF.bat .\SUSE-Regular.ttf SUSE