DECLARE SUB Decode ()
IF COMMAND$ = "" THEN
 PRINT
 PRINT "Text Coder for DOS"
 PRINT "USAGE : M_CODE.EXE [file.txt] (for DeCODE use /BACK swich)"
 PRINT ""
 END
END IF
CLS
IF INSTR(1, "/BACK", COMMAND$) > 1 THEN Decode

OPEN COMMAND$ FOR INPUT AS #1
OPEN "CODED.TXT" FOR OUTPUT AS #2
DO
li = li + 1
LINE INPUT #1, Text$
  
  FOR lim = 1 TO LEN(Text$)
  BYTE$ = MID$(Text$, lim, 1)
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  ' lower case
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
  IF BYTE$ = "�" THEN BYTE$ = "�": GOTO Jes
                                


Jes:
  Liner$ = Liner$ + BYTE$
  LOCATE 1, 1: PRINT "Lines Compliled :"; li
  NEXT
LOCATE 2, 1: PRINT "Coding..."
PRINT #2, Liner$
Liner$ = ""

LOOP WHILE NOT EOF(1)
PRINT ""
PRINT "File Coded!"

SUB Decode ()

END SUB

