:: author: zhouqiu0103

@echo off & setlocal EnableDelayedExpansion

set /p pwd="input password:"
if "!pwd!"=="" (
	for /d %%X in (*) do 7z a "%%X.7z" "%%X\"
) else (
	for /d %%X in (*) do 7z a "%%X.7z" "%%X\" -p!pwd!
)

pause