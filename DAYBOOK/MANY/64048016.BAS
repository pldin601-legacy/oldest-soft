CLS
SCREEN 12
TYPE TestRecord
   NameField  AS STRING * 1
END TYPE

DIM Rec AS TestRecord

DIM FileBuffer AS TestRecord
OPEN COMMAND$ FOR RANDOM AS #1 LEN = LEN(FileBuffer)
OPEN "Start.bas" FOR OUTPUT AS #2
RN = 1
max = LOF(1) / LEN(FileBuffer)

FOR I = 1 TO max
   y = y + (1 / 640)
   IF x = 640 THEN x = 0
   x = x + 1
   ' PRINT Y; ":"; X
 
   GET #1, I, FileBuffer
   LET CH = ASC(FileBuffer.NameField)
   IF I = 1 THEN y = 0
   PSET (x, y), CH
   
 
NEXT I

CLOSE #1
SLEEP
END

