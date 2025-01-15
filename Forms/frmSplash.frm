VERSION 5.00
Begin VB.Form frmxSplash 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   3765
   ClientLeft      =   225
   ClientTop       =   1380
   ClientWidth     =   6105
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmSplash.frx":74F2
   ScaleHeight     =   3765
   ScaleWidth      =   6105
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   1200
      Left            =   120
      Top             =   120
   End
End
Attribute VB_Name = "frmxSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function InitCommonControls Lib "comctl32.dll" () As Long
Public Sub b1()
Dim Arq As String
Arq = ReadINI(App.Path & "\Backup.ini", "Backup_Dir", "Backup_Dir")
Filename = "" + Arq + "\" + "artdb" + ".db"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\dbase.db", Filename
End Sub
Public Sub b2()
Dim Arq As String
Arq = ReadINI(App.Path & "\Backup.ini", "Backup_Dir", "Backup_Dir")
Filename = "" + Arq + "\" + "perdb" + ".db"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\dbase.db", Filename
End Sub
Public Sub b3()
Dim Arq As String
Arq = ReadINI(App.Path & "\Backup.ini", "Backup_Dir", "Backup_Dir")
Filename = "" + Arq + "\" + "dbase" + ".db"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\dbase.db", Filename
End Sub
Public Sub b4()
Dim Arq As String
Arq = ReadINI(App.Path & "\Backup.ini", "Backup_Dir", "Backup_Dir")
Filename = "" + Arq + "\" + "dbshitja" + ".db"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\dbshitja.db", Filename
End Sub
Public Sub b5()
Dim Arq As String
Arq = ReadINI(App.Path & "\Backup.ini", "Backup_Dir", "Backup_Dir")
Filename = "" + Arq + "\" + "aaa" + ".pos"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\aaa.pos", Filename
End Sub
Private Sub Form_Initialize()
InitCommonControls
End Sub

Private Sub Form_Load()
On Error Resume Next
b1
b2
b3
b4
b5
Arq = ReadINI(App.Path & "\Sasia.ini", "SasiaDB", "SasiaDB")
'=======Restorimi i Artikujve===============================================
On Error Resume Next
Dim Ans
End Sub

Private Sub Timer1_Timer()
Unload Me
frmxLogIn.Show
End Sub
