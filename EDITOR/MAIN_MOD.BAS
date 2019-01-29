DECLARE FUNCTION LoadTextRecord (FileName AS STRING, Record AS LONG) AS INTEGER
DECLARE SUB Main ()
Main


FUNCTION LoadTextRecord (FileName AS STRING, Record AS LONG) AS INTEGER
ON ERROR RESUME NEXT
DIM Buffer AS STRING * 32000
OPEN FileName FOR RANDOM AS #1 LEN = LEN(Buffer)

Blocks = FIX(LOF(1) / LEN(Buffer))
BlockLeft = LOF(1) MOD LEN(Buffer)

IF Record <= Blocks THEN
 GET #1, Record, Buffer
 frmMain.txtMain.text = Buffer
 CLOSE #1
END IF

IF Record > Blocks THEN
 IF BlockLeft > 0 THEN
   GET #1, Record, Buffer
   frmMain.txtMain.text = MID$(Buffer, 1, BlockLeft)
   CLOSE #1
 ELSE
   frmMain.txtMain.text = ""
   CLOSE #1
 END IF
END IF

IF ERR THEN LoadTextRecord = 0
IF NOT ERR THEN LoadTextRecord = 1
CLOSE #1
END FUNCTION

SUB Main ()
PRINT
PRINT "Quadrosoft (C) Optium OS Text Editor."
PRINT "Copyright (C) 2000-2001 Bojarka, DOS Class."
PRINT
PRINT "Language: ENGLISH " + FORMAT$(NOW, "dd mmmm yyyy (dddd), hh:mm")
PRINT
END SUB

