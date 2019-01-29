CLS
TYPE File
 Number AS SINGLE
 Holiday AS STRING * 50
 Type AS STRING * 1
END TYPE

DIM Forms AS File

PRINT "Reading file..."
OPEN "c:\madest\daybook\daybook.day" FOR RANDOM AS #1 LEN = LEN(Forms)
OPEN "c:\madest\daybook\daybook.def" FOR RANDOM AS #2 LEN = LEN(Forms)
leng = LOF(1) / LEN(Forms)

FOR dat = 366 TO 1 STEP -1

FOR xa = 1 TO leng
GET #1, xa, Forms
LOCATE 1, 1: PRINT "Seaching the day#"; dat; "at record#"; xa; "                  "

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

PRINT "- Process: ---------------------------------------------------------------------"
PRINT STRING$(80, "°")
LOCATE 3, 1: PRINT STRING$(1 + FIX(80 / 366 * (366 - dat)), "Û")
PRINT "--------------------------------------------------------------------------------"


IF GetDay = dat THEN
PRINT "Writing data - "; FORMAT$(Forms.Number, "dd/mm/yyyy")
y = y + 1
PUT #2, y, Forms
END IF

NEXT xa, dat
CLOSE
SHELL "copy c:\madest\daybook\daybook.def c:\madest\daybook\daybook.day >nul"
KILL "c:\madest\daybook\daybook.def"

