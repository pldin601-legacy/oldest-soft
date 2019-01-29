DECLARE SUB FileFrag (BaseFile AS STRING, OutFile AS STRING, StartPos AS LONG, LengthPos AS LONG)
IF COMMAND$ = "" THEN END
CLS
PRINT
PRINT "Quadrosoft (R) File Unpacker (TM) for MS-DOS (R)"
PRINT "Copyright (C) 2000-2001 Quadrosoft Corporation. All Rights Recerved."
PRINT
OPEN COMMAND$ + ".@FL" FOR INPUT AS #1
DO
INPUT #1, sFileName$
INPUT #1, SStartPos$
INPUT #1, SLengthPos$
PRINT "UnPacking file "; sFileName$; "...";
FileFrag COMMAND$ + ".@DT", sFileName$, VAL(SStartPos$), VAL(SLengthPos$)
LOOP WHILE NOT EOF(1)
CLOSE #1

SUB FileFrag (BaseFile AS STRING, OutFile AS STRING, StartPos AS LONG, LengthPos AS LONG)

DIM RightBlocks AS LONG, RightLeft AS LONG
DIM LeftBlocks AS LONG, LeftLeft AS LONG
DIM LOFRight AS LONG, LOFLEFT AS LONG
DIM Block AS STRING, Index AS LONG
LET BlockSize = 32100
DIM X, Y

X = POS(0)
Y = CSRLIN

A = FREEFILE: OPEN BaseFile FOR BINARY ACCESS READ AS #A
B = FREEFILE: OPEN OutFile FOR BINARY AS #B

LOFRight = StartPos - 1
RightBlocks = FIX(LOFRight / BlockSize)
RightLeft = LOFRight MOD BlockSize

LOFLEFT = LengthPos
LeftBlocks = FIX(LOFLEFT / BlockSize)
LeftLeft = LOFLEFT MOD BlockSize


Block = STRING$(RightLeft, 32)
GET #A, , Block

Block = STRING$(BlockSize, 32)
FOR Index = 1 TO RightBlocks
GET #A, , Block
LOCATE Y, X, 1: PRINT "Seeking File..."; FORMAT$(100 / RightBlocks * Index, "0") + "%";
NEXT Index

Block = STRING$(LeftLeft, 32)
GET #A, , Block
PUT #B, , Block
LOCATE Y, X, 1: PRINT "100%                 ";

Block = STRING$(BlockSize, 32)
FOR Index = 1 TO LeftBlocks
GET #A, , Block
PUT #B, , Block
LOCATE Y, X, 1: PRINT FORMAT$(100 / LOFLEFT * LOF(B), "0"); "%                       ";
NEXT Index
PRINT
CLOSE #A, #B

END SUB

