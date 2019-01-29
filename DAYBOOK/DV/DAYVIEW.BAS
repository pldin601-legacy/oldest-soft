TYPE Recs
 Dataser AS SINGLE
 SoB AS STRING * 50
 Dit AS STRING * 1
END TYPE

CLS
PRINT "Building Map..."
SLEEP 1
CLS
FOR scroll = 1 TO 366 STEP .025
LOCATE 1, 1: PRINT STRING$(scroll, "²")
NEXT
PRINT
PRINT "                                                                1 Block = 1 Day"
PRINT
PRINT "° - Free                             R - Reading"
PRINT
PRINT "Û - Found data in daybook.day"
PRINT
PRINT "² - Unsigned & (Remaining)"
PRINT ""
PRINT
PRINT "Reading Data..."

LOCATE 1, 1
DIM Forms AS Recs

OPEN "c:\madest\daybook\daybook.day" FOR RANDOM AS #1 LEN = LEN(Forms)

FOR mlx = 1 TO 366
x = x + 1
CHAR$ = "°"

FOR flnd = 1 TO LOF(1) / 55
GET #1, flnd, Forms
IF MONTH(Forms.Dataser) = 1 THEN GetDay = DAY(Forms.Dataser)
IF MONTH(Forms.Dataser) = 2 THEN GetDay = DAY(Forms.Dataser) + 31
IF MONTH(Forms.Dataser) = 3 THEN GetDay = DAY(Forms.Dataser) + 59
IF MONTH(Forms.Dataser) = 4 THEN GetDay = DAY(Forms.Dataser) + 90
IF MONTH(Forms.Dataser) = 5 THEN GetDay = DAY(Forms.Dataser) + 120
IF MONTH(Forms.Dataser) = 6 THEN GetDay = DAY(Forms.Dataser) + 151
IF MONTH(Forms.Dataser) = 7 THEN GetDay = DAY(Forms.Dataser) + 181
IF MONTH(Forms.Dataser) = 8 THEN GetDay = DAY(Forms.Dataser) + 212
IF MONTH(Forms.Dataser) = 9 THEN GetDay = DAY(Forms.Dataser) + 242
IF MONTH(Forms.Dataser) = 10 THEN GetDay = DAY(Forms.Dataser) + 273
IF MONTH(Forms.Dataser) = 11 THEN GetDay = DAY(Forms.Dataser) + 303
IF MONTH(Forms.Dataser) = 12 THEN GetDay = DAY(Forms.Dataser) + 334

IF MONTH(NOW) = 1 THEN MuxDay = DAY(NOW)
IF MONTH(NOW) = 2 THEN MuxDay = DAY(NOW) + 31
IF MONTH(NOW) = 3 THEN MuxDay = DAY(NOW) + 59
IF MONTH(NOW) = 4 THEN MuxDay = DAY(NOW) + 90
IF MONTH(NOW) = 5 THEN MuxDay = DAY(NOW) + 120
IF MONTH(NOW) = 6 THEN MuxDay = DAY(NOW) + 151
IF MONTH(NOW) = 7 THEN MuxDay = DAY(NOW) + 181
IF MONTH(NOW) = 8 THEN MuxDay = DAY(NOW) + 212
IF MONTH(NOW) = 9 THEN MuxDay = DAY(NOW) + 242
IF MONTH(NOW) = 10 THEN MuxDay = DAY(NOW) + 273
IF MONTH(NOW) = 11 THEN MuxDay = DAY(NOW) + 303
IF MONTH(NOW) = 12 THEN MuxDay = DAY(NOW) + 334

IF INKEY$ <> "" THEN END

IF mlx = MuxDay THEN CHAR$ = "N": GOTO scl
IF GetDay = mlx THEN CHAR$ = "Û": GOTO scl

x = POS(1)
y = CSRLIN
PRINT "R": LOCATE 16, 1: PRINT "Reading the "; FORMAT$(Forms.Dataser, "dd mmm yyyy")

LOCATE y, x

NEXT flnd
scl:
PRINT CHAR$;
NEXT mlx
PRINT "Press Shift..."
SLEEP

