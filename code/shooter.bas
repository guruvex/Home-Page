CLEAR , , 2000
OPTION BASE 1
DIM ASLR%(20): DIM ASUD%(20): DIM AA%(20)
DIM BSLR%(20): DIM BSUD%(20): DIM BA%(20)
RANDOMIZE TIMER
LET CB% = 1: LET CD% = 1: LET CG% = 1: LET CD% = 1
LET AUD% = 11: LET BUD% = 11
LET ALR% = 2: LET BLR% = 79: LET EM% = 10
LET ACR% = 0: LET BCR% = 0: COMP1% = 1
LET BLOCK% = 11: LET BLOCK1% = 12
LET MY1% = 22: LET MY3% = 22
10
COLOR 14, 1: CLS
LOCATE 10, 25: PRINT "1 > PICK PERSON (PLAYER 1)"
LOCATE 11, 25: PRINT "2 > PICK PERSON (PLAYER 2)"
IF COMP% = 1 THEN LOCATE 12, 25: PRINT "3 > HUMAN COMPUTER"
IF COMP% = 0 THEN LOCATE 12, 25: PRINT "3 > HUMAN HUMAN"
LOCATE 13, 25: PRINT "4 > PLAY GAME"
LOCATE 14, 25: PRINT "5 > EXIT"
DO
LET A$ = INKEY$
LOOP UNTIL A$ <> ""
IF A$ = "1" THEN 30
IF A$ = "2" THEN 40
IF A$ = "4" THEN 100
IF A$ = "3" THEN SWAP COMP%, COMP1%
IF A$ = "5" THEN END
IF A$ = CHR$(13) THEN 100
GOTO 10
30
CLS
LOCATE 8, 25: PRINT "PLAYER 1"
LOCATE 10, 25: PRINT "� = 0"
LOCATE 11, 25: PRINT CHR$(1); " = 1"
LOCATE 12, 25: PRINT CHR$(2); " = 2"
LOCATE 13, 25: PRINT CHR$(5); " = 3"
LOCATE 14, 25: PRINT CHR$(6); " = 4"
LOCATE 15, 25: PRINT "� = 5"
LOCATE 16, 25: PRINT "� = 6"
LOCATE 17, 25: PRINT "� = 7"
LOCATE 18, 25: PRINT "� = 8"
DO
LET A$ = INKEY$
LOOP UNTIL A$ <> ""
IF A$ = "0" THEN LET ACR% = 0
IF A$ = "1" THEN LET ACR% = 1
IF A$ = "2" THEN LET ACR% = 2
IF A$ = "3" THEN LET ACR% = 3
IF A$ = "4" THEN LET ACR% = 4
IF A$ = "5" THEN LET ACR% = 5
IF A$ = "6" THEN LET ACR% = 6
IF A$ = "7" THEN LET ACR% = 7
IF A$ = "8" THEN LET ACR% = 8
GOTO 10

40
CLS
LOCATE 8, 25: PRINT "PLAYER 2"
LOCATE 10, 25: PRINT "� = 0"
LOCATE 11, 25: PRINT CHR$(1); " = 1"
LOCATE 12, 25: PRINT CHR$(2); " = 2"
LOCATE 13, 25: PRINT CHR$(5); " = 3"
LOCATE 14, 25: PRINT CHR$(6); " = 4"
LOCATE 15, 25: PRINT "� = 5"
LOCATE 16, 25: PRINT "� = 6"
LOCATE 17, 25: PRINT "� = 7"
LOCATE 18, 25: PRINT "� = 8"
DO
LET A$ = INKEY$
LOOP UNTIL A$ <> ""
IF A$ = "0" THEN LET BCR% = 0
IF A$ = "1" THEN LET BCR% = 1
IF A$ = "2" THEN LET BCR% = 2
IF A$ = "3" THEN LET BCR% = 3
IF A$ = "4" THEN LET BCR% = 4
IF A$ = "5" THEN LET BCR% = 5
IF A$ = "6" THEN LET BCR% = 6
IF A$ = "7" THEN LET BCR% = 7
IF A$ = "8" THEN LET BCR% = 8
GOTO 10

100
GOSUB 200
GOSUB 250
DO
GOSUB 300
LET A$ = INKEY$
FOR ZZ% = 1 TO 5000: NEXT ZZ%
IF COMP% = 1 THEN LET COMP2% = COMP2% + 1
IF COMP2% = EM% THEN GOSUB 430
LOOP UNTIL A$ <> ""
CLS
LOCATE 1, 2: PRINT "P1"
LOCATE 1, 78: PRINT "P2"


IF MY1% >= 2 THEN COLOR 2, 0
IF MY1% <= 1 THEN COLOR 20, 0
FOR ZZ% = 1 TO 22
IF MY1% >= ZZ% AND MY1% <= ZZ% THEN LOCATE ZZ%, 1: PRINT "�"
NEXT ZZ%

IF MY3% >= 2 THEN COLOR 2, 0
IF MY3% <= 1 THEN COLOR 20, 0
FOR ZZ% = 1 TO 22
IF MY3% >= ZZ% AND MY3% <= ZZ% THEN LOCATE ZZ%, 1: PRINT "�"
NEXT ZZ%

IF A$ = CHR$(27) THEN END
IF A$ = CHR$(0) + "P" THEN LET BUD% = BUD% + 1
IF A$ = CHR$(0) + "H" THEN LET BUD% = BUD% - 1
IF A$ = CHR$(13) THEN GOSUB 270
IF COMP% = 1 THEN 101
IF A$ = "A" OR A$ = "a" THEN LET AUD% = AUD% - 1
IF A$ = "Z" OR A$ = "z" THEN LET AUD% = AUD% + 1
IF A$ = CHR$(32) THEN GOSUB 260
101
GOSUB 400
IF AUD% = 0 THEN LET AUD% = 1
IF AUD% = 24 THEN LET AUD% = 23
IF BUD% = 0 THEN LET BUD% = 1
IF BUD% = 24 THEN LET BUD% = 23

GOSUB 410
GOSUB 330

FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 AND ASLR%(ZZ%) = 80 THEN LET AA%(ZZ%) = 0
NEXT ZZ%
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 AND BSLR%(ZZ%) = 1 THEN LET BA%(ZZ%) = 0
NEXT ZZ%

FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 THEN COLOR 14, 0: LOCATE ASUD%(ZZ%), ASLR%(ZZ%): PRINT "*"
NEXT ZZ%
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 THEN COLOR 2, 0: LOCATE BSUD%(ZZ%), BSLR%(ZZ%): PRINT "*"
NEXT ZZ%



GOTO 100
200
COLOR 14, 0
IF ACR% = 0 THEN LOCATE AUD%, ALR%: PRINT "�"
IF ACR% = 1 THEN LOCATE AUD%, ALR%: PRINT CHR$(1)
IF ACR% = 2 THEN LOCATE AUD%, ALR%: PRINT CHR$(2)
IF ACR% = 3 THEN LOCATE AUD%, ALR%: PRINT CHR$(5)
IF ACR% = 4 THEN LOCATE AUD%, ALR%: PRINT CHR$(6)
IF ACR% = 5 THEN LOCATE AUD%, ALR%: PRINT "�"
IF ACR% = 6 THEN LOCATE AUD%, ALR%: PRINT "�"
IF ACR% = 7 THEN LOCATE AUD%, ALR%: PRINT "�"
IF ACR% = 8 THEN LOCATE AUD%, ALR%: PRINT "�"
RETURN

250
COLOR 2, 0
IF BCR% = 0 THEN LOCATE BUD%, BLR%: PRINT "�"
IF BCR% = 1 THEN LOCATE BUD%, BLR%: PRINT CHR$(1)
IF BCR% = 2 THEN LOCATE BUD%, BLR%: PRINT CHR$(2)
IF BCR% = 3 THEN LOCATE BUD%, BLR%: PRINT CHR$(5)
IF BCR% = 4 THEN LOCATE BUD%, BLR%: PRINT CHR$(6)
IF BCR% = 5 THEN LOCATE BUD%, BLR%: PRINT "�"
IF BCR% = 6 THEN LOCATE BUD%, BLR%: PRINT "�"
IF BCR% = 7 THEN LOCATE BUD%, BLR%: PRINT "�"
IF BCR% = 8 THEN LOCATE BUD%, BLR%: PRINT "�"
RETURN

260
IF CA% = 1 THEN RETURN
FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 0 THEN LET AA%(ZZ%) = 1:  LET ASUD%(ZZ%) = AUD%: LET ASLR%(ZZ%) = 1: RETURN
NEXT ZZ%

RETURN
270
IF CC% = 1 THEN RETURN
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 0 THEN LET BA%(ZZ%) = 1: LET BSUD%(ZZ%) = BUD%: LET BSLR%(ZZ%) = 78: RETURN
NEXT ZZ%
RETURN


300
CLS
LOCATE 1, 2: PRINT "P1"
LOCATE 1, 78: PRINT "P2"

IF MY1% >= 2 THEN COLOR 2, 0
IF MY1% <= 1 THEN COLOR 20, 0
FOR ZZ% = 1 TO 22
IF MY1% >= ZZ% AND MY1% <= ZZ% THEN LOCATE ZZ%, 80: PRINT "�"
NEXT ZZ%

IF MY3% >= 2 THEN COLOR 2, 0
IF MY3% <= 1 THEN COLOR 20, 0
FOR ZZ% = 1 TO 22
IF MY3% >= ZZ% AND MY3% <= ZZ% THEN LOCATE ZZ%, 1: PRINT "�"
NEXT ZZ%


GOSUB 410


FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 THEN LET ASLR%(ZZ%) = ASLR%(ZZ%) + 1
NEXT ZZ%
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 THEN LET BSLR%(ZZ%) = BSLR%(ZZ%) - 1
NEXT ZZ%


FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 AND ASUD%(ZZ%) = BUD% AND ASLR%(ZZ%) = 78 THEN LET MY1% = MY1% - 1
NEXT ZZ%
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 AND BSUD%(ZZ%) = AUD% AND BSLR%(ZZ%) = 2 THEN LET MY3% = MY3% - 1
NEXT ZZ%

IF MY1% <= 0 THEN 350
IF MY3% <= 0 THEN 360

FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 AND ASLR%(ZZ%) = 80 THEN LET AA%(ZZ%) = 0
NEXT ZZ%
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 AND BSLR%(ZZ%) = 2 THEN LET BA%(ZZ%) = 0
NEXT ZZ%


FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 THEN COLOR 14, 0: LOCATE ASUD%(ZZ%), ASLR%(ZZ%): PRINT "*"
NEXT ZZ%
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 THEN COLOR 2, 0: LOCATE BSUD%(ZZ%), BSLR%(ZZ%): PRINT "*"
NEXT ZZ%

GOSUB 200
GOSUB 250

RETURN

330
FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 AND ASUD%(ZZ%) = BUD% AND ASLR%(ZZ%) = 78 THEN LET MY1% = MY1% - 1
NEXT ZZ%

FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 AND BSUD%(ZZ%) = AUD% AND BSLR%(ZZ%) = 2 THEN LET MY3% = MY3% - 1
NEXT ZZ%

IF MY1% <= 0 THEN 350
IF MY3% <= 0 THEN 360

RETURN

                 
350
CLS
LOCATE 1, 1: PRINT "P1"
LOCATE 1, 78: PRINT "P2"

LOCATE 10, 25: PRINT "PLAER 1 WINS"
LOCATE 11, 25: INPUT "(P)LAY OR (E)XIT ", A$
IF A$ = "P" OR A$ = "p" THEN 355
IF A$ = "E" OR A$ = "e" THEN END
GOTO 350
355
FOR ZZ% = 1 TO 20
LET AA%(ZZ%) = 0
LET BA%(ZZ%) = 0
NEXT ZZ%
LET AUD% = 11: LET BUD% = 11
LET MY1% = 22: LET MY3% = 22
GOTO 10

360
CLS
LOCATE 1, 1: PRINT "P1"
LOCATE 1, 78: PRINT "P2"


LOCATE 10, 25: PRINT "PLAER 2 WINS"
LOCATE 11, 25: INPUT "(P)LAY OR (E)XIT ", A$
IF A$ = "P" OR A$ = "p" THEN 365
IF A$ = "E" OR A$ = "e" THEN END
GOTO 360
365
FOR ZZ% = 1 TO 20
LET BA%(ZZ%) = 0
LET AA%(ZZ%) = 0
NEXT ZZ%
LET AUD% = 11: LET BUD% = 11
LET MY1% = 22: LET MY3% = 22
GOTO 10


400
IF A$ = CHR$(33) THEN SWAP CC%, CB%
IF A$ = CHR$(35) THEN SWAP CA%, CB%
IF A$ = CHR$(61) THEN SWAP CC%, CD%
IF A$ = CHR$(63) THEN SWAP CA%, CB%

IF A$ = CHR$(0) + CHR$(44) THEN SWAP CD%, CE%
IF A$ = CHR$(0) + CHR$(115) THEN SWAP CF%, CG%
RETURN

410
LET DC% = DC% + 1
IF DC% = 5 THEN 411 ELSE 412
411
IF DA% = 1 THEN LET BLOCK% = BLOCK% + 1
IF DA% = 0 THEN LET BLOCK% = BLOCK% - 1
IF BLOCK% <= 0 THEN LET BLOCK% = 1: LET DA% = 1
IF BLOCK% >= 24 THEN LET BLOCK% = 23: LET DA% = 0

IF DB% = 0 THEN LET BLOCK1% = BLOCK1% + 1
IF DB% = 1 THEN LET BLOCK1% = BLOCK1% - 1
IF BLOCK1% <= 0 THEN LET BLOCK1% = 1: LET DB% = 0
IF BLOCK1% >= 24 THEN LET BLOCK1% = 23: LET DB% = 1
LET DC% = 0
412
COLOR 7, 0
LOCATE BLOCK%, 39: PRINT "�"
LOCATE BLOCK1%, 39: PRINT "�"

IF CD% = 1 THEN 415 ELSE 416
415
FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 1 AND ASUD%(ZZ%) = BLOCK% AND ASLR%(ZZ%) = 39 THEN LET AA%(ZZ%) = 0
IF AA%(ZZ%) = 1 AND ASUD%(ZZ%) = BLOCK1% AND ASLR%(ZZ%) = 39 THEN LET AA%(ZZ%) = 0
NEXT ZZ%

416
IF CF% = 0 THEN 417 ELSE 418
417
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 AND BSUD%(ZZ%) = BLOCK% AND BSLR%(ZZ%) = 39 THEN LET BA%(ZZ%) = 0
IF BA%(ZZ%) = 1 AND BSUD%(ZZ%) = BLOCK1% AND BSLR%(ZZ%) = 39 THEN LET BA%(ZZ%) = 0
NEXT ZZ%
418

RETURN

430
FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 AND AUD% = BSUD%(ZZ%) THEN LET DUF% = 1: GOTO 440
NEXT ZZ%

LET DUF1% = RND * (5)
IF DUF1% = 3 THEN 445
435

IF DUF2% = 0 THEN 436 ELSE IF DUF2% = 1 THEN 437
436
LET DUF1% = RND * (4)
IF DUF1% = 1 THEN LET AUD1% = AUD1% + 1
IF DUF1% = 0 THEN LET AUD1% = AUD1% - 1
IF DUF1% = 2 THEN 437
IF DUF1% = 3 AND BUD% > AUD% THEN LET AUD% = AUD% + 1: LET AUD1% = AUD%: GOTO 437
IF DUF1% = 3 AND BUD% < AUD% THEN LET AUD% = AUD% - 1: LET AUD1% = AUD%: GOTO 437
IF DUF1% = 4 AND BUD% > AUD% THEN LET AUD% = AUD% + 1: LET AUD1% = AUD%: GOTO 437
IF DUF1% = 4 AND BUD% < AUD% THEN LET AUD% = AUD% - 1: LET AUD1% = AUD%: GOTO 437

FOR ZZ% = 1 TO 20
IF BA%(ZZ%) = 1 AND AUD1% = BSUD%(ZZ%) THEN LET DDUF% = 1 ELSE IF BA%(ZZ%) = 1 AND AUD1% <> BSUD%(ZZ%) THEN LET DDUF% = 0
NEXT ZZ%
IF DDUF% = 1 THEN 436
IF AUD1% < AUD% THEN LET AUD% = AUD% + 1: LET AUD1% = AUD%
IF AUD1% > AUD% THEN LET AUD% = AUD% - 1: LET AUD1% = AUD%
IF AUD% = 24 THEN LET AUD% = 23
IF AUD% = 0 THEN LET AUD% = 1
437

LET COMP2% = 0
LET EM% = 10
IF DUF2% = 1 THEN LET DUF3% = DUF3% + 1
IF DUF2% = 1 AND DUF3% = 5 THEN LET DUF2% = 0: LET DUF3% = 0
RETURN

440
LET DUF1% = RND * (1)
IF DUF1% = 0 THEN LET AUD% = AUD% + 1
IF DUF1% = 1 THEN LET AUD% = AUD% - 1

IF AUD% = 24 THEN LET AUD% = AUD% - 2
IF AUD% = 0 THEN LET AUD% = AUD% + 2


LET DUF% = 0: LET ZZ% = 0
LET EM% = 2: LET COMP2% = 0
LET DUF2% = 1
RETURN

445
IF CA% = 1 THEN 435
FOR ZZ% = 1 TO 20
IF AA%(ZZ%) = 0 THEN LET AA%(ZZ%) = 1:  LET ASUD%(ZZ%) = AUD%: LET ASLR%(ZZ%) = 1: GOTO 435
NEXT ZZ%
GOTO 435

