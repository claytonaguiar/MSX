10 REM *****************
20 REM *               *
30 REM *   S E N H A   *
40 REM *               *
50 REM *    M  S  X    *
60 REM *               *
70 REM *****************
140 COLOR 2,1,1:SCREEN2
150 REM
160 LINE(160,20)-(240,20)
170 LINE(160,40)-(240,40)
180 LINE(160,60)-(240,60)
190 LINE(160,80)-(240,80)
200 LINE(160,100)-(240,100)
210 LINE(160,120)-(240,120)
220 LINE(160,20)-(240,20)
230 LINE(160,140)-(240,140)
240 LINE(160,160)-(240,160)
250 LINE(160,180)-(240,180)
260 REM
270 LINE(160,20)-(160,180)
280 LINE(240,20)-(240,180)
290 REM
300 OPEN"GRP:" FOR OUTPUTAS#1
310 DRAW "BM162,27":PRINT#1,"S E N H A"
320 REM
330 FOR Y=50 TO 170 STEP 20
340 FOR X=170 TO 180 STEP 10
350 CIRCLE(X,Y-5),2
360 CIRCLE(X,Y+5),2
370 NEXT X
380 FOR X = 200 TO 230 STEP 10
390 CIRCLE(X,Y),2
400 NEXT X
410 NEXT Y
420 REM
430 DRAW "BM70,0":COLOR9:PRINT#1,"S E N H A "
440 DRAW "BM5,26": PRINT #1," ESCOLHA UMA COR "
450 DATA 3,4,7,9,10,13
460 I = 0
470 FOR X = 10 TO 85 STEP 15
480 I = I + 1: READ C: C(I) = C
490 CIRCLE (X,50),2,C: PAINT (X,50),c
500 NEXT X
510 REM
520 DATA 00010000
530 DATA 00010000
540 DATA 00111000
550 DATA 01010100
560 DATA 00010000
570 DATA 00010000
580 DATA 00010000
590 DATA 00010000
600 FOR L = 1 TO 8
610 READ L$: S$ = S$ + CHR$(VAL("&B" + L$ ))
620 NEXT l
630 SPRITE$(1) = S$
640 REM
65O FOR I = 1 TO 4
660 T(I) = C ( INT ( RND ( - TIME ) * 6 ) + 1 )
670 NEXT I
680 Y = 50: CP = 1
690 REM
700 P = STICK (0)
710 IF P = 7 THEN X1 = X1 - 15
720 IF P = 3 THEN X1 = X1 + 15
730 IF X1 < 7 THEN X1 = 7
740 IF X1 > 82 THEN X1 = 82
750 PUTSPRITE1,(X1,53),15
760 I$ = INKEY$
770 IF I$ = "V" THEN C = POINT(X1+3,50) : BEEP : GOTO 810
780 IF I$ = "L" THEN BEEP: BEEP: GOTO 930
790 FOR TEMPO = 1 TO 50: NEXT TE
800 GOTO 700
810 P = STICK (0)
820 IF P = 7 THEN X2 = X2 - 10
830 IF P = 3 THEN X2 = X2 + 10
840 IF X2 < 197 THEN X2 = 197
850 IF X2 > 227 THEN X2 = 227
860 PUTSPRITE1,(X2,Y),15
870 I$ = INKEY$
880 IF I$ = "V" THEN BEEP: GOTO 920
890 IF I$ = "L" THEN BEEP: BEEP: GOTO 930
900 FOR TEMPO = I TO 50: NEXT TE
910 GOTO 810
920 CIRCLEIX2+3,Y1,2,C: PAINTIX2+3,Y1 ,C: GOTO 700
930 REM
940 FOR I = 1 TO 4: N1(I) = 0: N2(I) = 0: NEXT I
950 N = 0: FOR I = I TO 4
960 IF T(I) = POINT(190+I*10,Y) THEN N=N+1: N1(I) = 1: N2(I) = 1
970 NEXT I
980 IF N = 4 THEN 1280
990 B = 0:FOR I = 1 TO 4
1000 FOR J = 1 TO 4
1010 IF N1(I)<>1 AND N2(J)<>1 AND T(I) = POINT(190+J*10,Y) THEN N1(I) = 1: N2(J) = 1: B = B+1
1020 NEXT J
1030 NEXT I
1040 FOR I = 1 TO N: P(I) = 6: NEXT I
1050 FOR I = N + 1 TO N + B: P(I) = 15: NEXT I
1060 IF N + B < 1 THEN 1140
1070 CIRCLE (170,Y-5),2,P(1): PAINT (170,Y-5),P(1)
1080 IF N+B<2 THEN 1140
1090 CIRCLE (180,Y-5),2,P(2): PAINT (180,Y-5),P(2)
1100 IF N+B<3 THEN 1140
1110 CIRCLE(170,Y+5),2,P(3): PAINT (170,Y+5),P(3)
1120 IF N + B < 4 THEN 1140
1130 CIRCLE(180,Y+5) 12,P(4): PAINT(180,Y+5),P(4)
1140 Y = Y + 20: CP = CP + 1: IF Y > 170 THEN Y = 50
1150 COLOR 2
1160 FOR X = 170 TO 180 STEP 10
1170 CIRCLE(X,Y-5),2: PAINT(X,Y-5),1
1180 CIRCLE(X,Y-5),2
1190 CIRCLE(X,Y+5),2: PAINT(X,Y+5),1
1200 CIRCLE (X,Y + 5),2
1210 NEXT X
1220 FOR X = 200 TO 230 STEP 10
1230 CIRCLE(X,Y),2:PAINT(X,Y),1
1240 CIRCLE(X,Y),2
1250 NEXT X
1260 GOTO 700
1270 REM
1280 LINE(160,Y-10)-(240,Y-10),6
1290 LINE(160,Y-10)-(240,Y-10),6
1300 LINE(240,Y-10)-(240,Y+10),6
1310 LINE(240,Y+10)-(160,Y+10),6
1320 LINE(160,Y+10)-(160,Y-10),6
1330 DRAW "BM10,100": PRINT #1,"VOCE ACERTOU EM ": DRAW "BM10,112": PRINT #1; CP;"TENTATIVAS"
1340 REM
1350 COLOR 7:DRAW"BM10,130"
1360 DRAW "BM10,142": PRINT #1," QUER RECOMECAR?"
1370 COLOR 11: DRAW"BM10,155": PRINT #1, "SE SIM PRESS. ": DRAW "BM1O,167": PRINT #1,"<ESPACO>"
1380 I$=INKEY$
1390 IF I$="" THEN 1380
1400 IF I$=" " THEN BEEP: RUN
1410 BEEP:END