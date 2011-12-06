@ECHO OFF
REM Brainfuck

SET PTR=0 
REM �|�C���^�[

SET NOWSTR=
REM �o�͕�����

SET NOWINPUT=NEXT_INPUT
REM ���ݕ�����

SET MEMSIZE=1024
REM �������̃T�C�Y

SET /A MEMSIZE_=MEMSIZE-1
REM �������̃T�C�Y-1

FOR /L %%T IN (0,1,%MEMSIZE_%) DO SET MEMORY%%T=0
REM �������̏�����



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
REM �v���O��������ɂȂ�܂ŏ������s��

SET /A PROG%COUNTER%=8

SET DEPTH=0
REM �ċA�̐[��

CALL DFS 0

@ECHO OFF
SET CODE=10
CALL PutChar.bat
REM �Ō�ɉ��s���o�͂���


