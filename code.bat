@ECHO off
SET /A begin=1
SET /A end=114

SET /A first=1
SET /A last=300

SET from=C:\Users\Ibnlanre\Desktop\Quran
SET to=F:\Quran

FOR /L %%a IN (%begin%,1,%end%) DO (
	IF NOT EXIST "%to%\%%a" MKDIR "%to%\%%a"
	FOR /L %%b IN (%first%,1,%last%) DO (
		IF NOT EXIST "%to%\%%a\%%b.mp3" (
			IF EXIST "%from%\%%a\%%b.mp3" COPY "%from%\%%a\%%b.mp3" "%to%\%%a\" > NUL
		)
	)
	SET /A first=1
	SET /A last=300
	echo "%%a DONE"

)
pause