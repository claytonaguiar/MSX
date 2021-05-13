10 REM PIANO
60 CLS
70 COLOR 7,1,1
80 REM ******************
90 REM *                *
100 REM*  APRESENTACAO  *
110 REM*                *
120 REM******************
130 SCREEN3
140 OPEN "GRP:"AS 1
150 PRESET (65,60):PRINT#1, "PIANO"
160 KEY OFF
170 FOR I=1 TO 2000:NEXT I
180 SCREEN O
190 REM O CARACTER (1) E OBTIDO PRESSIONANDO GRPH (LGRA) E .., E O (2) PRESSIONANDO GRPH, SHIFT E ..
200 LOCATE 12,10:PRINT "(1)  P I A N O  (2)"
250 PLAY "T255CDECDEEFGEFGGAGFECGAGFECCO3GO4C"
260 FORI=1 TO 2000:COLOR,4:COLOR,2:NEXT
270 COLOR 7,1,1:BEEP
280 CLS:LOCATE 0,10:INPUT"QUER VER EXPLICACOES (S/N)    ";R$
290 IF R$="S" THEN 1620 ELSE 300
300 SCREEN 2
310 REM ************
320 REM *          *
330 REM * TECLADO  *
340 REM *          *
350 REM ************
360 LINE(23,120)-(256,192),15,BF
370 LINE(36,120)-(36,192),4
380 LINE(49,120)-(49,192),4
390 LINE(62,120)-(62,192),4
400 LINE(75,120)-(75,192),4
410 LINE(88,120)-(88,192),4
420 LINE(101,120)-(101,192),4
430 LINE(114,120)-(114,192),4
440 LINE(127,120)-(127,192),4
450 LINE(140,120)-(140,192),4
460 LINE(153,120)-(153,192),4
470 LINE(166,120)-(166,192),4
480 LINE(179,120)-(179,192),4
490 LINE(192,120)-(192,192),4
500 LINE(205,120)-(205,192),4
510 LINE(218,120)-(218,192),4
520 LINE(231,120)-(231,192),4
530 LINE(244,120)-(244,192),4
540 LINE(32,120)-(40,160),4,BF
550 LINE(45,120)-(53,160),4,BF
560 LINE(71,120)-(79,160),4,BF
570 LINE(84,120)-(92,160),4,BF
580 LINE(97,120)-(105,160),4,BF
590 LINE(188,120)-(196,160),4,BF
600 LINE(123,120)-(131,160),4,BF
610 LINE(136,120)-(144,160),4,BF
620 LINE(162,120)-(170,160),4,BF
630 LINE(175,120)-(183,160),4,BF
640 LINE(214,120)-(222,160),4,BF
650 LINE(227,120)-(235,160),4,BF
660 LINE(80,0)-(170,13),6,B
670 LINE(23,54)-(256,54),2
680 LINE(23,64)-(256,64),2
690 LINE(23,74)-(256,74),2
700 LINE(23,84)-(256,84),2
710 LINE(23,94)-(256,94),2
720 CIRCLE(33,84),2,7
730 PAINT(33,84),7
740 PRESET(90,4):PRINT#1,"P I A N O"
750 PRESET (105,25):PRINT#1, "M S X"
760 COLOR 1:PRESET (249,135):PRINT#1,"2"
770 PRESET(249,160):PRINT#1,"1"
780 COLOR 7:PRESET(67,0):PRINT#1,"2"
790 PRESET(180,0):PRINT#1, "1"
800 A$=INKEY$
810 REM ***********
820 REM *         *
830 REM *  NOTAS  *
840 REM *         *
850 REM ***********
860 COLOR 7
870 IF A$="Q" THEN PLAY"C":PRESET(203,65):PRINT#1, "2"
880 IF A$="S" THEN PLAY"D":PRESET(233,61):PRINT#1, "2"
890 IF A$="D" THEN PLAY"E":PRESET(53,91):PRINT#1, "2"
900 IF A$="F" THEN PLAY"F":PRESET(83,85):PRINT#1, "2"
910 IF A$="G" THEN PLAY"G":PRESET(113,81):PRINT#1, "2"
920 IF A$="H" THEN PLAY"A":PRESET(143,75):PRINT#1, "2"
930 IF A$="J" THEN PLAY"B":PRESET(173,71):PRINT#1, "2"
940 REM *************
950 REM *           *
960 REM *  OITAVAS  *
970 REM *           *
980 REM *************
990 IF A$="1" THEN PLAY "O1"
1000 IF A$="2" THEN PLAY "O2"
1010 IF A$="3" THEN PLAY "O3"
1020 IF A$="4" THEN PLAY "O4"
1030 IF A$="5" THEN PLAY "O5"
1040 IF A$="6" THEN PLAY "O6"
1050 IF A$="7" THEN PLAY "O7"
1060 IF A$="8" THEN PLAY "O8"
1070 REM **************
1080 REM *            *
1090 REM * SUSTENIDOS *
1100 REM *            *
1110 REM **************
1120 IF A$="A" THEN PLAY "C#"
1130 IF A$="Z" THEN PLAY "D#"
1140 IF A$="E" THEN PLAY "E#"
1150 IF A$="R" THEN PLAY "F#"
1160 IF A$="T" THEN PLAY "G#"
1170 IF A$="Y" THEN PLAY "A#"
1180 IF A$="U" THEN PLAY "B#"
1190 REM ************
1200 REM *          *
1210 REM *  BEMOIS  *
1220 REM *          *
1230 REM ************
1240 IF A$="I" THEN PLAY "C-"
1250 IF A$="O" THEN PLAY "D-"
1260 IF A$="P" THEN PLAY "E-"
1270 IF A$="K" THEN PLAY "F-"
1280 IF A$="L" THEN PLAY "G-"
1290 IF A$="M" THEN PLAY "A-"
1300 IF A$="C" THEN PLAY "B-"
1310 REM **************
1320 REM *            *
1330 REM *  DURACAO   *
1340 REM *            *
1350 REM **************
1360 IF A$="W" THEN PLAY "T32"
1370 IF A$="X" THEN PLAY "T80"
1380 IF A$="C" THEN PLAY "T120"
1390 IF A$="V" THEN PLAY "T170"
1400 IF A$="B" THEN PLAY "T220"
1410 IF A$="N" THEN PLAY "T255"
1420 REM ***************
1425 REM *             *
1430 REM *  MUSICAS    *
1435 REM * PROGRAMADAS *
1450 REM *             *
1460 REM ***************
1470 IF A$="9" THEN PLAY "T250CDECDEEFGEFGGAGFECGAGFECCO3GO4C"
1480 IF A$="0" THEN A$="M2000S11T255O3CCEEGGAAA#A#AAGGEE":B$="FFAAO4CCDDD#D#DDCCO3AA":C$="GGBBO4DDEEO3FFAAO4CCDD":PLAY A$+A$:PLAY B$+A$:PLAY C$+A$:PLAY"O4":BEEP
1490 IF A$="-" THEN PLAY "O4T255EDT120ET200DCO3BAT150G#T255AO4"
1500 REM ********************
1510 REM *                  *
1520 REM *  INICIALIZACAO   *
1530 REM *                  *
1540 REM ********************
1550 REM O CARACTER (3) E OBTIDO PRESSIONANDO GRPH E P
1560 IF A$=" " THEN PRESET(203,65):COLOR 1:PRINT#1,"3":PRESET(233,61):PRINT#1,"(3)":PRESET(53,91):PRINT#1,"(3)":PRESET(83,85):PRINT#1,"3":PRESET(113,81):PRINT#1,"3":PRESET(143,75):PRINT#1,"3":PRESET(173,71):PRINT#1,"3"
1570 LINE(23,64)-(256,64),2
1580 LINE(23,74)-(256,74),2
1590 LINE(23,84)-(256,84),2
1600 LINE(23,94)-(256,94),2
1610 GOTO 800
1620 REM ******************
1630 REM *                *
1640 REM *  EXPLICACOES   *
1650 REM *                *
1660 REM ******************
1670 CLS:BEEP
1680 LOCATE 0,0:PRINT" PARA TOCAR PRESS. AS SEGUINTES TECLAS:Q=DO  S=RE  D=MI  F=FA  G=SOL  H=LA    J=SI ."
1690 LOCATE 0,7:PRINT" VOCE PODE TOCAR ATE OITO OITAVAS ...  1=OITAVA 1  2=0ITAVA 2  3=0ITAVA 3    E ASSIM POR DIANTE."
1700 LOCATE 0,13:PRINT" A DURACAO DAS NOTAS SE SITUA EM :     W,X,C,V,B,N. 'W' E A MAIS LENTA  E     'N' E A MAIS RAPIDA."
1710 LOCATE 7,22:PRINT"PRESSIONE <ESPACO>"
1720 S$=INKEY$
1730 IF S$=" " THEN 1750
1740 GOTO 1720
1750 CLS:BEEP
1760 LOCATE 0,0:PRINT" VOCE PODE TAMBEM USAR OS SUSTENIDOS    E OS BEMOIS":LOCATE 0,5:PRINT" SUSTENIDOS: A=DO#.Z=RE#.E=MI#.R=FA#.   T=SOL#.Y=LA#.U=SI#."
1770 LOCATE 0,10:PRINT" BEMOIS: I=DOb.O=REb.P=MIb.K=FAb.      L=SOLb.M=LAb.C=SIb."
1780 LOCATE 0,14:PRINT" PARA REFAZER A PAUTA PRESSIONE A BARRA DE ESPACO"
1790 LOCATE 7,22:PRINT"PRESSIONE <ESPACO>"
1800 Z$=INKEY$
1810 IF Z$=" " THEN 1830
1820 GOTO 1800
1830 CLS:BEEP
1840 LOCATE 0,0:PRINT" COMO EXERCICIO VOCE TEM TRES MUSICAS  PROGRAMADAS. PARA OUVI-LAS PRESSIONE    A TECLA '9' , '0' OU '-'."
1870 LOCATE 0,10:PRINT" DIVIRTA-SE............."
1880 LOCATE 7,22:PRINT"PRESSIONE <ESPACO>"
1890 S$=INKEY$
1900 IF S$=" " THEN BEEP:GOTO 300
1910 GOTO 1890
1920 STOP:END
