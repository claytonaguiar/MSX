1 REM ****************
2 REM *              *
3 REM *   CONTROLE   *
4 REM *      DE      *
5 REM *   GRAVACAO   *
6 REM *              *
7 REM *     M S X    *
8 REM *              *
9 REM ****************
10 REM
40 WIDTH 39:CLEAR 2000
50 DIM L(100):DIM N$(100)
60 KEY OFF:CLS:SCREEN O:COLOR 15,12
70 LOCATE 0,1:PRINT FRE(X);SPC(27);FRE("")
80 LOCATE 0,2:PRINT"*************** OPCOES ****************":PRINT"(";R
90 LOCATE 0,6:PRINT "          1 Criacao":PRINT
100 PRINT"          2 Visualizacao e busca":PRINT
110 PRINT"          3 Modificacao e ajuste":PRINT
120 PRINT"          4 Carga":PRINT
130 PRINT"          5 Gravacao"
140 LOCATE 0,18:INPUT "************* ESCOLHA *************" ;F
150 IF F<1 OR F>5 THEN 60
160 ON F GOSUB 180,580,250,480,380
169 REM
170 REM * CRIACAO
171 REM
180 CLS:SCREEN 0
190 PRINT:PRINT"* Entre com as seguintes coordenadas:":PRINT
200 INPUT"* Numero de seus programas (<58):";R:PRINT:IF R>57OR R=0 THEN 200
210 FOR X=1 TO R
220 PRINT"* Nome do programa numero:";X:INPUT N$(X):PRINT:IF N$(X)="" THEN 220
230 INPUT"* Duracao da busca rapida (em segundos):";L(X):PRINT:IF L(X)=0 THEN 230
240 NEXT X:RETURN 60
244 REM
245 REM * CODIFICACAO E AJUSTE
250 IF R=0 THEN 60
256 REM
260 CLS:PRINT"[";R:LOCATE10,1:PRINT "Modificacao e ajuste"
270 PRINT TAB(10)"=================="
280 LOCATE0,4:PRINT"* Opcoes:      1 Modificacao                      2 Ajuste"
281 REM FIX ":"->"else" 
290 PRINT:INPUT" Escolha (1-2):";B:IF B=1 THEN R=R-1elseIF B=2 THEN R=R+1
300 PRINT:INPUT"* Numero do proqrama:";X
310 LOCATE 10,11:PRINT"N.:        ";X
320 PRINT"          Nome:        ";LEFT$(N$(X),6)
330 PRINT"          Segundos:    ";L(X)
340 PRINT:PRINT"* Faca sua modificacao e ajuste:";LOCATE 10,17:PRINT"N.:"; X
350 INPUT"          Nome:        ";N$(X):IF N$(X)=""THEN 350
360 INPUT"          Segundos: ";L(X)
370 R=R+1:LOCATE 7,21:INPUT"Confirma (SIM/NAO):";V$:IF V$="SIM"THEN 60ELSE 260
374 REM
375 REM * GRAVACAO
376 REM
380 IF R=0 THEN 60
390 LOCATE 0,20:PRINT"* Coloque o gravador em RECORD/PLAY ate escutar um beep *":X$=INPUT$(1)
400 PRINT"[";R
410 OPEN"F1" FOR OUTPUT AS#1
420 PRINT #1,R
430 FOR X=1 TO R
440 PRINT #l,N$(X):PRINT #1,L(X)
450 NEXT X
460 CLOSE
470 RETURN 60
479 REM
480 REM * CARGA
481 REM
490 PRINT: LOCATE 0,21:PRINT"* Coloque o gravador em leitura *"
500 OPEN"FI" FOR INPUT AS#1
510 INPUT #1,R
520 FOR X=1 TO 57
530 IF X=R+1 THEN 560
540 INPUT #1,N$(X):INPUT #1,L(X)
550 NEXT X
560 CLOSE
570 RETURN 60
574 REM
575 REM * VISUALIZACAO E BUSCA
576 REM
580 CLS:COLOR 15:IF R=0 THEN 60
590 PRINT "[";R:LOCATE 6,0:PRINT"Visualizacao dos registros"
600 PRINT TAB(6)"==========================":LOCATE 0,3
610 FOR X=1 TO 19:PRINT;X;" ";LEFT$(N$(X),6);"   ":NEXT
620 B=3:FOR X=20 TO 38:LOCATE 13,B:PRINT;X;" ";LEFT$(N$(X),6);"   ":B=B+1:NEXT
630 B=3:FOR X=39 TO 57:LOCATE 27,B:PRINT;X;" ";LEFT$(N$(X),6);"   ":B=B+1:NEXT
640 LOCATE 0,23:INPUT"* Sua escolha";N:IF N=O THEN RETURN 60
650 CLS:LOCATE 14,5:PRINT"Busca":PRINTTAB(14)"====="
660 PRINT:PRINT"numero: ";N:PRINT"nome: ";LEFT$(N$(N),6):PRINT"segundos: ";L(N)
670 C=50*L(N)
680 LOCATE 0,15:PRINT"1) Rebobine o cassete ate ouvir o beep ":X$=INPUT$(1):MOTORON
690 LOCATE 0,15:PRINT"2) Apoie o gravador ao sinal do beep   ":X$=INPUT$(1):MOTOROFF
700 LOCATE 0,15:PRINT"3) Ouca o beep                         ":X$=INPUT$(1)
710 ON INTERVAL=C GOSUB 770
720 INTERVALON
730 CLS
740 BEEP:MOTOR ON
750 PRINT"> ";
760 GOTO 750
770 MOTOR OFF:BEEP
780 COLOR 8:LOCATE 15,11:PRINT"  PARE    ":FOR I=1 TO 800:NEXT
790 CLS: COLOR 15:LOCATE 0,10:PRINT"4) Toque o gravador e ouca o beep      ": X$=INPUT$(1)
800 LOCATE 2,16:PRINT"CLOAD:";LEFT$(N$(N),6):CLOAD
810 END