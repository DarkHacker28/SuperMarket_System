VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FRM_BACK_UP 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Back up Database ..."
   ClientHeight    =   6015
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7590
   Icon            =   "FRM_BACK_UP.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6015
   ScaleWidth      =   7590
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "&Exit"
      Height          =   495
      Left            =   5040
      TabIndex        =   8
      Top             =   5160
      Width           =   2055
   End
   Begin VB.CommandButton but_gen_rpt 
      Caption         =   "&Create Back Up"
      Height          =   495
      Left            =   2760
      TabIndex        =   6
      Top             =   5160
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Browse ..."
      Height          =   315
      Left            =   6120
      TabIndex        =   3
      Top             =   3600
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   315
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   2640
      Width           =   4335
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   3240
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   450
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Back Up Data Base"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   0
      Left            =   4200
      TabIndex        =   7
      Top             =   480
      Width           =   4095
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2880
      TabIndex        =   5
      Top             =   4680
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Select Path Where to Store Backup"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   2760
      TabIndex        =   1
      Top             =   2280
      Width           =   3615
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Select Path and Click on Create Backup."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   2760
      TabIndex        =   0
      Top             =   1680
      Width           =   4575
   End
   Begin VB.Image Image1 
      Height          =   1050
      Left            =   0
      Picture         =   "FRM_BACK_UP.frx":0E42
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7620
   End
End
Attribute VB_Name = "FRM_BACK_UP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private WithEvents Huffman As clsHuffman
Attribute Huffman.VB_VarHelpID = -1

Private Sub but_gen_rpt_Click()
If Len(Text2.Text) = 0 Then
    MsgBox "Select Backup File Path and then Click Create Backup Button...", vbInformation, "Select Backup Path ..."
    Exit Sub
End If

  Label3.Visible = True
  
  Dim dest As String
  dest = Text2.Text & "\dbase_Backup.bk"
  Dim OldTimer As Single
  ProgressBar1.Visible = True
  OldTimer = Timer
  
  Call Huffman.EncodeFile(App.Path & "\dbase.mdb", dest)
  ProgressBar1.Value = 0
  
  Unload Me
  Exit Sub
End Sub

Private Sub Command1_Click()
    With cd1
        .DialogTitle = "Rezervimi i Shenimeve"
        .Flags = FileOpenConstants.cdlOFNFileMustExist
        .Filename = Text2.Text
        .ShowSave
        If Trim$(.Filename) = "" Then Exit Sub
    End With
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 27 Then
    If ProgressBar1.Value = 0 Or ProgressBar1.Value Then
        Unload Me
    End If
End If
End Sub

Private Sub Form_Load()
KeyPreview = True
Me.Left = 0
Me.Top = 0
Set Huffman = New clsHuffman
Label3.Visible = False
ProgressBar1.Visible = False

End Sub

Private Sub Huffman_Progress(Procent As Integer)
  Label3.Caption = "Compressing Database"
 ProgressBar1.Value = Procent
  If ProgressBar1.Value = 100 Then
    Label3.Caption = "Saving Compressed File ..."
    End If
  DoEvents

End Sub

