DECLARE FUNCTION AddFileToBase (FileName AS STRING, FileBase AS STRING) AS INTEGER

X = AddFileToBase("packer.lst", COMMAND$)

FUNCTION AddFileToBase (FileName AS STRING, FileBase AS STRING) AS INTEGER
' ON ERROR RESUME NEXT
' Declares
DIM Index AS LONG, I_Max AS LONG
DIM LenFile AS LONG, FleLeft AS LONG
DIM LenBase AS LONG, BseLeft AS LONG
DIM BseBlocks AS LONG, FleBlocks AS LONG
DIM Block AS STRING, JName AS STRING
BlockSize = 32100

K = FREEFILE: OPEN FileName FOR INPUT AS #K

'-------------------------------------------
J = FREEFILE: OPEN FileBase + ".@DT" FOR BINARY AS #J
L = FREEFILE: OPEN FileBase + ".@FL" FOR OUTPUT AS #L

DO
LINE INPUT #K, JName
'-------------------------------------------
LenBase = LOF(J)
BseBlocks = FIX(LenBase / BlockSize)
BseLeft = LenBase MOD BlockSize
'-------------------------------------------
I = FREEFILE: OPEN JName FOR BINARY ACCESS READ AS #I
'-------------------------------------------
PRINT "Packing the file "; UCASE$(JName); " to "; FileBase + ".@DT..."
LenFile = LOF(I)
FleBlocks = FIX(LenFile / BlockSize)
FleLeft = LenFile MOD BlockSize
'-------------------------------------------

'--------- WRITE FILE ----------------------
Block = STRING$(FleLeft, 32)
GET I, , Block
PUT J, , Block

Block = STRING$(BlockSize, 32)
FOR Index = 1 TO FleBlocks
GET I, , Block
PUT J, , Block
NEXT Index
PRINT #L, JName; ","; LenBase + 1; ","; LenFile
'-------- E W F ----------------------------
CLOSE #I

LOOP WHILE NOT EOF(K)
CLOSE #K, #J, #L


END FUNCTION

