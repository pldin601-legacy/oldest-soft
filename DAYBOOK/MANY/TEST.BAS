x$ = COMMAND$ + "\"
ON ERROR GOTO 1
CLS
FOR lt = 1 TO LEN(x$)
DO
IF x$ = "" THEN SYSTEM
m = m + 1
LET mm$ = LEFT$(x$, m)
LET MT$ = MID$(x$, m, 1)
LOOP WHILE MT$ <> "\"
LET dir$ = LEFT$(mm$, LEN(mm$) - 1)
SHELL "md " + dir$
PRINT "Creating :"; dir$
SHELL "cd " + dir$
LET x$ = RIGHT$(x$, LEN(x$) - m)
LET m = 0
NEXT

1
SYSTEM

