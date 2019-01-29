CLS
SCREEN 13
TYPE TestRecord
   NameField  AS STRING * 1
END TYPE

DIM Rec AS TestRecord

DIM FileBuffer AS TestRecord
OPEN "news.dat" FOR RANDOM AS #1 LEN = LEN(FileBuffer)
RN = 1
max = LOF(1) / LEN(FileBuffer)

FOR I = 1 TO max
   Y = Y + (1 / 80)
   IF X = 80 THEN X = 0
   X = X + 1
   ' PRINT Y; ":"; X
 
   GET #1, I, FileBuffer
   LET CH = ASC(FileBuffer.NameField)
   IF I = 1 THEN Y = 0
   PSET (X, FIX(Y)), CH
 
NEXT I

CLOSE #1
SLEEP
END

