TYPE Struct
 Bit AS STRING * 2
END TYPE

CLS

DIM File AS Struct

OPEN "encoded.txt" FOR BINARY AS #1 LEN = LEN(File)
OPEN COMMAND$ FOR INPUT AS #2

INPUT #2, n$
INPUT #2, n$
INPUT #2, n$
INPUT #2, n$
INPUT #2, n$
INPUT #2, n$

DO WHILE NOT EOF(2)

mliz = mliz + 1

LINE INPUT #2, Num$

File.Bit = MKI$(VAL(Num$) + 7)

PUT #1, mliz, File

LOCATE 1, 1: PRINT "Remaining -  ??? %"
PRINT
PRINT "Bytes "; mliz
LOOP
PRINT "File DeCoded!"

