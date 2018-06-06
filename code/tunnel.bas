SCREEN 12
DRAW "bm 320,240"
10
FOR zz% = 1 TO 640 STEP 1
LET c% = c% + 1
IF c% = 17 THEN LET c% = 1
LINE (320, 240)-(zz%, 1), c%
NEXT zz%
FOR zz% = 1 TO 480 STEP 1
LET c% = c% + 1
IF c% = 17 THEN LET c% = 1
LINE (320, 240)-(640, zz%), c%
NEXT zz%
FOR zz% = 640 TO 1 STEP -1
LET c% = c% + 1
IF c% = 17 THEN LET c% = 1
LINE (320, 240)-(zz%, 480), c%
NEXT zz%
FOR zz% = 480 TO 1 STEP -1
LET c% = c% + 1
IF c% = 17 THEN LET c% = 1
LINE (320, 240)-(1, zz%), c%
NEXT zz%
IF INKEY$ <> "" THEN 20
LET d% = c%
11
LET c% = RND * (15) + 1
IF c% = d% THEN 11
GOTO 10

20
SCREEN 0
COLOR 14, 1
END

