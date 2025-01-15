VERSION 5.00
Object = "{608009F3-E1FB-11D2-9BA1-0040D0002C80}#1.0#0"; "nslock15vb6.ocx"
Begin VB.Form frmRegister 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Regjistrimi"
   ClientHeight    =   2940
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5175
   Icon            =   "frmRegister.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2940
   ScaleWidth      =   5175
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "Vazhdo Demo"
      Height          =   495
      Left            =   2400
      TabIndex        =   9
      Top             =   2280
      Width           =   1335
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   8
      Top             =   840
      Width           =   6255
      _ExtentX        =   11033
      _ExtentY        =   53
   End
   Begin nslock15vb6.ActiveLock ActiveLock1 
      Left            =   7440
      Top             =   6600
      _ExtentX        =   847
      _ExtentY        =   820
      Password        =   "cc03bn01"
      SoftwareName    =   "smartmanagement"
      LiberationKeyLength=   16
      SoftwareCodeLength=   16
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   6
      Top             =   2160
      Width           =   4935
      _ExtentX        =   8705
      _ExtentY        =   53
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   360
      Left            =   1920
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   1560
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H8000000F&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   360
      Left            =   1920
      Locked          =   -1  'True
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   1080
      Width           =   3135
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Regjistroje"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Anuloje"
      Height          =   495
      Left            =   3840
      TabIndex        =   0
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Regjistrimi i Programit"
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
      Left            =   1080
      TabIndex        =   7
      Top             =   240
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmRegister.frx":030A
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Numri aktivizues:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Serial numri:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   238
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   855
      Left            =   0
      Top             =   0
      Width           =   7575
   End
End
Attribute VB_Name = "frmRegister"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End
End Sub

Private Sub Command2_Click()
ActiveLock1.LiberationKey = Text2
If Not (ActiveLock1.RegisteredUser) Then
MsgBox "Numri aktivizues i gabuar!", vbInformation, "Kujdes!"
Else
MsgBox "Programi u regjistrua. Riniseni programin qe te mirren efektet!", vbInformation, "Regjistrimi"
Unload Me
End
End If
End Sub

Private Sub Command3_Click()
If frmRegister.ActiveLock1.RegisteredUser Then
frmxSplash.Show
Else
If frmRegister.ActiveLock1.LastRunDate > Now Then
MsgBox "Data e kompjuterit tuaj është ndërruar.", vbCritical + vbOKOnly
End If
If frmRegister.ActiveLock1.UsedDays < 5 Then
frmMAIN.Caption = frmMAIN.Caption & " [ DEMO VERZION ]"
Else
MsgBox "Afati i perdorimit ka kaluar", vbInformation + vbOKOnly
End If
Unload Me
frmxLogIn.Show 1
End If
End Sub

Private Sub Form_Load()
Text1 = ActiveLock1.SoftwareCode
Text2 = ""
Me.Caption = "Programi eshte perdorur: " _
& ActiveLock1.UsedDays & " ditë."
End Sub


