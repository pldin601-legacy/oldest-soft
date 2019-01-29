CLS
SCREEN 13
TYPE TestRecord
   NameField  AS STRING * 1
END TYPE

DIM Rec AS TestRecord

DIM FileBuffer AS TestRecord
OPEN COMMAND$ FOR RANDOM AS #1 LEN = LEN(FileBuffer)
OPEN "start.bas" FOR OUTPUT AS #2
RN = 1
max = LOF(1) / LEN(FileBuffer)

FOR I = 1 TO max
   y = y + (1 / 320)
   IF x = 320 THEN x = 0
   x = x + 1
   ' PRINT Y; ":"; X
 
   GET #1, I, FileBuffer
   LET CH = ASC(FileBuffer.NameField)
   IF CH = 255 THEN LET CH = 10
   IF I = 1 THEN y = 0
   PSET (x, y), CH
   PRINT #2, "PSET ("; FIX(x); ","; FIX(y); "),"; CH
 
NEXT I

CLOSE #1
SLEEP
END

