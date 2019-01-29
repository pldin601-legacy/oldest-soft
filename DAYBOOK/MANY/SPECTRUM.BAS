CLS
SCREEN 13

TYPE TestRecord
   NameField  AS STRING * 1
END TYPE

DIM FileBuffer AS TestRecord
OPEN COMMAND$ FOR RANDOM AS #1 LEN = LEN(FileBuffer)

max = LOF(1) / LEN(FileBuffer)

MX = 1

FOR I = 1 TO max
   M = M + 1
   IF INKEY$ = CHR$(27) THEN SYSTEM
   GET #1, I, FileBuffer
   LET CH = ASC(FileBuffer.NameField)
   IF M > 639 THEN LET M = 1: SLEEP: CLS
   LINE (M, MX)-(M, CH + 50)
   LET MX = CH + 50

NEXT I
CLOSE #1
SLEEP
END

