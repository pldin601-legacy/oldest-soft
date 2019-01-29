IF COMMAND$ <> "/STORY" THEN
CLS
PRINT "MADEST STOR for DOS. Version 1.2"
PRINT "This program can be run in 'autoexec.bat' with /STORY swich for fix BOOT time."
PRINT
PRINT "Loading LOG..."
ON ERROR GOTO ml
OPEN "c:\madest\stor\stor.log" FOR INPUT AS #1
DO WHILE NOT EOF(1)
recs = recs + 1
LINE INPUT #1, rec$
LOOP
PRINT "Found"; recs; "records"
PRINT
CLOSE
INPUT "Press ENTER for details...", QwertY$
OPEN "c:\madest\stor\stor.log" FOR INPUT AS #1

DO WHILE NOT EOF(1)
LINE INPUT #1, e$
PRINT e$
LOOP

END
END IF
OPEN "c:\madest\stor\stor.log" FOR APPEND AS #1
PRINT #1, "Boot fix at "; TIME$; " in "; FORMAT$(NOW, "d mmm yyyy , dddd")
CLOSE
END

ml:
PRINT "No Records!!!"
SYSTEM

