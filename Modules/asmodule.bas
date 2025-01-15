Attribute VB_Name = "Module1"
Public Declare Function ReleaseCapture Lib "user32" () As Long
Public Declare Function SetCapture Lib "user32" (ByVal hwnd As Long) As Long

Global as_username As String
Global as_password As String
Global cbranch_set As String
Global nbranch_set As Integer

Global xsku As String
Global xlbl As String
Global xqty As String
Global xrack As String
Global xuser As String
Global xdescr As String
Global xsort As String
Global xupc As String
Global PK, Tcount As Long
Public Function SQLDate(ConvertDate As Date) As String
SQLDate = Format(ConvertDate, "dd/mm/yyyy")
End Function
Public Function clearreport()
    Open App.Path & "\raporti.txt" For Output As #1
        Print #1, " "
    Close #1
End Function
Public Sub LoadForm(ByRef srcForm As Form)
    Load srcForm
    srcForm.Show vbModal
    'srcForm.WindowState = vbMaximized
    'srcForm.SetFocus
End Sub
'Function that return the count of the rows in the table
Public Function getRecordCount(ByVal srcTable As String, Optional srcCondition As String, Optional isFormatted As Boolean) As String
On Error Resume Next
    If srcCondition <> "" Then srcCondition = " " & srcCondition
    'Dim ar As New Recordset
        
    Call dbconek
    ar.Open "SELECT *FROM " & srcTable & srcCondition, strConek, adOpenStatic, adLockReadOnly
'    rs.MoveFirst
    Do While Not ar.EOF
        indexcount = indexcount + 1
        ar.MoveNext
    Loop
    
    If isFormatted = True Then
        getRecordCount = Format(indexcount, "#,##0.00")
    Else
        getRecordCount = indexcount
    End If
    Set ar = Nothing
End Function
Public Function getSumOfFields(ByVal sTable As String, ByVal sField As String, ByRef sCN As ADODB.Connection, Optional inclField As String, Optional sCondition As String) As Double
    On Error GoTo err
        
    Call dbconek
    
    ar.CursorLocation = adUseClient
    If sCondition <> "" Then sCondition = " GROUP BY " & inclField & " HAVING(" & sCondition & ")"
    If inclField <> "" Then inclField = "," & inclField
    ar.Open "SELECT Sum(" & sTable & "." & sField & ") AS fTotal" & inclField & " FROM " & sTable & sCondition, sCN, adOpenStatic, adLockOptimistic
    If ar.RecordCount > 0 Then
        ar.MoveFirst
        Do While Not ar.EOF
            getSumOfFields = getSumOfFields + ar.Fields("fTotal")
            ar.MoveNext
        Loop
    Else
        getSumOfFields = 0
    End If
    
    Set ar = Nothing
    Exit Function
err:
        'Error when incounter a null value
        If err.Number = 94 Then getSumOfFields = 0: Resume Next
End Function

Public Function toMoney(ByVal srcCurr As String) As String
   toMoney = Format$(srcCurr, "#,##0.00")
End Function

Public Function evaluatedate(strdate As String) As Boolean
Dim d, m As Integer
    d = Mid(strdate, 4, 2)
    m = Mid(strdate, 1, 2)
    If d >= 32 Or m >= 13 Then
        evaluatedate = True
    Else
        evaluatedate = False
    End If
End Function
