SCREEN 10
OPEN "bcom45.lib" FOR INPUT AS #1
mn = 1
DO
LINE INPUT #1, q$
 FOR x = mn TO 1024
 LET ch$ = MID$(q$, x, 1)
 IF ch$ = "" THEN GOTO al
 LET lmp = ASC(ch$)
 LINE (x, 200)-(x, lmp)
 LOCATE 20, 1: PRINT x; " :"; lmp
al:
 NEXT x
 LET mn = 1
LOOP WHILE NOT EOF(1)



