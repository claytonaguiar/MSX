10 REM *******************
20 REM * PERIGO ESPACIAL *
30 REM *       MSX       *
40 REM *                 *
50 REM *******************
60 REM
70 REM
71 KEY OFF
80 OPEN "GRP:" AS #1
90 ON STOP GOSUB 1690
100 STOP ON
110 ON SPRITE GOSUB 690
120 SPRITE ON
130 SCR=0
140 GOSUB 1600
150 COLOR 15,1,1
160 SCREEN 2,2
170 GOSUB 800
180 GOSUB 1290
190 GOSUB 1380
200 GOSUB 1450
210 REM INICIO
220 V=2
230 H=0
240 X=125
250 Y=0
260 F=140
270 FOR I=1 TO 4
280 X(I)=INT(200*RND(1)+20)
290 HS(I)=INT(RND(1)*8-4)*2: IF HS(I)=0 THEN 290
300 NEXT
310 REM LOOP PRINCIPAL
320 IF STICK(Q)=3 THEN H=H-1:GOSUB 520
330 IF STICK(Q)=7 THEN H=H+1:GOSUB 520
340 IF STICK(Q)=5 THEN V=V+3:GOSUB 520
350 X=X+H
360 V=V-1
370 Y=Y-V
380 IF Y<=-20 OR Y>190 THEN V=-V
390 IF X<=-10 OR X>250 THEN H=-H
400 LINE(214,182)-(250,190),7,BF
410 DRAW "BM216,182"
420 IF V<-4 THEN PRINT#1,"ALTA" ELSE PRINT #1,"OK"
430 PUT SPRITE 0,(X,Y),10,0
440 FOR I=1 TO 4
450 X(I)=X(I)+HS(I)
460 IF X(I)<10 OR X(I)>240 THEN HS(I)=-HS(I)
470 PUT SPRITE I,(X(I),I*35),7,4
480 NEXT
490 IF X>185 AND X<197 AND Y>139 AND Y<144 THEN 580
500 GOTO 320
510 REM ROTINA COMBUSTIVEL
520 F=F-1
530 XF=24+INT(F/2)*2
540 DRAW "C7BM=XF;,180D9"
550 IF F<=0 THEN 690
560 RETURN
570 REM ATERRISAGEM
580 COLOR 15
590 SCR=SCR+F*10
600 DRAW "BM70,70"
610 PRINT #1,"OTIMO POUSO!"
620 DRAW "BM30,80"
630 PRINT#1,"PRESS. ESPACO P/ CONTINUAR"
640 DRAW"BM55,90"
650 PRINT#1, "SEUS PONTOS ";SCR
660 IF STRIG(0) THEN 180
670 GOTO 660
680 REM EXPLOSAO
690 FOR I=1 TO 10
700 CIRCLE (X+8,Y+8),RND(1)*20,RND(1)*15,,,.5+RND(1)*15
710 NEXT I
720 COLOR 15
730 DRAW "BM50,100"
740 PRINT#1,"PRESS. CTRL STOP E F5"
750 DRAW"BM50,110"
760 PRINT#1,"PARA JOGAR NOVAMENTE"
770 IF STRIG(0) THEN RUN
780 GOTO 770
790 REM NAVE
800 FOR I=1 TO 16
810 READ A$
820 B$=B$+CHR$(VAL("&B"+LEFT$(A$,8)))
830 C$=C$+CHR$(VAL("&B"+RIGHT$(A$,8)))
840 NEXT I
850 SPRITE$(0)=B$+C$
860 REM UFO ALIENIGENA
870 FOR I=1 TO 16
880 READ A$
890 D$=D$+CHR$(VAL("&B"+LEFT$(A$,8)))
900 E$=E$+CHR$(VAL("&B"+RIGHT$(A$,8)))
910 NEXT I
920 SPRITE$(4)=D$+E$
930 RETURN
940 DATA 1000001001000001
950 DATA 0100011111100010
960 DATA 0010101111010100
970 DATA 0001101001011000
980 DATA 0010101001010100
990 DATA 0110101001010110
1000 DATA 1111101001011111
1010 DATA 0110101111010110
1020 DATA 0010101001010100
1030 DATA 0001101001011000
1040 DATA 0000101111010000
1050 DATA 0000111111110000
1060 DATA 0000111001110000
1070 DATA 0001100000011000
1080 DATA 0011000000001100
1090 DATA 0111000000001110
1100 REM
1110 DATA 1111100000000001
1120 DATA 0011111000000001
1130 DATA 0000111100000011
1140 DATA 0000011110000011
1150 DATA 0000001111000111
1160 DATA 0000011111101110
1170 DATA 0000110001111100
1180 DATA 0001110001111100
1190 DATA 0011110001111000
1200 DATA 0011111111110000
1210 DATA 0111011111000000
1220 DATA 1110011100000000
1230 DATA 1110001111000000
1240 DATA 1100000111100000
1250 DATA 1000000001111100
1260 DATA 1000000000011111
1270 REM FUNDO DA TELA
1280 REM ESTRELAS
1290 R=RND(-TIME)
1300 CLS
1310 FOR I=1 TO 100
1320 J=256*RND(1)
1330 K=181*RND(1)
1340 PSET(J,K),15
1350 NEXT
1360 RETURN
1370 REM COMBUSTIVEL E INDICADORES
1371 REM DE VELOCIDADE
1380 LINE(20,178)-(250,191),7,BF
1390 LINE(24,180)-(164,189),6,BF
1400 DRAW "BM170,182"
1410 COLOR 1
1420 PRINT#1,"VELOC."
1430 RETURN
1440 REM PLATAFORMA ESPACIAL
1450 DRAW "BM200,155"
1460 COLOR 4
1470 A$="R3G1L3E1"
1480 FOR J=0 TO 2 STEP 2
1490 DRAW"A=J;"
1500 GOSUB 1550
1510 NEXT
1520 DRAW "A0"
1530 COLOR 1
1540 RETURN
1550 FOR I= 68 TO 4 STEP -8
1560 DRAW "S=I;XA$;"
1570 NEXT
1580 DRAW "S0"
1590 RETURN
1600 CLS
1610 PRINT TAB(11);"PERIGO ESPACIAL"
1620 PRINT TAB(14);""
1630 PRINT TAB(8);"JOYSTICK OU TECLADO"
1640 PRINT TAB(8);"PRESS. BOTAO DE TIRO"
1650 PRINT TAB(9);"OU BARRA DE ESPACO"
1660 IF STRIG(1) THEN Q=1: RETURN
1670 IF STRIG(0) THEN Q=0: RETURN
1680 GOTO 1660
1690 COLOR 15,4,7
1700 END