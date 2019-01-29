OPEN "c:\screen.buf" FOR OUTPUT AS #1
FOR x = 1 TO 23
FOR y = 1 TO 80
PRINT #1, CHR$(SCREEN(x, y));
IF y = 80 THEN PRINT #1, ""
NEXT y, x
CLOSE

