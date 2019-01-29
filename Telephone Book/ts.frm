VERSION 2.00
Begin Form Form1 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Double
   Caption         =   "Телефонный справочник Версия 2.0"
   ClientHeight    =   1980
   ClientLeft      =   1815
   ClientTop       =   3645
   ClientWidth     =   8325
   ClipControls    =   0   'False
   Height          =   2670
   Icon            =   TS.FRX:0000
   Left            =   1755
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1980
   ScaleWidth      =   8325
   Top             =   3015
   Width           =   8445
   Begin SSPanel Base_File 
      Alignment       =   1  'Left Justify - MIDDLE
      BackColor       =   &H00C0C0C0&
      BevelOuter      =   1  'Inset
      Caption         =   "ts.bas"
      FloodColor      =   &H00FFFFC0&
      Font3D          =   0  'None
      Height          =   255
      Left            =   120
      TabIndex        =   20
      Top             =   0
      Width           =   8085
   End
   Begin CommandButton Command3 
      Caption         =   "Сохранить"
      Height          =   375
      Left            =   5040
      TabIndex        =   19
      Top             =   1080
      Width           =   1095
   End
   Begin SSPanel Leng 
      BackColor       =   &H00C0C0C0&
      BevelOuter      =   1  'Inset
      Caption         =   "0"
      Font3D          =   0  'None
      Height          =   255
      Left            =   3840
      TabIndex        =   18
      Top             =   1080
      Width           =   1095
   End
   Begin SSPanel Curr 
      BackColor       =   &H00C0C0C0&
      BevelOuter      =   1  'Inset
      Caption         =   "0"
      Font3D          =   0  'None
      Height          =   255
      Left            =   2880
      TabIndex        =   17
      Top             =   1080
      Width           =   855
   End
   Begin SSPanel All 
      BackColor       =   &H00C0C0C0&
      BevelOuter      =   1  'Inset
      Caption         =   "0"
      Font3D          =   0  'None
      Height          =   255
      Left            =   960
      TabIndex        =   15
      Top             =   1080
      Width           =   855
   End
   Begin CommandButton Command2 
      Caption         =   ">>"
      Height          =   375
      Left            =   4560
      TabIndex        =   13
      Top             =   1440
      Width           =   375
   End
   Begin CommandButton Command1 
      Caption         =   "<<"
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   1440
      Width           =   375
   End
   Begin SSCommand Command3D2 
      Caption         =   "Вызов"
      Enabled         =   0   'False
      Font3D          =   3  'Inset w/light shading
      ForeColor       =   &H008080FF&
      Height          =   375
      Left            =   6960
      TabIndex        =   11
      Top             =   1440
      Width           =   735
   End
   Begin SSCommand Command3D1 
      Caption         =   "Найти"
      Font3D          =   0  'None
      Height          =   375
      Left            =   6960
      TabIndex        =   10
      Top             =   1080
      Width           =   735
   End
   Begin SSCommand Exit 
      Caption         =   "Exit"
      Font3D          =   0  'None
      Height          =   735
      Left            =   7680
      TabIndex        =   9
      Top             =   1080
      Width           =   495
   End
   Begin TextBox Text1 
      Height          =   285
      Left            =   960
      MaxLength       =   11024
      TabIndex        =   8
      Top             =   720
      Width           =   7215
   End
   Begin TextBox Info 
      Height          =   285
      Left            =   3960
      MaxLength       =   30
      TabIndex        =   7
      Top             =   360
      Width           =   4215
   End
   Begin TextBox NameX 
      Height          =   285
      Left            =   960
      MaxLength       =   20
      TabIndex        =   4
      Top             =   360
      Width           =   1935
   End
   Begin CommandButton New 
      Caption         =   "Новая"
      Height          =   375
      Left            =   5040
      TabIndex        =   2
      Top             =   1440
      Width           =   1935
   End
   Begin CommandButton Delete 
      Caption         =   "Убрать"
      Height          =   375
      Left            =   6120
      TabIndex        =   1
      Top             =   1080
      Width           =   855
   End
   Begin HScrollBar HScroll1 
      Height          =   375
      Left            =   480
      Max             =   1
      Min             =   1
      TabIndex        =   0
      Top             =   1440
      Value           =   1
      Width           =   4095
   End
   Begin Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Текущая"
      Height          =   195
      Left            =   2040
      TabIndex        =   16
      Top             =   1080
      Width           =   795
   End
   Begin Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Записей"
      Height          =   195
      Left            =   120
      TabIndex        =   14
      Top             =   1080
      Width           =   765
   End
   Begin Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Данные"
      Height          =   195
      Left            =   120
      TabIndex        =   6
      Top             =   720
      Width           =   720
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Телефон"
      Height          =   195
      Left            =   3120
      TabIndex        =   5
      Top             =   360
      Width           =   795
   End
   Begin Label lab 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Имя"
      Height          =   195
      Left            =   120
      TabIndex        =   3
      Top             =   360
      Width           =   390
   End
   Begin Menu mnuFile 
      Caption         =   "Файл"
      Begin Menu mnuExit 
         Caption         =   "Выход"
         Shortcut        =   ^X
      End
   End
   Begin Menu mnuHelp 
      Caption         =   "Справка"
      Begin Menu mnuAbout 
         Caption         =   "О программе"
         Shortcut        =   ^A
      End
   End
End

Sub Command1_Click ()
HScroll1.Value = HScroll1.Min
End Sub

Sub Command2_Click ()
HScroll1.Value = HScroll1.Max
End Sub

Sub Command3_Click ()
SaveRecord (HScroll1.Value)
End Sub

Sub Command3D1_Click ()
form3.Show
End Sub

Sub Delete_Click ()
form2.Show
DelRec (HScroll1.Value)
Refr
If Val(form1.All.Caption) = 0 Then form1.HScroll1.Max = 1:  Else form1.HScroll1.Max = Val(form1.All.Caption)
form2.Hide
End Sub

Sub Form_Load ()
form1.Base_File.Caption = app.Path + "\" + Base_File.Caption
Refr
InitRecord (1)
If Val(form1.All.Caption) = 0 Then form1.HScroll1.Max = 1:  Else form1.HScroll1.Max = Val(form1.All.Caption)

End Sub

Sub Form_Unload (Cancel As Integer)
End
End Sub

Sub HScroll1_Change ()
InitRecord (HScroll1.Value)
End Sub

Sub HScroll1_KeyDown (KeyCode As Integer, Shift As Integer)
Beep
End Sub

Sub mnuAbout_Click ()
form4.Show
End Sub

Sub mnuExit_Click ()
End
End Sub

Sub New_Click ()
HScroll1.Max = HScroll1.Max + 1
HScroll1.Value = HScroll1.Max
End Sub

