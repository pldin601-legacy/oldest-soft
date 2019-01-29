DECLARE FUNCTION CopyFile (BYVAL SourcePath AS STRING, BYVAL DestinationPath AS STRING, BYVAL FileName AS STRING) AS INTEGER
DECLARE FUNCTION FileExists (Path$) AS INTEGER
DIM SHARED Typ$, OldX, OldY
LOCATE CSRLIN, POS(0), 1, 29, 30
CLS
PRINT
PRINT "Quadrosoft (C) Windows Skin Changer"
PRINT "Copyright 2000-2001 by Quadrosoft Media Systems Inc. 2K"
PRINT
PRINT "Time to change windows skin..."
ON ERROR GOTO OOPS
Repair:
OPEN "skin.dat" FOR INPUT AS #1
INPUT #1, pattern$
INPUT #1, trap$
INPUT #1, Path$
INPUT #1, Typ$
INPUT #1, Nam$
INPUT #1, Org$
CLOSE
ON ERROR GOTO FLOW
PRINT "Registered to " + Nam$ + " from " + Org$

PRINT
PRINT "Changing...";

OldX = POS(0)
OldY = CSRLIN

MinTrap = VAL(LEFT$(trap$, INSTR(1, trap$, "-")))
MaxTrap = VAL(RIGHT$(trap$, LEN(trap$) - INSTR(1, trap$, "-")))
DefTrap = MaxTrap - MinTrap
PRINT ".";

RepLay:
FileNameNow$ = FORMAT$(MinTrap + FIX(RND(-TIMER) * DefTrap), pattern$) + "." + Typ$
IF INKEY$ > "" THEN SYSTEM
ON ERROR GOTO 0
x = CopyFile(Path$, "C:\WINDOWS", FileNameNow$)
IF x = 0 THEN
   PRINT "Can't open file. Using other..."
   LOCATE OldY, OldX
   GOTO RepLay
END IF
PRINT "."
PRINT
PRINT "Ok."
PRINT
PRINT "After Windows booting set the C:\WINDOWS\SKin.bmp"
PRINT "as Windows background picture!!!"

SYSTEM

OOPS:
CLOSE
PRINT
PRINT "ERROR! Can't read skin.dat. Using Default settings..."
OPEN "skin.dat" FOR OUTPUT AS #2
PRINT #2, "000"
PRINT #2, "1-100"
IF RIGHT$(CURDIR$, 1) = "\" THEN PRINT #2, CURDIR$
IF RIGHT$(CURDIR$, 1) <> "\" THEN PRINT #2, CURDIR$ + "\"
PRINT #2, "JPG"
PRINT #2, "Mr Shit"
PRINT #2, "Debilius org"

CLOSE
RESUME Repair

FLOW:
PRINT "Settings error!"
SYSTEM

FUNCTION CopyFile (BYVAL SourcePath AS STRING, BYVAL DestinationPath AS STRING, BYVAL FileName AS STRING) AS INTEGER
    DIM Index AS LONG
    DIM FileLength AS LONG
    DIM LeftOver AS LONG
    DIM FileData AS STRING
    DIM NumBlocks AS LONG
    DIM x AS INTEGER
    Screen.Mousepointer = 11
    IF RIGHT$(SourcePath$, 1) <> "\" THEN
        SourcePath$ = SourcePath$ + "\"            'Add ending \ symbols to path variables
    END IF
    IF RIGHT$(DestinationPath$, 1) <> "\" THEN
        DestinationPath$ = DestinationPath$ + "\"   'Add ending \ symbols to path variables
    END IF

    IF FileExists(SourcePath$ + FileName$) = 0 THEN
        GOTO ErrorCopy
    END IF

    ON LOCAL ERROR GOTO ErrorCopy


    'Copy the file
    '
    CONST BlockSize = 32768
    
    OPEN SourcePath$ + FileName$ FOR BINARY ACCESS READ AS #1

    OPEN DestinationPath$ + "skin." + Typ$ FOR OUTPUT AS #2
    CLOSE #2

    OPEN DestinationPath$ + "skin." + Typ$ FOR BINARY AS #2
    
    FileLength = LOF(1)
    
    NumBlocks = FileLength \ BlockSize
    LeftOver = FileLength MOD BlockSize
    
    FileData = STRING$(LeftOver, 32)
    
    GET #1, , FileData
    PUT #2, , FileData
    
    FileData = STRING$(BlockSize / 2, 32)
    LOCATE OldY, OldX, 1
    PRINT STRING$(100, " ")
    LOCATE OldY, OldX, 1
    FOR Index = 1 TO (NumBlocks * 2)
        GET #1, , FileData
        PUT #2, , FileData
    
        PRINT ".";
    NEXT Index
    
    FileData = ""    ' Free up String Allocation
    CLOSE #1, #2
    
    

SkipCopy:
    CopyFile = 1

ExitCopyFile:
    Screen.Mousepointer = 0
    EXIT FUNCTION
    
ErrorCopy:
    CopyFile = 0
    
    CLOSE
    Screen.Mousepointer = 0
    EXIT FUNCTION
END FUNCTION

FUNCTION FileExists (Path$) AS INTEGER
    DIM x AS INTEGER

    x = FREEFILE

    ON ERROR RESUME NEXT
    OPEN Path$ FOR INPUT AS x
    IF ERR = 0 THEN
        FileExists = 1
    ELSE
        FileExists = 0
    END IF
    CLOSE x

END FUNCTION

