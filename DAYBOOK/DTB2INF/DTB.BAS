CLS
OPEN "daybook.dtb" FOR INPUT AS #1
OPEN "daybook.inf" FOR OUTPUT AS #2

DO WHILE NOT EOF(1)
LINE INPUT #1, Data1$
LINE INPUT #1, Day1$
LINE INPUT #1, Comn1$
PRINT "Writing ... "; Day1$
dei$ = MID$(Data1$, 1, 2)
month1$ = RIGHT$(Data1$, LEN(Data1$) - 3)

IF month1$ = "Января" THEN month1$ = "01"
IF month1$ = "Февраля" THEN month1$ = "02"
IF month1$ = "Марта" THEN month1$ = "03"
IF month1$ = "Апреля" THEN month1$ = "04"
IF month1$ = "Мая" THEN month1$ = "05"
IF month1$ = "Июня" THEN month1$ = "06"
IF month1$ = "Июля" THEN month1$ = "07"
IF month1$ = "Августа" THEN month1$ = "08"
IF month1$ = "Сентября" THEN month1$ = "09"
IF month1$ = "Октября" THEN month1$ = "10"
IF month1$ = "Ноября" THEN month1$ = "11"
IF month1$ = "Декабря" THEN month1$ = "12"

delo$ = dei$ + "/" + month1$ + "/1800"
PRINT #2, delo$; " D "; Day1$

LOOP


