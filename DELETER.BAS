TYPE Del
 Sing AS SINGLE
 Dato AS STRING * 50
 Typo AS STRING * 1
END TYPE

IF COMMAND$ = "" THEN
PRINT
PRINT "Madest Tools Day Deleter. Version 4.8 (SKIP)": SLEEP 1
PRINT "Эта прграмма используется DayBook Editor-ом!!!": BEEP
SYSTEM
END IF

DIM forms AS Del

OPEN "c:\madest\daybook\daybook.day" FOR RANDOM AS #4 LEN = LEN(forms)
OPEN "c:\madest\daybook\daybook.flt" FOR RANDOM AS #5 LEN = LEN(forms)

FOR Max = 1 TO LOF(4) / LEN(forms)

GET #4, Max, forms

IF Max <> VAL(COMMAND$) THEN
x = x + 1
PUT #5, x, forms
END IF



NEXT

