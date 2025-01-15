Attribute VB_Name = "Module2"
Public Arq0 As String
Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nsize As Long, ByVal lpFileName As String) As Long
Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Public Declare Function Beep Lib "kernel32" _
  (ByVal dwFreq As Long, ByVal dwDuration As Long) As Long
Public Function ReadINI(strFile As String, strKey As String, strName As String) As String
Dim intLen As Integer
Dim strText As String
'strText = Space(255)
strText = "                                                                                                    "
intLen = GetPrivateProfileString(strKey, strName, "", strText, Len(strText), strFile)
If intLen > -1 Then
    strText = Left(strText, intLen)
Else
MsgBox "INI skedari nuk u gjet. Kontrolloni përsëri"
End
End If
ReadINI = strText
End Function
Public Sub WriteINI(strFile As String, strKey As String, strName As String, strText As String)
Dim intLen As Integer
intLen = WritePrivateProfileString(strKey, strName, strText, strFile)
End Sub
Public Sub RunBat()
Shell App.Path & "\print.bat", vbHide
Shell App.Path & "\print2.bat", vbHide
End Sub
Public Sub main()
With frmRegister.ActiveLock1
If .RegisteredUser Then
frmxSplash.Show
Else
If .LastRunDate > Now Then
MsgBox "Data e kompjuterit tuaj është ndërruar.", vbCritical + vbOKOnly
End If
If .UsedDays < 5 Then
frmRegister.Show 1
frmxSplash.Show
Else
MsgBox "Afati i perdorimit ka kaluar", vbInformation + vbOKOnly
frmRegister.Show
End If
End If
End With
End Sub


