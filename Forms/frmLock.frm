VERSION 5.00
Begin VB.Form frmLock 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   5265
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7275
   LinkTopic       =   "Form2"
   ScaleHeight     =   5265
   ScaleWidth      =   7275
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   5270
      Left            =   0
      Picture         =   "frmLock.frx":0000
      ScaleHeight     =   5265
      ScaleWidth      =   7275
      TabIndex        =   1
      Top             =   0
      Width           =   7280
      Begin VB.Timer Timer1 
         Interval        =   256
         Left            =   3600
         Top             =   2760
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   405
         IMEMode         =   3  'DISABLE
         Left            =   1815
         PasswordChar    =   "•"
         TabIndex        =   0
         Top             =   4455
         Width           =   3705
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "12:45:20"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   375
         Left            =   1800
         TabIndex        =   4
         Top             =   1920
         Width           =   3615
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Type password:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   1800
         TabIndex        =   2
         Top             =   3960
         Width           =   3735
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Type password:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F7337&
         Height          =   375
         Left            =   1815
         TabIndex        =   3
         Top             =   3975
         Width           =   3735
      End
   End
End
Attribute VB_Name = "frmLock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Picture1.Top = (Screen.height - Me.height) / 2
Picture1.Left = (Screen.Width - Me.Width) / 2
End Sub

Private Sub Image1_Click()

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbuser
ac.Open strConek
With ar
criteria = "Select *From tblPerdoruesit Where perdoruesi='" & Text1 & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount >= 1 Then
If !fjalekalimi = Text1.Text Then
Unload Me
End If
End If
End With
End If
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Format(Now, "HH:mm:ss")
End Sub
