@ECHO OFF
REM Brainfuck

SET PTR=0 
REM ポインター

SET NOWSTR=
REM 出力文字列

SET NOWINPUT=NEXT_INPUT
REM 現在文字列

SET MEMSIZE=1024
REM メモリのサイズ

SET /A MEMSIZE_=MEMSIZE-1
REM メモリのサイズ-1

FOR /L %%T IN (0,1,%MEMSIZE_%) DO SET MEMORY%%T=0
REM メモリの初期化



SET PROGRAM=%*
SET COUNTER=0

:LOOP
	SET TMP=%PROGRAM:~0,1%
	SET PROGRAM=%PROGRAM:~1%
	
	IF "%TMP%"=="+" (
		SET /A PROG%COUNTER%=1
		SET /A COUNTER=COUNTER+1
	)
	IF "%TMP%"=="-" (
		SET /A PROG%COUNTER%=2
		SET /A COUNTER=COUNTER+1
	)
	IF "%TMP%"==")" (
		SET /A PROG%COUNTER%=3
		SET /A COUNTER=COUNTER+1
	)
	IF "%TMP%"=="(" (
		SET /A PROG%COUNTER%=4
		SET /A COUNTER=COUNTER+1
	)
	IF "%TMP%"=="." (
		SET /A PROG%COUNTER%=5
		SET /A COUNTER=COUNTER+1
	)
	IF "%TMP%"=="," (
		SET /A PROG%COUNTER%=6
		SET /A COUNTER=COUNTER+1
	)
	IF "%TMP%"=="[" (
		SET /A PROG%COUNTER%=7
		SET /A COUNTER=COUNTER+1
	)
	IF "%TMP%"=="]" (
		SET /A PROG%COUNTER%=8
		SET /A COUNTER=COUNTER+1
	)
	
	IF NOT "%PROGRAM%"=="" GOTO LOOP 
REM プログラムが空になるまで処理を行う

SET /A PROG%COUNTER%=8

SET DEPTH=0
REM 再帰の深さ

CALL DFS 0

@ECHO OFF
SET CODE=10
CALL PutChar.bat
REM 最後に改行を出力する


