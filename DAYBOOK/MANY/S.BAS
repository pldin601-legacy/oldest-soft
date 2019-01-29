TYPE DblByt
 st AS STRING * 2
END TYPE

TYPE ExtByt
 si AS STRING * 1
END TYPE

DIM lix AS DblByt
DIM liy AS ExtByt

OPEN COMMAND$ FOR RANDOM AS #1 LEN = LEN(lix)
OPEN "exit" FOR RANDOM AS #2 LEN = LEN(liy)

FOR xm = 1 TO LOF(1) / 2
GET #1, xm, lix
PUT #2, xm, liy
NEXT

