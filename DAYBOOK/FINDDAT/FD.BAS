TYPE Struct
 MDay AS SINGLE
 MCom AS STRING * 50
 MTyp AS STRING * 1
END TYPE

IF COMMAND$ = "" THEN
PRINT
PRINT "Madest DayBook Class - Data Finder Version 0.1"
PRINT "Copyright 2000 Madest Com. by MiŸR"
PRINT
PRINT "Finddat.exe [DayComment] - text"
PRINT
END
END IF

DIM Ok AS Struct

OPEN "c:\MAdest\daybook\daybook.day" FOR RANDOM AS #1 LEN = LEN(Ok)
Max = LOF(1) / LEN(Ok)

FOR sea = 1 TO Max
GET #1, sea, Ok
IF UCASE$(MID$(Ok.MCom, 1, LEN(COMMAND$))) = UCASE$(COMMAND$) THEN
PRINT
PRINT "Found data!"
PRINT
PRINT "Comment           - "; Ok.MCom
PRINT "Date              - "; FORMAT$(Ok.MDay, "d mmmm yyyy , dddd")
PRINT "Position          -"; sea
END
END IF
NEXT
PRINT "Not Found!"
END


