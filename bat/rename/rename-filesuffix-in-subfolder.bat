:: author: zhouqiu0103

@echo off & setlocal EnableDelayedExpansion

set /p suffix="input suffix:"
for /d %%X in (*) do (
	for %%i in (%%X\*) do (
		ren "%%i" "%%~ni.%suffix%"
	)
)

for /r %%X in (*) do (
	echo %%X
)

pause