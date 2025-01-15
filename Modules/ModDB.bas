Attribute VB_Name = "ModDB"

Public ac As New ADODB.Connection
Public ar As New ADODB.Recordset
Public CurrentForm As Form
Public strConek, pword, CurrentUser As String
Public rc, ctr, passFlag, liCtr, dbFlag, menuFlag, saveFlag As Integer
Public Sub lexoINI()
Dim Arq11 As String
Dim Arq22 As String
Arq11 = ReadINI(App.Path & "\Shitja.ini", "Shitja1", "Shitja1")
Arq22 = ReadINI(App.Path & "\Shitja.ini", "Shitja2", "Shitja2")
End Sub
Public Function dbconek()
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function dblista()
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function dbfat()
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\fat.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function dbuser()
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function dbshitja()
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbshitja.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function dbshitja2()
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbshitja2;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function dbart()
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function artdb()
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function

Public Function dbclose()
On Error Resume Next
    ac.Close
    Set ac = Nothing
    ar.Close
    Set ar = Nothing
End Function
Public Function offDefine(Key_Ascii As Integer, ByVal ControlName As Object, sFilter As String)
If InStr(sFilter, Chr(Key_Ascii)) = 0 Then
    Key_Ascii = 0
End If
End Function
Public Sub main()
Load frmRegister
Load frmMAIN
With frmRegister.ActiveLock1
If .RegisteredUser Then
frmMAIN.Show
Else
If .LastRunDate > Now Then
MsgBox "Data e kompjuterit tuaj është ndërruar.", vbCritical + vbOKOnly
End If
'caktimi i diteve per pune
If .UsedDays < 5 Then
frmRegister.Show 1
frmMAIN.Show
Else
MsgBox "Afati i perdorimit ka kaluar", vbInformation + vbOKOnly
frmRegister2.Show
End If
End If
End With
End Sub
Public Function dbshitjaf1()
Dim Arq444 As String
Arq444 = ReadINI(App.Path & "\Global.ini", "Global1", "1")
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Arq444 & ";Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
Public Function dbshitjaf2()
Dim Arq555 As String
Arq555 = ReadINI(App.Path & "\Global.ini", "Global2", "2")
    Set ac = New ADODB.Connection
    Set ar = New ADODB.Recordset
    strConek = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Arq555 & ";Persist " & _
"Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Function
