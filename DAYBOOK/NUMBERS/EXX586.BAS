IF COMMAND$ = "" THEN
PRINT
ON ERROR GOTO eror
PRINT "Madest Screen Bufferizator. Version 1.0"
PRINT "Copyright(C) 2000 in Boyarka."
SLEEP 5
PRINT
PRINT "Can't run in a DOS prompt mode!"
END
END IF
PRINT
PRINT "Madest Screen Bufferizator. Version 1.0"
PRINT "Copyright(C) 2000 in Boyarka."
SLEEP 5
OPEN "c:\screen.buf" FOR OUTPUT AS #1
FOR x = 1 TO 23
FOR y = 1 TO 80
PRINT #1, CHR$(SCREEN(x, y));
IF y = 80 THEN PRINT #1, ""
NEXT y, x
CLOSE
SHELL COMMAND$

OPEN "c:\screen.buf" FOR INPUT AS #21
DO
LINE INPUT #21, li$
PRINT li$
LOOP WHILE NOT EOF(21)
CLOSE
KILL "c:\screen.buf"
CLOSE
END

eror:
PRINT
PRINT "Error: Overlay file corrupted! Can't restore screen!"
END

