CLOSE
OPEN "c:\screen.buf" FOR INPUT AS #21
DO
LINE INPUT #21, li$
PRINT li$
LOOP WHILE NOT EOF(21)
CLOSE
KILL "c:\screen.buf"
CLOSE

