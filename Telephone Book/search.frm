VERSION 2.00
Begin Form Form3 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Double
   Caption         =   "Поиск телефона"
   ClientHeight    =   5820
   ClientLeft      =   2280
   ClientTop       =   1575
   ClientWidth     =   5220
   Height          =   6225
   Left            =   2220
   LinkTopic       =   "Form3"
   ScaleHeight     =   5820
   ScaleWidth      =   5220
   Top             =   1230
   Width           =   5340
   Begin SSCheck Auto1 
      Caption         =   "Автопоиск"
      Font3D          =   0  'None
      Height          =   255
      Left            =   2640
      TabIndex        =   8
      Top             =   120
      Width           =   1335
   End
   Begin CommandButton OK 
      Caption         =   "OK"
      Height          =   375
      Left            =   4080
      TabIndex        =   7
      Top             =   480
      Width           =   975
   End
   Begin SSPanel Panel3D2 
      BackColor       =   &H00C0C0C0&
      BevelOuter      =   1  'Inset
      Font3D          =   0  'None
      Height          =   4215
      Left            =   4080
      TabIndex        =   6
      Top             =   1440
      Width           =   975
      Begin Gauge Gauge1 
         BackColor       =   &H00C0C0C0&
         Height          =   3975
         InnerBottom     =   5
         InnerLeft       =   1
         InnerRight      =   5
         InnerTop        =   5
         Left            =   120
         Max             =   100
         NeedleWidth     =   1
         Style           =   1  'Vertical Bar
         TabIndex        =   2
         Top             =   120
         Value           =   1
         Width           =   735
      End
   End
   Begin SSPanel Pan 
      BackColor       =   &H00C0C0C0&
      BevelOuter      =   1  'Inset
      Caption         =   "0%"
      Font3D          =   0  'None
      Height          =   375
      Left            =   4080
      TabIndex        =   5
      Top             =   960
      Width           =   975
   End
   Begin ListBox List1 
      BackColor       =   &H00404040&
      ForeColor       =   &H00E0E0E0&
      Height          =   4710
      Left            =   120
      TabIndex        =   4
      Top             =   960
      Width           =   3855
   End
   Begin CommandButton Fin 
      Caption         =   "Найти"
      Height          =   375
      Left            =   4080
      TabIndex        =   3
      Top             =   120
      Width           =   975
   End
   Begin TextBox Text1 
      Height          =   285
      Left            =   1080
      TabIndex        =   0
      Top             =   480
      Width           =   2895
   End
   Begin Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Телефон :"
      Height          =   195
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   915
   End
End

Sub Fin_Click ()
For Tels = 0 To list1.ListCount - 1
Pan.Caption = Str$(Fix(100 / (list1.ListCount - 1) * Tels)) + "%"
Gauge1.Value = Val(Pan.Caption)
If InStr(1, list1.List(Tels), text1.Text) Then
  list1.ListIndex = Tels
  Exit For
End If
Next


End Sub

Sub Form_Load ()
ListUpd
End Sub

Sub List1_DblClick ()
Call OK_Click
End Sub

Sub OK_Click ()
If list1.ListIndex > -1 Then form1.HScroll1.Value = list1.ListIndex + 1
Unload form3
End Sub

Sub Text1_Change ()
If Auto1.Value Then Call Fin_Click
End Sub

