CLS

TYPE TestRecord
   NameField  AS STRING * 1
END TYPE

DIM FileBuffer AS TestRecord
OPEN COMMAND$ FOR RANDOM AS #1 LEN = LEN(FileBuffer)

max = LOF(1) / LEN(FileBuffer)

MX = 1

FOR I = 1 TO max
  
   IF INKEY$ = CHR$(27) THEN SYSTEM
   GET #1, I, FileBuffer
   LET CH = ASC(FileBuffer.NameField)
   
   PRINT TAB(CH - 9); "A"
   LET MX = CH + 200
   SOUND 15900, .1

NEXT I
CLOSE #1
SLEEP
END

