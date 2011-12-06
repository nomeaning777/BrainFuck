REM àÍï∂éöì¸óÕ(getchar)
REM CODEä¬ã´ïœêîÇ…ì¸óÕÇ≥ÇÍÇΩï∂éöÇÃî‘çÜ
REM %NOWINPUT%ä¬ã´ïœêîÇ™ópÇ¢ÇÁÇÍÇÈ

IF "%NOWINPUT%"=="NEXT_INPUT" (
	SET /P NOWINPUT=
)
IF "%NOWINPUT%"=="NEXT_INPUT" (
	SET CODE=0
	EXIT /B
)
IF "%NOWINPUT%"=="" (
	SET CODE=10
	SET NOWINPUT=NEXT_INPUT
	SET TMP=
) ELSE (
	SET TMP=%NOWINPUT:~0,1%
	SET NOWINPUT=%NOWINPUT:~1%
)
IF "%TMP%"==" " (
	SET CODE=32
)ELSE IF "%TMP%"=="!" (
	SET CODE=33
)ELSE IF "%TMP%"=="Åh" (
	SET CODE=34
)ELSE IF "%TMP%"=="#" (
	SET CODE=35
)ELSE IF "%TMP%"=="$" (
	SET CODE=36
)ELSE IF "%TMP%"=="Åì" (
	SET CODE=37
)ELSE IF "%TMP%"=="Åï" (
	SET CODE=38
)ELSE IF "%TMP%"=="'" (
	SET CODE=39
)ELSE IF "%TMP%"=="Åi" (
	SET CODE=40
)ELSE IF "%TMP%"=="Åj" (
	SET CODE=41
)ELSE IF "%TMP%"=="*" (
	SET CODE=42
)ELSE IF "%TMP%"=="+" (
	SET CODE=43
)ELSE IF "%TMP%"=="," (
	SET CODE=44
)ELSE IF "%TMP%"=="-" (
	SET CODE=45
)ELSE IF "%TMP%"=="." (
	SET CODE=46
)ELSE IF "%TMP%"=="/" (
	SET CODE=47
)ELSE IF "%TMP%"=="0" (
	SET CODE=48
)ELSE IF "%TMP%"=="1" (
	SET CODE=49
)ELSE IF "%TMP%"=="2" (
	SET CODE=50
)ELSE IF "%TMP%"=="3" (
	SET CODE=51
)ELSE IF "%TMP%"=="4" (
	SET CODE=52
)ELSE IF "%TMP%"=="5" (
	SET CODE=53
)ELSE IF "%TMP%"=="6" (
	SET CODE=54
)ELSE IF "%TMP%"=="7" (
	SET CODE=55
)ELSE IF "%TMP%"=="8" (
	SET CODE=56
)ELSE IF "%TMP%"=="9" (
	SET CODE=57
)ELSE IF "%TMP%"==":" (
	SET CODE=58
)ELSE IF "%TMP%"==";" (
	SET CODE=59
)ELSE IF "%TMP%"=="ÅÉ" (
	SET CODE=60
)ELSE IF "%TMP%"=="=" (
	SET CODE=61
)ELSE IF "%TMP%"=="ÅÑ" (
	SET CODE=62
)ELSE IF "%TMP%"=="?" (
	SET CODE=63
)ELSE IF "%TMP%"=="@" (
	SET CODE=64
)ELSE IF "%TMP%"=="A" (
	SET CODE=65
)ELSE IF "%TMP%"=="B" (
	SET CODE=66
)ELSE IF "%TMP%"=="C" (
	SET CODE=67
)ELSE IF "%TMP%"=="D" (
	SET CODE=68
)ELSE IF "%TMP%"=="E" (
	SET CODE=69
)ELSE IF "%TMP%"=="F" (
	SET CODE=70
)ELSE IF "%TMP%"=="G" (
	SET CODE=71
)ELSE IF "%TMP%"=="H" (
	SET CODE=72
)ELSE IF "%TMP%"=="I" (
	SET CODE=73
)ELSE IF "%TMP%"=="J" (
	SET CODE=74
)ELSE IF "%TMP%"=="K" (
	SET CODE=75
)ELSE IF "%TMP%"=="L" (
	SET CODE=76
)ELSE IF "%TMP%"=="M" (
	SET CODE=77
)ELSE IF "%TMP%"=="N" (
	SET CODE=78
)ELSE IF "%TMP%"=="O" (
	SET CODE=79
)ELSE IF "%TMP%"=="P" (
	SET CODE=80
)ELSE IF "%TMP%"=="Q" (
	SET CODE=81
)ELSE IF "%TMP%"=="R" (
	SET CODE=82
)ELSE IF "%TMP%"=="S" (
	SET CODE=83
)ELSE IF "%TMP%"=="T" (
	SET CODE=84
)ELSE IF "%TMP%"=="U" (
	SET CODE=85
)ELSE IF "%TMP%"=="V" (
	SET CODE=86
)ELSE IF "%TMP%"=="W" (
	SET CODE=87
)ELSE IF "%TMP%"=="X" (
	SET CODE=88
)ELSE IF "%TMP%"=="Y" (
	SET CODE=89
)ELSE IF "%TMP%"=="Z" (
	SET CODE=90
)ELSE IF "%TMP%"=="[" (
	SET CODE=91
)ELSE IF "%TMP%"=="\" (
	SET CODE=92
)ELSE IF "%TMP%"=="]" (
	SET CODE=93
)ELSE IF "%TMP%"=="^" (
	SET CODE=94
)ELSE IF "%TMP%"=="_" (
	SET CODE=95
)ELSE IF "%TMP%"=="`" (
	SET CODE=96
)ELSE IF "%TMP%"=="a" (
	SET CODE=97
)ELSE IF "%TMP%"=="b" (
	SET CODE=98
)ELSE IF "%TMP%"=="c" (
	SET CODE=99
)ELSE IF "%TMP%"=="d" (
	SET CODE=100
)ELSE IF "%TMP%"=="e" (
	SET CODE=101
)ELSE IF "%TMP%"=="f" (
	SET CODE=102
)ELSE IF "%TMP%"=="g" (
	SET CODE=103
)ELSE IF "%TMP%"=="h" (
	SET CODE=104
)ELSE IF "%TMP%"=="i" (
	SET CODE=105
)ELSE IF "%TMP%"=="j" (
	SET CODE=106
)ELSE IF "%TMP%"=="k" (
	SET CODE=107
)ELSE IF "%TMP%"=="l" (
	SET CODE=108
)ELSE IF "%TMP%"=="m" (
	SET CODE=109
)ELSE IF "%TMP%"=="n" (
	SET CODE=110
)ELSE IF "%TMP%"=="o" (
	SET CODE=111
)ELSE IF "%TMP%"=="p" (
	SET CODE=112
)ELSE IF "%TMP%"=="q" (
	SET CODE=113
)ELSE IF "%TMP%"=="r" (
	SET CODE=114
)ELSE IF "%TMP%"=="s" (
	SET CODE=115
)ELSE IF "%TMP%"=="t" (
	SET CODE=116
)ELSE IF "%TMP%"=="u" (
	SET CODE=117
)ELSE IF "%TMP%"=="v" (
	SET CODE=118
)ELSE IF "%TMP%"=="w" (
	SET CODE=119
)ELSE IF "%TMP%"=="x" (
	SET CODE=120
)ELSE IF "%TMP%"=="y" (
	SET CODE=121
)ELSE IF "%TMP%"=="z" (
	SET CODE=122
)ELSE IF "%TMP%"=="{" (
	SET CODE=123
)ELSE IF "%TMP%"=="Åb" (
	SET CODE=124
)ELSE IF "%TMP%"=="}" (
	SET CODE=125
)ELSE IF "%TMP%"=="~" (
	SET CODE=126
)
::ECHO %CODE%