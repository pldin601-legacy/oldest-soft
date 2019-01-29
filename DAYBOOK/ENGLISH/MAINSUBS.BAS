DECLARE FUNCTION Casing% (InChart AS STRING)
DECLARE SUB FileSave (FileName AS STRING, PathName AS STRING, DefaultExt AS STRING, DialogTitle AS STRING, ForeColor AS INTEGER, BackColor AS INTEGER, Flags AS INTEGER, Cancel AS INTEGER)
DECLARE FUNCTION CharOut$ (Char AS STRING)
'$FORM FRMTG
DECLARE SUB FileOpen (FileName AS STRING, PathName AS STRING, DefaultExt AS STRING, DialogTitle AS STRING, ForeColor AS INTEGER, BackColor AS INTEGER, Flags AS INTEGER, Cancel AS INTEGER)
'$FORM FrmText
DIM SHARED FileName$
DIM SHARED PathName$
DIM SHARED FullPath$

FUNCTION Casing% (InChart AS STRING)
IF InChart = UCASE$(InChart) THEN Casing% = 1
IF InChart = LCASE$(InChart) THEN Casing% = 2
END FUNCTION

FUNCTION CharOut$ (Char AS STRING)
Char = LCASE$(Char)
IF Char = "†" THEN CharOut$ = "a": EXIT FUNCTION
IF Char = "°" THEN CharOut$ = "b": EXIT FUNCTION
IF Char = "¢" THEN CharOut$ = "v": EXIT FUNCTION
IF Char = "£" THEN CharOut$ = "g": EXIT FUNCTION
IF Char = "§" THEN CharOut$ = "d": EXIT FUNCTION
IF Char = "•" THEN CharOut$ = "e": EXIT FUNCTION
IF Char = "¶" THEN CharOut$ = "zh": EXIT FUNCTION
IF Char = "ß" THEN CharOut$ = "z": EXIT FUNCTION
IF Char = "®" THEN CharOut$ = "i": EXIT FUNCTION
IF Char = "©" THEN CharOut$ = "j": EXIT FUNCTION
IF Char = "™" THEN CharOut$ = "k": EXIT FUNCTION
IF Char = "´" THEN CharOut$ = "l": EXIT FUNCTION
IF Char = "¨" THEN CharOut$ = "m": EXIT FUNCTION
IF Char = "≠" THEN CharOut$ = "n": EXIT FUNCTION
IF Char = "Æ" THEN CharOut$ = "o": EXIT FUNCTION
IF Char = "Ø" THEN CharOut$ = "p": EXIT FUNCTION
IF Char = "‡" THEN CharOut$ = "r": EXIT FUNCTION
IF Char = "·" THEN CharOut$ = "s": EXIT FUNCTION
IF Char = "‚" THEN CharOut$ = "t": EXIT FUNCTION
IF Char = "„" THEN CharOut$ = "oo": EXIT FUNCTION
IF Char = "‰" THEN CharOut$ = "f": EXIT FUNCTION
IF Char = "Â" THEN CharOut$ = "h": EXIT FUNCTION
IF Char = "Ê" THEN CharOut$ = "c": EXIT FUNCTION
IF Char = "Á" THEN CharOut$ = "ch": EXIT FUNCTION
IF Char = "Ë" THEN CharOut$ = "sh": EXIT FUNCTION
IF Char = "È" THEN CharOut$ = "shch": EXIT FUNCTION
IF Char = "Ì" THEN CharOut$ = "ea": EXIT FUNCTION
IF Char = "Ó" THEN CharOut$ = "you": EXIT FUNCTION
IF Char = "Ô" THEN CharOut$ = "ja": EXIT FUNCTION
IF Char = "Î" THEN CharOut$ = "i": EXIT FUNCTION
IF Char = "Ä" THEN CharOut$ = "a": EXIT FUNCTION
IF Char = "Å" THEN CharOut$ = "b": EXIT FUNCTION
IF Char = "Ç" THEN CharOut$ = "v": EXIT FUNCTION
IF Char = "É" THEN CharOut$ = "g": EXIT FUNCTION
IF Char = "Ñ" THEN CharOut$ = "d": EXIT FUNCTION
IF Char = "Ö" THEN CharOut$ = "e": EXIT FUNCTION
IF Char = "Ü" THEN CharOut$ = "zh": EXIT FUNCTION
IF Char = "á" THEN CharOut$ = "z": EXIT FUNCTION
IF Char = "à" THEN CharOut$ = "i": EXIT FUNCTION
IF Char = "â" THEN CharOut$ = "j": EXIT FUNCTION
IF Char = "ä" THEN CharOut$ = "k": EXIT FUNCTION
IF Char = "ã" THEN CharOut$ = "l": EXIT FUNCTION
IF Char = "å" THEN CharOut$ = "m": EXIT FUNCTION
IF Char = "ç" THEN CharOut$ = "n": EXIT FUNCTION
IF Char = "é" THEN CharOut$ = "o": EXIT FUNCTION
IF Char = "è" THEN CharOut$ = "p": EXIT FUNCTION
IF Char = "ê" THEN CharOut$ = "r": EXIT FUNCTION
IF Char = "ë" THEN CharOut$ = "s": EXIT FUNCTION
IF Char = "í" THEN CharOut$ = "t": EXIT FUNCTION
IF Char = "ì" THEN CharOut$ = "oo": EXIT FUNCTION
IF Char = "î" THEN CharOut$ = "f": EXIT FUNCTION
IF Char = "ï" THEN CharOut$ = "h": EXIT FUNCTION
IF Char = "ñ" THEN CharOut$ = "c": EXIT FUNCTION
IF Char = "ó" THEN CharOut$ = "ch": EXIT FUNCTION
IF Char = "ò" THEN CharOut$ = "sh": EXIT FUNCTION
IF Char = "ô" THEN CharOut$ = "shch": EXIT FUNCTION
IF Char = "ù" THEN CharOut$ = "ea": EXIT FUNCTION
IF Char = "û" THEN CharOut$ = "you": EXIT FUNCTION
IF Char = "ü" THEN CharOut$ = "ja": EXIT FUNCTION
IF Char = "õ" THEN CharOut$ = "i": EXIT FUNCTION
IF Char = "Ï" THEN CharOut$ = "": EXIT FUNCTION
IF Char = "Í" THEN CharOut$ = "": EXIT FUNCTION

CharOut$ = Char
END FUNCTION

SUB FileGo ()
FRMTG.text1.text = ""
FOR Bytes = 1 TO LEN(FrmText.text1.text)
CharIn$ = MID$(FrmText.text1.text, Bytes, 1)
FRMTG.caption = "Converting " + FORMAT$(100 / LEN(FrmText.text1.text) * Bytes, "0.00") + " %"
Chap$ = CharOut$(CharIn$)
FRMTG.text1.text = FRMTG.text1.text + Chap$
NEXT
END SUB

SUB FileOpenX ()
FileOpen FileName$, PathName$, "", "", 0, 7, Flags%, Cancel%
IF Cancel% THEN EXIT SUB
IF RIGHT$(PathName$, 1) <> "\" THEN Separator$ = "\"
FullPath$ = PathName$ + Separator$ + FileName$
OPEN FullPath$ FOR INPUT AS #1: IF LOF(1) > 30000 THEN CLOSE : EXIT SUB
FrmText.text1.text = INPUT$(LOF(1), 1)
CLOSE
END SUB

SUB FileSaveX ()
FileSave FileName$, PathName$, "*.TXT", "My Save Dialog", 0, 7, Flags%, Cancel%
IF Cancel% THEN EXIT SUB
IF RIGHT$(PathName$, 1) <> "\" THEN Separator$ = "\"
FullPath$ = PathName$ + Separator$ + FileName$
ON LOCAL ERROR GOTO ESF
OPEN FullPath$ FOR OUTPUT AS #1
PRINT #1, FRMTG.text1.text
CLOSE
EXIT SUB

ESF:
MSGBOX ("Can't save file!")
ON ERROR GOTO 0
RESUME OT
OT:
END SUB

