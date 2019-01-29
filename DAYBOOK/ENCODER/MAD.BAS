TYPE Struct
 Bit AS STRING * 2
END TYPE

CLS

DIM File AS Struct

OPEN COMMAND$ FOR BINARY AS #1 LEN = LEN(File)
OPEN "archive.mad" FOR APPEND AS #2
PRINT #2, "/****************************************************************"
PRINT #2, " This is a secret file Coded & 'Expanded' by Madest Tools"
PRINT #2, ""
PRINT #2, " Даже и не пытайтесь расшифровать текст!!!"
PRINT #2, ""
PRINT #2, " ***************************************************************/"


FOR Mliz = 1 TO (LOF(1) / LEN(File)) * 2

GET #1, Mliz, File

PRINT #2, STR$(CVI(File.Bit) - 7)
LOCATE 1, 1: PRINT "Remaining - "; FIX(100 / (LOF(1) / LEN(File)) * Mliz); "%"
PRINT
PRINT "Bytes "; Mliz
NEXT Mliz
PRINT "File EnCoded!"

