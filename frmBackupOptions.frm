VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmBackupOptions 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Backup options"
   ClientHeight    =   5580
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5295
   Icon            =   "frmBackupOptions.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5580
   ScaleWidth      =   5295
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Anuloje"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   8
      Top             =   4920
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Kopjo shenimet"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   4920
      Width           =   2175
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   6600
      Top             =   7200
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.DriveListBox Drive1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   1680
      Width           =   5055
   End
   Begin VB.DirListBox Dir1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2565
      Left            =   120
      TabIndex        =   4
      Top             =   2040
      Width           =   5055
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   3
      Top             =   4800
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   2
      Top             =   1080
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   53
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Zgjidheni destinacionin per ti derguar/kopjuer shenimet e programit."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   1320
      Width           =   5055
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Select your backup directory"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      TabIndex        =   1
      Top             =   600
      Width           =   3855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Backup options"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmBackupOptions.frx":058A
      Top             =   120
      Width           =   720
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   1095
      Left            =   0
      Top             =   0
      Width           =   7575
   End
End
Attribute VB_Name = "frmBackupOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub b1()
Filename = "" + Dir1.Path + "\" + "dbase" + ".db"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\dbase.db", Filename
End Sub
Public Sub b2()
Filename = "" + Dir1.Path + "\" + "dbfat" + ".db"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\dbfat.db", Filename
End Sub

Public Sub b3()
Filename = "" + Dir1.Path + "\" + "fat" + ".db"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\fat.db", Filename
End Sub
Public Sub b4()
Filename = "" + Dir1.Path + "\" + "fat" + ".pos"
Set FileSystemObject = CreateObject("Scripting.FileSystemObject")
FileSystemObject.CopyFile App.Path & "\Data\fat.pos", Filename
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
On Error Resume Next
b1
b2
b3
b4
MsgBox "Kopjimi i shenimeve u krye me sukses !", vbInformation
End Sub

Private Sub Drive1_Change()
On Error GoTo err
Dir1.Path = Drive1.Drive
Exit Sub
err:
MsgBox "Paisja e zgjedhur nuk është e gatshme", 16, "Gabim leximi.."
End Sub

Private Sub Form_Load()
On Error Resume Next
Dim Arq As String
Arq = ReadINI(App.Path & "\Backup.ini", "Backup_Dir", "Backup_Dir")
Dir1.Path = Arq
End Sub
