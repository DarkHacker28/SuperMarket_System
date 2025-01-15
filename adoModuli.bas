Attribute VB_Name = "adoModuli"
Option Explicit
Public strSearch As String
Public cn As ADODB.Connection
Public cnUser As ADODB.Connection
Public MSDatabase
Public UserDatabase
Global Const DEFSOURCE = "PROVIDER=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source="
Public db As ADODB.Connection
Public DBConnect As Boolean
Public UserConnected As Boolean
Dim strSQl As String
'=========
Public rsKategoria As ADODB.Recordset
Public rsPerdoruesit As ADODB.Recordset
Public rsvat As ADODB.Recordset
Public rsEmp As ADODB.Recordset
Public rsitem As ADODB.Recordset
Public rsSupp As ADODB.Recordset
Public rsLog As ADODB.Recordset
Public rsFatura As ADODB.Recordset
Public Sub OpenDB()
Set db = New ADODB.Connection
db.Open DEFSOURCE & App.Path & "\Data\dbase.db;" & ";Persist Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Sub
Public Function DataConnect() As Boolean
On Error GoTo OpenErr
Set cn = New ADODB.Connection
cn.CursorLocation = adUseClient
MSDatabase = App.Path & ("\Data\dbase.db")
cn.CursorLocation = adUseClient
cn.Provider = "Microsoft.Jet.OLEDB.4.0; Jet OLEDB:Database Password=cc03bn01"
    cn.Open MSDatabase ', Admin
Exit Function
OpenErr:
MsgBox "Gabim hapje " & MSDatabase & vbNewLine & err.Description, vbCritical, "Gabim!"
DBConnect = False
End Function
Public Sub OpenDB1()
Set db = New ADODB.Connection
db.Open DEFSOURCE & App.Path & "\Data\dbase.db;" & ";Persist Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Sub
Public Sub OpenDB2()
Set db = New ADODB.Connection
db.Open DEFSOURCE & App.Path & "\Data\dbase.db;" & ";Persist Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Sub
Public Sub OpenDB3()
Set db = New ADODB.Connection
db.Open DEFSOURCE & App.Path & "\Data\dbase.db;" & ";Persist Security Info=False;Jet OLEDB:Database Password=cc03bn01"
End Sub
Public Function DataConnect1() As Boolean
On Error GoTo OpenErr
Set cn = New ADODB.Connection
cn.CursorLocation = adUseClient
MSDatabase = App.Path & ("\Data\dbase.db")
cn.CursorLocation = adUseClient
cn.Provider = "Microsoft.Jet.OLEDB.4.0; Jet OLEDB:Database Password=cc03bn01"
    cn.Open MSDatabase ', Admin
Exit Function
OpenErr:
MsgBox "Gabim hapje " & MSDatabase & vbNewLine & err.Description, vbCritical, "Gabim!"
DBConnect = False
End Function
Public Function DataConnect2() As Boolean
Dim Arq56 As String
On Error GoTo OpenErr
Set cn = New ADODB.Connection
cn.CursorLocation = adUseClient
MSDatabase = App.Path & ("\Data\dbase.db")
cn.CursorLocation = adUseClient
cn.Provider = "Microsoft.Jet.OLEDB.4.0; Jet OLEDB:Database Password=cc03bn01"
    cn.Open MSDatabase ', Admin
Exit Function
OpenErr:
MsgBox "Gabim hapje " & MSDatabase & vbNewLine & err.Description, vbCritical, "Gabim!"
DBConnect = False
End Function
Public Function DataConnect3() As Boolean
On Error GoTo OpenErr
Set cn = New ADODB.Connection
cn.CursorLocation = adUseClient
MSDatabase = App.Path & ("\Data\dbase.db")
cn.CursorLocation = adUseClient
cn.Provider = "Microsoft.Jet.OLEDB.4.0; Jet OLEDB:Database Password=cc03bn01"
    cn.Open MSDatabase ', Admin
Exit Function
OpenErr:
MsgBox "Gabim hapje " & MSDatabase & vbNewLine & err.Description, vbCritical, "Gabim!"
DBConnect = False
End Function
Public Sub OpenData()
Set rsPerdoruesit = New ADODB.Recordset
rsPerdoruesit.Open "Select * FROM tblperdoruesit", cn, adOpenStatic, adLockOptimistic
End Sub
Public Sub OpenData1()
Set rsKategoria = New ADODB.Recordset
rsKategoria.Open "Select * FROM tblKategoria", cn, adOpenStatic, adLockOptimistic
'============
End Sub
Public Sub OpenData2()
Set rsitem = New ADODB.Recordset
rsitem.Open "Select * FROM tblartikujt", cn, adOpenStatic, adLockOptimistic
'============
End Sub
Public Sub OpenData3()
Set rsSupp = New ADODB.Recordset
rsSupp.Open "Select * FROM tblFurnizuesit", cn, adOpenStatic, adLockOptimistic
'============
Set rsLog = New ADODB.Recordset
rsLog.Open "Select * FROM historia", cn, adOpenStatic, adLockOptimistic
End Sub
