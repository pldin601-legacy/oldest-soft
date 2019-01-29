TYPE Bit
 ALK AS STRING * 256
END TYPE

CLS

DIM Rec AS Bit

OPEN "track01.wav" FOR RANDOM AS #1 LEN = LEN(Rec)

FOR bytes = 1 TO 1456000 / 256

Rec.ALK = STRING$(256, "€")


PUT #1, bytes, Rec
LOCATE 1, 1: PRINT "Writing "; bytes * 256; "bytes...       "
NEXT

