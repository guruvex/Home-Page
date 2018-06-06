SCREEN 12
10
IF D% = 1 THEN LET SCAL% = SCAL% - 1
IF D% = 0 THEN LET SCAL% = SCAL% + 1
IF INKEY$ = CHR$(27) THEN END
IF SCAL% >= 460 THEN LET D% = 1
IF SCAL% <= 0 THEN LET D% = 0

LET C% = RND * (15)
IF C% = 0 THEN LET C% = 1
LET B$ = "C" + STR$(C%)
DRAW B$
DRAW "BM 637,460"
LET E$ = "U" + STR$(SCAL%) + "L" + STR$(SCAL%) + "D" + STR$(SCAL%) + "R" + STR$(SCAL%)
DRAW E$
LET F% = RND * (15)
IF F% = 0 THEN LET F% = 1
LET G$ = "C" + STR$(F%)
DRAW G$
DRAW "BM 1,460"
LET H$ = "U" + STR$(SCAL%) + "R" + STR$(SCAL%) + "D" + STR$(SCAL%) + "L" + STR$(SCAL%)
DRAW H$


LET I% = RND * (15)
IF I% = 0 THEN LET I% = 1

LET J$ = "C" + STR$(I%)
DRAW J$

DRAW "BM 637,1"

LET K$ = "D" + STR$(SCAL%) + "L" + STR$(SCAL%) + "U" + STR$(SCAL%) + "R" + STR$(SCAL%)
DRAW K$


LET L% = RND * (15)
IF L% = 0 THEN LET L% = 1

LET M$ = "C" + STR$(L%)
DRAW M$

DRAW "BM 1,1"

LET N$ = "D" + STR$(SCAL%) + "R" + STR$(SCAL%) + "U" + STR$(SCAL%) + "L" + STR$(SCAL%)
DRAW N$

GOTO 10


