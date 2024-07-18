:: author: zhouqiu0103

@echo off & setlocal EnableDelayedExpansion

set /p suffix="input suffix:"
set /p pwd="input password:"
if "!pwd!"=="" (
	echo "no password"
	for %%X in (*.%suffix%) do 7z x "%%X"
) else (
	for %%X in (*.%suffix%) do 7z x "%%X" -p!pwd!
)

pause