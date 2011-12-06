SET /A DEPTH=DEPTH+1
SET PC=%1
SET MOD=%
@ECHO OFF
:LOOP
	SET /A NOWCMD=PROG%PC%
	IF "%NOWCMD%"=="8" GOTO EXITLOOP
	
	IF "%NOWCMD%"=="1" (
		SET /A MEMORY%PTR%=MEMORY%PTR%+1
	)
	IF "%NOWCMD%"=="2" (
		SET /A MEMORY%PTR%=MEMORY%PTR%-1
	)
	IF "%NOWCMD%"=="3" (
		SET /A PTR=PTR+1
	)
	IF "%NOWCMD%"=="4" (
		SET /A PTR=PTR-1
	)
	IF "%NOWCMD%"=="5" (
		SET /A CODE=MEMORY%PTR%
	)
	IF "%NOWCMD%"=="5" (
		CALL PUTCHAR.BAT
	)
	
	IF "%NOWCMD%"=="6" (
		CALL GETCHAR.BAT
	)
	IF "%NOWCMD%"=="6" (
		SET /A MEMORY%PTR%=CODE
	)
	
	IF "%NOWCMD%"=="7" (
		::メモリが0だったら無視
		SET /A TMP=MEMORY%PTR%
	)
	
	IF "%NOWCMD%"=="7" (
		::メモリが0だったら無視
		IF "%TMP%"=="0" (
			CALL NEXT_WHILE.BAT
		) ELSE (
			SET /A TEMP%DEPTH%=PC
			SET /A PC=PC+1
		)
	)
	IF "%NOWCMD%"=="7" (
		IF NOT "%TMP%"=="0" (
			CALL DFS %PC%
			SET /A PC=TEMP%DEPTH%-1
		)
	)
REM ポインター領域の調整
	SET /A TMP=PTR
	IF "%TMP%"=="%MEMSIZE%" SET TMP=0
	IF "%TMP%"=="-1" SET TMP=%MEMSIZE_%
	SET /A PTR=TMP
	
REM 変数は0～255の値を取る
	SET /A TMP=MEMORY%PTR%
	IF "%TMP%"=="256" SET TMP=0
	IF "%TMP%"=="-1" SET TMP=255
	SET /A MEMORY%PTR%=TMP
	
	SET /A PC=PC+1
	GOTO :LOOP
:EXITLOOP
SET /A DEPTH=DEPTH-1