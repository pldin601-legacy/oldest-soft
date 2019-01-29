CLS
TYPE File
 Number AS SINGLE
 Holiday AS STRING * 50
 Type AS STRING * 1
END TYPE

DIM Forms AS File
Ding = 366


OPEN "c:\madest\daybook\daybook.day" FOR RANDOM AS #1 LEN = LEN(Forms)
leng = LOF(1) / LEN(Forms)


FOR xa = 1 TO leng
GET #1, xa, Forms

' Set's the recorded # of day


IF MONTH(Forms.Number) = 1 THEN GetDay = DAY(Forms.Number)
IF MONTH(Forms.Number) = 2 THEN GetDay = DAY(Forms.Number) + 31
IF MONTH(Forms.Number) = 3 THEN GetDay = DAY(Forms.Number) + 59
IF MONTH(Forms.Number) = 4 THEN GetDay = DAY(Forms.Number) + 90
IF MONTH(Forms.Number) = 5 THEN GetDay = DAY(Forms.Number) + 120
IF MONTH(Forms.Number) = 6 THEN GetDay = DAY(Forms.Number) + 151
IF MONTH(Forms.Number) = 7 THEN GetDay = DAY(Forms.Number) + 181
IF MONTH(Forms.Number) = 8 THEN GetDay = DAY(Forms.Number) + 212
IF MONTH(Forms.Number) = 9 THEN GetDay = DAY(Forms.Number) + 242
IF MONTH(Forms.Number) = 10 THEN GetDay = DAY(Forms.Number) + 273
IF MONTH(Forms.Number) = 11 THEN GetDay = DAY(Forms.Number) + 303
IF MONTH(Forms.Number) = 12 THEN GetDay = DAY(Forms.Number) + 334
LOCATE 1, 1: PRINT "Reading file...";
x = POS(1)
y = CSRLIN
PRINT FIX(100 / leng * xa); "%": LOCATE y, x: PLAY "p60"


IF Ding < GetDay THEN PRINT : PRINT "File Fragmented at"; FIX(100 / leng * (xa)) - 1; "%": BEEP: SYSTEM


LET Ding = GetDay



NEXT xa
PRINT
PRINT "File already is Defragmented!"
CLOSE

