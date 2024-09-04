%~d0
cd "%~dp0"

.\otfccdump.exe --ignore-hints -o base.otd "%~1"

.\merge-otd.exe -n "%~2 NFT;Regular;Normal;Normal" base.otd nerdfont.otd twemoji.otd cjk.otd

.\otfccbuild.exe -q -O2 -o "%~2 NFT.ttf" base.otd

del base.otd

pause