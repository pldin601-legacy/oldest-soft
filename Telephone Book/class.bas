Type Base_Structure
 UserName As String * 20
 UserTPhn As String * 30
 UserInfo As String * 11024
End Type

Dim Shared Base_Type As Base_Structure

Sub DelRec (Record As Integer)
Open form1.Base_File.Caption For Random As #1 Len = Len(Base_Type)
Open app.Path + "\backup.bas" For Random As #2 Len = Len(Base_Type)

Max = LOF(1) / Len(Base_Type)
For Poix = 1 To Max
form2.Gauge1.Value = Fix(100 / Max * Poix)
Get #1, Poix, Base_Type
 If Poix <> Record Then
  Plat = Plat + 1
  Put #2, Plat, Base_Type
 End If
Next
Close
Kill form1.Base_File.Caption
Name app.Path + "\backup.bas" As form1.Base_File.Caption

End Sub

Sub InitRecord (Record As Integer)
On Local Error GoTo Error_Open

Open form1.Base_File.Caption For Random As #1 Len = Len(Base_Type)

  Get #1, Record, Base_Type
  

  form1.NameX.Text = Trim$(Base_Type.UserName)
  form1.Info.Text = Trim$(Base_Type.UserTPhn)
  form1.Text1.Text = Trim$(Base_Type.UserInfo)
  Close
Refr
Exit Sub


Error_Open:
Beep: MsgBox ("Ошибка загрузки записи!")
On Error GoTo 0
Close
Resume 0
End Sub

Sub ListUpd ()

form3.List1.Clear
Open form1.Base_File.Caption For Random As #1 Len = Len(Base_Type)
  For Recs = 1 To LOF(1) / Len(Base_Type)
    Get #1, Recs, Base_Type
    form3.List1.AddItem Trim$(Base_Type.UserName) + Chr$(9) + Trim$(Base_Type.UserTPhn)
    
    Next
Close


End Sub

Sub Refr ()
Open form1.Base_File.Caption For Random As #1
form1.All.Caption = LOF(1) / Len(Base_Type)
form1.Leng = Format$(LOF(1), "### ### ##0")
form1.Curr.Caption = form1.HScroll1.Value
Close
End Sub

Sub SaveRecord (Record As Integer)
On Local Error GoTo Error_Saving

Open form1.Base_File.Caption For Random As #1 Len = Len(Base_Type)
Base_Type.UserName = form1.NameX.Text
Base_Type.UserTPhn = form1.Info.Text
Base_Type.UserInfo = form1.Text1.Text
Put #1, Record, Base_Type
Close
Refr
Exit Sub

Error_Saving:
Beep: MsgBox ("Ошибка при записи!")
On Error GoTo 0
Close
Resume Next
End Sub

