SCREEN 13
stip = 2
col = 1
Rev:
FOR x = 1 TO 360
kei$ = INKEY$
IF kei$ = CHR$(27) THEN END

col = col + 1
tol = FIX((SIN(col / 100) * 100))
tor = FIX((COS(col / 100) * 100))

DRAW "C15 TA=" + VARPTR$(x) + "ND" + STR$(tol) + "ND-" + STR$(tol) + "NL" + STR$(tor) + "NL-" + STR$(tor) + "BE50NE1BE-50"
chrc:

IF stip < 1 THEN LET stip = stip + 1: GOTO chrc
SOUND stip * 50, .05

FOR pause = 1 TO 1000 STEP stip

kei$ = INKEY$
IF kei$ = "+" THEN LET stip = stip + .5
IF kei$ = "-" THEN LET stip = stip - .5
LOCATE 23, 1: PRINT "Speed:"; FIX(stip * 100);
NEXT

chang:

DRAW "C0 TA=" + VARPTR$(x) + "ND" + STR$(tol) + "ND-" + STR$(tol) + "NL" + STR$(tor) + "NL-" + STR$(tor) + "BE50NE1BE-50"
NEXT x
GOTO Rev

