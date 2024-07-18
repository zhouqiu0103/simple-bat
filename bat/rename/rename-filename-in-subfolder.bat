::author: zhouqiu0103

@echo off & setlocal EnableDelayedExpansion

set count=0
for /d %%X in (*) do (
	set /a count=1
	for %%i in (%%X\*) do (
		set "num=0000!count!" & set "num=!num:~-4!"
		ren "%%i" "%%X_!num!%%~xi"
		set /a count+=1
	)
)

for /r %%X in (*) do (
	echo %%X
)

pause