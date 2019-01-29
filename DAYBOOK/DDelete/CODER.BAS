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
  IF BYTE$ = "Ä" THEN BYTE$ = "ü": GOTO Jes
  IF BYTE$ = "Å" THEN BYTE$ = "û": GOTO Jes
  IF BYTE$ = "Ç" THEN BYTE$ = "ù": GOTO Jes
  IF BYTE$ = "É" THEN BYTE$ = "ö": GOTO Jes
  IF BYTE$ = "Ñ" THEN BYTE$ = "ú": GOTO Jes
  IF BYTE$ = "Ö" THEN BYTE$ = "õ": GOTO Jes
  IF BYTE$ = "Ü" THEN BYTE$ = "ô": GOTO Jes
  IF BYTE$ = "á" THEN BYTE$ = "ò": GOTO Jes
  IF BYTE$ = "à" THEN BYTE$ = "ó": GOTO Jes
  IF BYTE$ = "â" THEN BYTE$ = "ñ": GOTO Jes
  IF BYTE$ = "ä" THEN BYTE$ = "ï": GOTO Jes
  IF BYTE$ = "ã" THEN BYTE$ = "î": GOTO Jes
  IF BYTE$ = "å" THEN BYTE$ = "ì": GOTO Jes
  IF BYTE$ = "ç" THEN BYTE$ = "í": GOTO Jes
  IF BYTE$ = "é" THEN BYTE$ = "ë": GOTO Jes
  IF BYTE$ = "è" THEN BYTE$ = "ê": GOTO Jes
  IF BYTE$ = "ê" THEN BYTE$ = "è": GOTO Jes
  IF BYTE$ = "ë" THEN BYTE$ = "é": GOTO Jes
  IF BYTE$ = "í" THEN BYTE$ = "ç": GOTO Jes
  IF BYTE$ = "ì" THEN BYTE$ = "å": GOTO Jes
  IF BYTE$ = "î" THEN BYTE$ = "ã": GOTO Jes
  IF BYTE$ = "ï" THEN BYTE$ = "ä": GOTO Jes
  IF BYTE$ = "ñ" THEN BYTE$ = "â": GOTO Jes
  IF BYTE$ = "ó" THEN BYTE$ = "à": GOTO Jes
  IF BYTE$ = "ò" THEN BYTE$ = "á": GOTO Jes
  IF BYTE$ = "ô" THEN BYTE$ = "Ü": GOTO Jes
  IF BYTE$ = "õ" THEN BYTE$ = "Ö": GOTO Jes
  IF BYTE$ = "ú" THEN BYTE$ = "Ñ": GOTO Jes
  IF BYTE$ = "ö" THEN BYTE$ = "É": GOTO Jes
  IF BYTE$ = "ù" THEN BYTE$ = "Ç": GOTO Jes
  IF BYTE$ = "û" THEN BYTE$ = "Å": GOTO Jes
  IF BYTE$ = "ü" THEN BYTE$ = "Ä": GOTO Jes
  ' lower case
  IF BYTE$ = "†" THEN BYTE$ = "Ô": GOTO Jes
  IF BYTE$ = "°" THEN BYTE$ = "Ó": GOTO Jes
  IF BYTE$ = "¢" THEN BYTE$ = "Ì": GOTO Jes
  IF BYTE$ = "£" THEN BYTE$ = "Í": GOTO Jes
  IF BYTE$ = "§" THEN BYTE$ = "Ï": GOTO Jes
  IF BYTE$ = "•" THEN BYTE$ = "Î": GOTO Jes
  IF BYTE$ = "¶" THEN BYTE$ = "È": GOTO Jes
  IF BYTE$ = "ß" THEN BYTE$ = "Ë": GOTO Jes
  IF BYTE$ = "®" THEN BYTE$ = "Á": GOTO Jes
  IF BYTE$ = "©" THEN BYTE$ = "Ê": GOTO Jes
  IF BYTE$ = "™" THEN BYTE$ = "Â": GOTO Jes
  IF BYTE$ = "´" THEN BYTE$ = "‰": GOTO Jes
  IF BYTE$ = "¨" THEN BYTE$ = "„": GOTO Jes
  IF BYTE$ = "≠" THEN BYTE$ = "‚": GOTO Jes
  IF BYTE$ = "Æ" THEN BYTE$ = "·": GOTO Jes
  IF BYTE$ = "Ø" THEN BYTE$ = "‡": GOTO Jes
  IF BYTE$ = "‡" THEN BYTE$ = "Ø": GOTO Jes
  IF BYTE$ = "·" THEN BYTE$ = "Æ": GOTO Jes
  IF BYTE$ = "‚" THEN BYTE$ = "≠": GOTO Jes
  IF BYTE$ = "„" THEN BYTE$ = "¨": GOTO Jes
  IF BYTE$ = "‰" THEN BYTE$ = "´": GOTO Jes
  IF BYTE$ = "Â" THEN BYTE$ = "™": GOTO Jes
  IF BYTE$ = "Ê" THEN BYTE$ = "©": GOTO Jes
  IF BYTE$ = "Á" THEN BYTE$ = "®": GOTO Jes
  IF BYTE$ = "Ë" THEN BYTE$ = "ß": GOTO Jes
  IF BYTE$ = "È" THEN BYTE$ = "¶": GOTO Jes
  IF BYTE$ = "Î" THEN BYTE$ = "•": GOTO Jes
  IF BYTE$ = "Ï" THEN BYTE$ = "§": GOTO Jes
  IF BYTE$ = "Í" THEN BYTE$ = "£": GOTO Jes
  IF BYTE$ = "Ì" THEN BYTE$ = "¢": GOTO Jes
  IF BYTE$ = "Ó" THEN BYTE$ = "°": GOTO Jes
  IF BYTE$ = "Ô" THEN BYTE$ = "†": GOTO Jes
                                


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

