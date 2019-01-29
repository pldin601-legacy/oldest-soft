IF COMMAND$ = "" THEN
  PRINT
  PRINT "Quadrosoft File Coder 9.11"
  PRINT "Use filename to continue!!"
  PRINT
  END
END IF

CLS

DIM MX AS STRING * 1
DIM COD AS LONG

PRINT
PRINT "Reading file..."
OPEN COMMAND$ FOR BINARY AS #1

PRINT
OX = POS(0): OY = CSRLIN

TIMER ON                         ' Enable timer event trapping
ON TIMER(1) GOSUB Calc       ' Draw a new polygon every 3 seconds
ON ERROR RESUME NEXT
FOR COD = 1 TO LOF(1)

   GET #1, COD, MX
   MX = CHR$(255 - ASC(MX))
   PUT #1, COD, MX
   

TOTAL = (LOF(1) / H)
SCHAS = (COD / H)

   LOCATE OY, OX, 0: PRINT "Coding..." + FORMAT$(100 / LOF(1) * COD, "0.00") + "%  "; FORMAT$(FIX((TOTAL - SCHAS) / 60), "00"); ":"; FORMAT$((TOTAL - SCHAS) MOD 60, "00.00"); " seconds left.";
   TIMESTART = TIMER * 1000

NEXT


CLOSE
PRINT
PRINT "Ok"
END

Calc:
   Bytes = COD - OLD
   H = Bytes
   OLD = COD
   RETURN

