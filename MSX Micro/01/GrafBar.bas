1 REM ************************
2 REM *  GRAFICO DE BARRAS   *
3 REM *                      *
4 REM *       M  S  X        *
5 REM *                      *
6 REM *  RANDOLFO S. JULIAO  *
7 REM *                      *
8 REM *     SETEMBRO 1985    *
9 REM ************************
10 COLOR 3,1
11 FOR 1=1 TO5: KEYI, "":NEXT I
30 DIM R#(12)
35 DIM T$(12)
40 FOR M=1 TO 12
50 CLS
60 PRINT "*****************************"
70 PRINT
80 PRINT"=====> MES: "M: PRINT: PRINT
90 INPUT"ENTRE COM A RECEITA: "; R#(M)
100 PRINT:PRINT
110 INPUT "ENTRE COM A DESPESA: "; T#(M)
120 NEXT M
6000 COLOR 3,1,1: SCREEN 2: OPEN"GRP:"FOR OUTPUT AS #1:HC=O: GOSUB 6800: CH=0: P=0: FOR J=1 TO 12: IF (LEN(STR$(R#(J)))-1) > P THEN P=LEN(STR$(R#(J)))-1
6010 IF LEN(STR$(T#(J)))-1 > P THEN P=LEN(STR$(T#(J)))-1
6020 NEXTJ: IF P<3 THEN6600
6030 FOR J=1 TO 12: D=LEN(STR$(R#(J)))-1: IF D=P AND VAL(MID$(STR$(R#(J)),2,2)) > 10 THEN CH=1
6040 IF (LEN(STR$(T#(J)))-1) = P AND VAL(MID$(STR$(T#(J)),2,2)) > 10 THEN CH=1
6045 NEXT J
6050 FOR J=1 TO 12
6300 IF CH=1 AND LEN(STR$(R#(J)))-1<P-1 THEN GOTO 6400
6360 IF CH=0 AND LEN(STR$(R#(J)))-1<P-2 THEN GOTO 6400
6370 IF CH=0 AND P=LEN(STR$(R#(J)))-1 THEN K=VAL(MID$(STR$(R#(J)),2,2)): K=K*10: K=K+VAL(MID$(STR$(R#(J)),4,1)): LINE(34+(J-1)*16, 160)-(34+(J-1)*16+5,160-K),7,BF: GOSUB 50000
6380 IF CH=0 AND P-1=LEN(STR$(R#(J)))-1THEN K=VAL(MID$(STR$(R#(J)),2,1)): K=K*10: K=K+VAL(MID$(STR$(R#(J)),3,1)): LINE(34+(J-1)*16, 160)-(34+(J-1)*16+5,160-K),7,BF: GOSUB 50000
6385 IF CH=0 AND P-2=LEN(STR$(R#(J)))-1THEN K=10: K=K+VAL(MID$(STR$(R#(J)),3,1)): LINE(34+(J-1)*16, 160)-(34+(J-1)*16+5,160-K),7,BF: GOSUB 50000
6390 IF CH=1 AND P=LEN(STR$(R#(J)))-1THEN K=VAL(MID$(STR$(R#(J)),2,1)): K=K*10: K=K+VAL(MID$(STR$(R#(J)),3,1)): LINE(34+(J-1)*16, 160)-(34+(J-1)*16+5,160-K),7,BF: GOSUB 50000
6395 IF CH=1 AND P<>LEN(STR$(R#(J)))-1THEN K=VAL(MID$(STR$(R#(J)),2,1)): LINE(34+(J-1)*16, 160)-(34+(J-1)*16+5,160-K),7,BF: GOSUB 50000
6400 IF CH=1 AND LEN(STR$(T#(J)))-1 < P-1 THEN GOTO 6500
6420 IF CH=0 AND LEN(STR$(T#(J)))-1 < P-2 THEN GOTO 6500
6430 IF CH=0 AND P=LEN(STR$(T#(J)))-1 THEN K=VAL(MID$(STR$(T#(J)),2,2)): K=K*10: K=K+VAL(MID$(STR$(T#(J)),4,1)): LINE(40+(J-1)*16, 160)-(40+(J-1)*16+5,160-K),8,BF: GOSUB 60000
6440 IF CH=0 AND P-1=LEN(STR$(T#(J)))-1THEN K=VAL(MID$(STR$(T#(J)),2,1)): K=K*10: K=K+VAL(MID$(STR$(T#(J)),3,1)): LINE(40+(J-1)*16, 160)-(40+(J-1)*16+5,160-K),8,BF: GOSUB 60000
6450 IF CH=0 AND P-2=LEN(STR$(T#(J)))-1THEN K=10: K=K+VAL(MID$(STR$(T#(J)),3,1)): LINE(40+(J-1)*16, 160)-(40+(J-1)*16+5,160-K),8,BF: GOSUB 60000
6460 IF CH=1 AND P=LEN(STR$(T#(J)))-1THEN K=VAL(MID$(STR$(T#(J)),2,1)): K=K*10: K=K+VAL(MID$(STR$(T#(J)),3,1)): LINE(40+(J-1)*16, 160)-(40+(J-1)*16+5,160-K),8,BF: GOSUB 60000
6470 IF CH=1 AND P<>LEN(STR$(T#(J)))-1THEN K=VAL(MID$(STR$(T#(J)),2,1)): LINE(40+(J-1)*16, 160)-(40+(J-1)*16+4,160-K),8,BF: GOSUB 60000
6500 NEXT J: PRESET(160,24),1: PRINT#1,"1";STRING$(P-2+CH,"0");
6600 IF HC<>666 THEN GOTO 6600 ELSE CLOSE:SCREEN0:RETURN
6800 T=10: X=0: COLOR2: PRESET(60,12),4: PRINT#1,"Grafico de barras":PRESET(60,24),4: PRINT#1,"Escala:1 por ":FOR D==60 TO 160 STEP 10: PRESET(2+X,D-6):PRINT#1,STR$(T):T=T-1: x=8: NEXT D: LINE(24,60)-(24,160),4: LINE(24,161)-(250,161),4
6801 LINE(48,180)-(55,188),7,BF: PRESET(58,182): PRINT#1,"CREDITO": LINE (144,180)-(151,188),8,BF: PRESET(154,182): PRINT#1,"DEBITO"
6810 X=0: FOR J=1 TO 9: PRESET(34+(J-1)*16,164),1: A$=RIGHT$(STR$(J),1): PRESET(34+(J-1)*16+4,164),1: PRINT#1,A$: NEXT J: PRESET(34+9*16, 164),1: PRINT#1,"1": PRESET(16*9+34+6,164),1: PRINT#1,"0": PRESET(34+10*16,164),1: PRINT#1,"1"
6811 PRESET(34+10*16+6,164) ,1
6812 PRINT#1,"1": PRESET(11*16+34,164),1: PRINT#1, "1": PRESET(11*16+34+6,164),1: PRINT#1,"2": RETURN
50000 D=34+(J-1)*16: K=160-K: D=D+4: LINE(D-4,K-1)-(D-1,K-7),7: LINE(D+1,K)-(D+5,K-7),7: LINE(D-1,K-7)-(D+5,K-7),7: LINE(D+5,K-7)-(D+5,160),7
50001 RETURN
60000 D=34+(J-1)*16: K=160-K: D=D+10: LINE(D-4,K-1)-(D-1,K-7),7: LINE(D+1,K)-(D+5,K-7),7: LINE(D-1,K-7)-(D+5,K-7),7: LINE(D+5,K-7)-(D+5,160),7
60001 RETURN