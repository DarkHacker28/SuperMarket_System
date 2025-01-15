Attribute VB_Name = "Module5"
Public Function copy(source As String, dest As String, progress As ProgressBar)
On Error Resume Next
Dim iByte As Byte
Dim iBytestr As String
Dim iStr As String
Open source For Binary As #1 'open and get file info
iStr = String(LOF(1), Chr(0)) 'make the string to the length of the file
Get #1, , iStr 'get file information and put it into iStr variable
progress.Max = Len(iStr)


Open dest For Binary As #2
For I = 1 To Len(iStr)
progress.Value = I

iBytestr = Mid(iStr, I, 1) 'now we dissect the iStr variable 1 byte at a
iByte = Asc(iBytestr) 'convert each byte of the string to a byte

Put #2, I, iByte
DoEvents 'allow computer to perform other tasks in case of very long files
Next
Close #1
Close #2

End Function
Public Function moveto(source As String, dest As String, progress As ProgressBar)
On Error Resume Next
Dim iByte As Byte
Dim iBytestr As String
Dim iStr As String
Open source For Binary As #1 'open and get file info
iStr = String(LOF(1), Chr(0)) 'make the string to the length of the file
Get #1, , iStr 'get file information and put it into iStr variable
progress.Max = Len(iStr)

If Dir(dest) <> "" Then
If MsgBox("Fisierul Exista Deja , Vrei sa ii dai Replace ? ", vbYesNo, "Exista !") = vbYes Then
Open dest For Binary As #2
For I = 1 To Len(iStr)
progress.Value = I

iBytestr = Mid(iStr, I, 1) 'now we dissect the iStr variable 1 byte at a
iByte = Asc(iBytestr) 'convert each byte of the string to a byte

Put #2, I, iByte
DoEvents 'allow computer to perform other tasks in case of very long files
Next
Close #1
Kill source
Close #2
Else
Close #1
End If
Else
Open dest For Binary As #2
For I = 1 To Len(iStr)
progress.Value = I

iBytestr = Mid(iStr, I, 1) 'now we dissect the iStr variable 1 byte at a
iByte = Asc(iBytestr) 'convert each byte of the string to a byte

Put #2, I, iByte
DoEvents 'allow computer to perform other tasks in case of very long files
Next
Close #1
Kill source
Close #2
End If

End Function

