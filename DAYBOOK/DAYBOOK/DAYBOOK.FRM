Version 1.00
BEGIN Form Dialog
	AutoRedraw   = -1
	BackColor    = QBColor(4)
	BorderStyle  = 0
	Caption      = " MADEST INC DAYBOOK Version 10.5 "
	ControlBox   = -1
	Enabled      = -1
	ForeColor    = QBColor(10)
	Height       = Char(20)
	Left         = Char(7)
	MaxButton    = -1
	MinButton    = -1
	MousePointer = 0
	Tag          = ""
	Top          = Char(2)
	Visible      = -1
	Width        = Char(63)
	WindowState  = 0
	BEGIN Frame Frame1
		BackColor    = QBColor(4)
		Caption      = "‘¥£®¤­ï ¤ â "
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(14)
		Height       = Char(3)
		Left         = Char(2)
		MousePointer = 0
		TabIndex     = 1
		Tag          = ""
		Top          = Char(4)
		Visible      = -1
		Width        = Char(59)
	END
	BEGIN Frame Frame2
		BackColor    = QBColor(4)
		Caption      = "‘¥£®¤­ï ¤¥­ì"
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(0)
		Height       = Char(3)
		Left         = Char(2)
		MousePointer = 0
		TabIndex     = 2
		Tag          = ""
		Top          = Char(7)
		Visible      = -1
		Width        = Char(59)
	END
	BEGIN Frame Frame3
		BackColor    = QBColor(4)
		Caption      = "‚ç¥à  ¡ë« ¤¥­ì"
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(0)
		Height       = Char(3)
		Left         = Char(2)
		MousePointer = 0
		TabIndex     = 3
		Tag          = ""
		Top          = Char(10)
		Visible      = -1
		Width        = Char(59)
	END
	BEGIN Frame Frame4
		BackColor    = QBColor(4)
		Caption      = "‘ª®à® ¡ã¤¥â"
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(0)
		Height       = Char(3)
		Left         = Char(2)
		MousePointer = 0
		TabIndex     = 4
		Tag          = ""
		Top          = Char(13)
		Visible      = -1
		Width        = Char(59)
	END
	BEGIN Label Label2
		Alignment    = 0
		AutoSize     = 0
		BackColor    = QBColor(4)
		BorderStyle  = 0
		Caption      = ""
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(15)
		Height       = Char(1)
		Left         = Char(3)
		MousePointer = 0
		TabIndex     = 5
		Tag          = ""
		Top          = Char(8)
		Visible      = -1
		Width        = Char(57)
	END
	BEGIN Label Label3
		Alignment    = 0
		AutoSize     = 0
		BackColor    = QBColor(4)
		BorderStyle  = 0
		Caption      = ""
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(15)
		Height       = Char(1)
		Left         = Char(3)
		MousePointer = 0
		TabIndex     = 6
		Tag          = ""
		Top          = Char(14)
		Visible      = -1
		Width        = Char(57)
	END
	BEGIN Label Label4
		Alignment    = 0
		AutoSize     = 0
		BackColor    = QBColor(4)
		BorderStyle  = 0
		Caption      = ""
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(3)
		Height       = Char(1)
		Left         = Char(3)
		MousePointer = 0
		TabIndex     = 7
		Tag          = ""
		Top          = Char(11)
		Visible      = -1
		Width        = Char(57)
	END
	BEGIN Label Label1
		Alignment    = 0
		AutoSize     = 0
		BackColor    = QBColor(4)
		BorderStyle  = 2
		Caption      = "MADEST DAYBOOK  ‚¥àá¨ï 10.5 (®¡­®¢«¥­­ ï)"
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(14)
		Height       = Char(3)
		Left         = Char(10)
		MousePointer = 0
		TabIndex     = 0
		Tag          = ""
		Top          = Char(1)
		Visible      = -1
		Width        = Char(43)
	END
	BEGIN Label Label5
		Alignment    = 0
		AutoSize     = 0
		BackColor    = QBColor(4)
		BorderStyle  = 0
		Caption      = ""
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(7)
		Height       = Char(1)
		Left         = Char(3)
		MousePointer = 0
		TabIndex     = 8
		Tag          = ""
		Top          = Char(5)
		Visible      = -1
		Width        = Char(57)
	END
	BEGIN CommandButton Command1
		BackColor    = QBColor(4)
		Cancel       = 0
		Caption      = "OK"
		Default      = 0
		DragMode     = 0
		Enabled      = -1
		Height       = Char(3)
		Left         = Char(49)
		MousePointer = 0
		TabIndex     = 9
		TabStop      = -1
		Tag          = ""
		Top          = Char(16)
		Visible      = -1
		Width        = Char(12)
	END
	BEGIN Label Label6
		Alignment    = 0
		AutoSize     = 0
		BackColor    = QBColor(4)
		BorderStyle  = 1
		Caption      = "Label6"
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(7)
		Height       = Char(3)
		Left         = Char(2)
		MousePointer = 0
		TabIndex     = 10
		Tag          = ""
		Top          = Char(16)
		Visible      = -1
		Width        = Char(46)
	END
	BEGIN Timer Timer1
		Enabled      = -1
		Interval     = 500
		Left         = Char(1)
		Tag          = ""
		Top          = Char(1)
	END
END
DECLARE SUB Label1_Click ()
TYPE Datos
  DataSer AS SINGLE
  Holiday AS STRING * 50
  TypeHol AS STRING * 1
END TYPE

SUB Command1_Click ()
Label1_Click


END SUB

SUB Form_Load ()
Screen.ControlPanel(7) = 0
END SUB

SUB Form_Resize ()

dialog.SHOW

Label5.caption = FORMAT$(NOW, "d mmmm yyyy , dddd                         hh:mm")

DIM Forms AS Datos

OPEN "c:\madest\daybook\daybook.day" FOR RANDOM AS #1 LEN = LEN(Forms)

Max = LOF(1) / LEN(Forms)
FOR Rec = 1 TO Max
GET #1, Rec, Forms

label6.caption = "—â¥­¨¥ ¡ §ë..." + STR$(FIX(100 / Max * Rec)) + "% (" + HEX$(100 / Max * Rec) + ")"

IF MONTH(NOW) = 1 THEN CurDay = DAY(NOW)
IF MONTH(NOW) = 2 THEN CurDay = DAY(NOW) + 31
IF MONTH(NOW) = 3 THEN CurDay = DAY(NOW) + 59
IF MONTH(NOW) = 4 THEN CurDay = DAY(NOW) + 90
IF MONTH(NOW) = 5 THEN CurDay = DAY(NOW) + 120
IF MONTH(NOW) = 6 THEN CurDay = DAY(NOW) + 151
IF MONTH(NOW) = 7 THEN CurDay = DAY(NOW) + 181
IF MONTH(NOW) = 8 THEN CurDay = DAY(NOW) + 212
IF MONTH(NOW) = 9 THEN CurDay = DAY(NOW) + 242
IF MONTH(NOW) = 10 THEN CurDay = DAY(NOW) + 273
IF MONTH(NOW) = 11 THEN CurDay = DAY(NOW) + 303
IF MONTH(NOW) = 12 THEN CurDay = DAY(NOW) + 334


IF MONTH(Forms.DataSer) = 1 THEN GetDay = DAY(Forms.DataSer)
IF MONTH(Forms.DataSer) = 2 THEN GetDay = DAY(Forms.DataSer) + 31
IF MONTH(Forms.DataSer) = 3 THEN GetDay = DAY(Forms.DataSer) + 59
IF MONTH(Forms.DataSer) = 4 THEN GetDay = DAY(Forms.DataSer) + 90
IF MONTH(Forms.DataSer) = 5 THEN GetDay = DAY(Forms.DataSer) + 120
IF MONTH(Forms.DataSer) = 6 THEN GetDay = DAY(Forms.DataSer) + 151
IF MONTH(Forms.DataSer) = 7 THEN GetDay = DAY(Forms.DataSer) + 181
IF MONTH(Forms.DataSer) = 8 THEN GetDay = DAY(Forms.DataSer) + 212
IF MONTH(Forms.DataSer) = 9 THEN GetDay = DAY(Forms.DataSer) + 242
IF MONTH(Forms.DataSer) = 10 THEN GetDay = DAY(Forms.DataSer) + 273
IF MONTH(Forms.DataSer) = 11 THEN GetDay = DAY(Forms.DataSer) + 303
IF MONTH(Forms.DataSer) = 12 THEN GetDay = DAY(Forms.DataSer) + 334


IF YEAR(Forms.DataSer) > 1800 THEN IF GetDay = CurDay + 0 THEN label2.caption = MID$(Forms.Holiday, 1, 45) + "(" + STR$(YEAR(NOW) - YEAR(Forms.DataSer)) + " «¥â )": PLAY "c30e30g30e30g30>c10<": GOTO xim
IF GetDay = CurDay + 0 THEN label2.caption = MID$(Forms.Holiday, 1, 45): PLAY "c30e30g30e30g30>c10<": GOTO xim

xim:

FOR DayCount = 1 TO 64
IF STR$(DayCount) = "1" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "‡ ¢âà  ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF MID$(STR$(DayCount), 2, 1) = "1" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­¥© ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "1" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤¥­ì ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "2" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­ï ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "3" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­ï ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "4" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­ï ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "5" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­¥© ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "6" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­¥© ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "7" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­¥© ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "8" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­¥© ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "9" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­¥© ¡ã¤¥â " + Forms.Holiday: GOTO COMP
IF RIGHT$(STR$(DayCount), 1) = "0" THEN IF GetDay = CurDay + DayCount THEN label3.caption = "—¥à¥§" + STR$(DayCount) + " ¤­¥© ¡ã¤¥â " + Forms.Holiday: GOTO COMP
NEXT DayCount

COMP:
IF OK = 1 THEN GOTO comr
IF GetDay = CurDay - 7 AND MONTH(Forms.DataSer) = MONTH(NOW) THEN label4.caption = "7 ¤­¥© ­ § ¤ ¡ë«® " + Forms.Holiday: OK = 1: GOTO comr
IF GetDay = CurDay - 6 AND MONTH(Forms.DataSer) = MONTH(NOW) THEN label4.caption = "6 ¤­¥© ­ § ¤ ¡ë«® " + Forms.Holiday: OK = 1: GOTO comr
IF GetDay = CurDay - 5 AND MONTH(Forms.DataSer) = MONTH(NOW) THEN label4.caption = "5 ¤­¥© ­ § ¤ ¡ë«® " + Forms.Holiday: OK = 1: GOTO comr
IF GetDay = CurDay - 4 AND MONTH(Forms.DataSer) = MONTH(NOW) THEN label4.caption = "4 ¤­ï ­ § ¤ ¡ë«® " + Forms.Holiday: OK = 1: GOTO comr
IF GetDay = CurDay - 3 AND MONTH(Forms.DataSer) = MONTH(NOW) THEN label4.caption = "3 ¤­ï ­ § ¤ ¡ë«® " + Forms.Holiday: OK = 1: GOTO comr
IF GetDay = CurDay - 2 AND MONTH(Forms.DataSer) = MONTH(NOW) THEN label4.caption = "2 ¤­ï ­ § ¤ ¡ë«® " + Forms.Holiday: OK = 1: GOTO comr
IF GetDay = CurDay - 1 AND MONTH(Forms.DataSer) = MONTH(NOW) THEN label4.caption = "‚ç¥à  ¡ë« " + Forms.Holiday: OK = 1: GOTO comr
comr:
NEXT Rec
CLOSE

END SUB

SUB Label1_Click ()

dialog.HIDE



LOCATE 1, 1

SHELL "cls"
SHELL "echo DayBook  Version 5.4 (full)"
SHELL "echo Copyright 2000 by Mr.R. & Madest Inc."
SHELL "echo."
SHELL "echo."
SHELL "echo."
SHELL "echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ MADEST INC ÄÄÄÄ"
SHELL "echo ‘¥£®¤­ï : " + MID$(label2.caption, 1, 55)
SHELL "echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
SHELL "echo."
SHELL "echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
SHELL "echo ‘ª®à® ¡ã¤¥â : " + MID$(label3.caption, 1, 55)
SHELL "echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
SHELL "echo."
SHELL "echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
SHELL "echo ¥¤ ¢­® ¡ë«® : " + MID$(label4.caption, 1, 55)
SHELL "echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
SYSTEM


END SUB

SUB Timer1_Timer ()
Label5.caption = FORMAT$(NOW, "d mmmm yyyy , dddd                         hh:mm")

END SUB

