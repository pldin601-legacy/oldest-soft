VERSION 2.00
Begin Form Form4 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Double
   Caption         =   "О программе"
   ClientHeight    =   2070
   ClientLeft      =   3075
   ClientTop       =   3615
   ClientWidth     =   3735
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Height          =   2475
   Icon            =   ABOUT.FRX:0000
   Left            =   3015
   LinkTopic       =   "Form4"
   ScaleHeight     =   2070
   ScaleWidth      =   3735
   Top             =   3270
   Width           =   3855
   Begin SSPanel Panel3D3 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Version 3.22"
      Font3D          =   3  'Inset w/light shading
      Height          =   255
      Left            =   840
      TabIndex        =   3
      Top             =   960
      Width           =   2055
   End
   Begin SSPanel Panel3D2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Madest Organizations Product"
      Font3D          =   3  'Inset w/light shading
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   600
      Width           =   3255
   End
   Begin SSPanel Panel3D1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Телефонный справочник"
      Font3D          =   3  'Inset w/light shading
      FontBold        =   -1  'True
      FontItalic      =   0   'False
      FontName        =   "Arial Cyr"
      FontSize        =   12
      FontStrikethru  =   0   'False
      FontUnderline   =   0   'False
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3495
   End
   Begin CommandButton Command1 
      Caption         =   "Понятно!"
      Height          =   495
      Left            =   960
      TabIndex        =   0
      Top             =   1440
      Width           =   1815
   End
End
Sub Command1_Click ()
Unload form4
End Sub

