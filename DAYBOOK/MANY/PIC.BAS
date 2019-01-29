SCREEN 13

TYPE Picture
 Xpixel AS STRING * 320
END TYPE

DIM Longh AS Picture

OPEN COMMAND$ FOR BINARY AS #1 LEN = LEN(Longh)

FOR y = 1 TO 200
 FOR x = 1 TO 320
 Fit = Fit + 1
 GET #1, Fit, Longh
 PSET (x, y), ASC(Longh.Xpixel)

 NEXT x
NEXT y

