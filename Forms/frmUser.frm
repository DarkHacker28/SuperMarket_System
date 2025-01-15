VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmUser 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Users"
   ClientHeight    =   6975
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6630
   Icon            =   "frmUser.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6975
   ScaleWidth      =   6630
   StartUpPosition =   2  'CenterScreen
   Begin ComctlLib.ListView ListView1 
      Height          =   2895
      Left            =   120
      TabIndex        =   21
      Top             =   2760
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   5106
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ForeColor       =   9856839
      BackColor       =   -2147483643
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   4
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "ID"
         Object.Width           =   1411
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Perdoruesi"
         Object.Width           =   2117
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Pozicioni"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emri dhe Mbiemri"
         Object.Width           =   2540
      EndProperty
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   20
      Top             =   720
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   53
   End
   Begin VB.TextBox TXTID 
      Height          =   375
      Left            =   7080
      TabIndex        =   19
      Text            =   "Text1"
      Top             =   6960
      Width           =   855
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   18
      Top             =   5760
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   53
   End
   Begin VB.CommandButton cmdShto 
      Caption         =   "Add"
      Height          =   440
      Left            =   120
      TabIndex        =   15
      Top             =   5880
      Width           =   2055
   End
   Begin VB.CommandButton cmdRuaj 
      Caption         =   "Save"
      Height          =   440
      Left            =   2280
      TabIndex        =   14
      Top             =   5880
      Width           =   2055
   End
   Begin VB.CommandButton cmdNdrysho 
      Caption         =   "Edit"
      Height          =   440
      Left            =   4440
      TabIndex        =   13
      Top             =   5880
      Width           =   2055
   End
   Begin VB.CommandButton cmdFshije 
      Caption         =   "Delete"
      Height          =   440
      Left            =   120
      TabIndex        =   12
      Top             =   6390
      Width           =   2055
   End
   Begin VB.CommandButton cmdAnuloje 
      Caption         =   "Cancel"
      Height          =   440
      Left            =   2280
      TabIndex        =   11
      Top             =   6390
      Width           =   2055
   End
   Begin VB.CommandButton cmdDalja 
      Caption         =   "Exit"
      Height          =   440
      Left            =   4440
      TabIndex        =   10
      Top             =   6390
      Width           =   2055
   End
   Begin VB.ComboBox txtniveli 
      Height          =   315
      ItemData        =   "frmUser.frx":08CA
      Left            =   1800
      List            =   "frmUser.frx":08D4
      TabIndex        =   3
      Text            =   "ADMINISTRATOR"
      Top             =   2160
      Width           =   2895
   End
   Begin VB.TextBox txtuser 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1800
      MaxLength       =   25
      TabIndex        =   1
      Top             =   1440
      Width           =   2895
   End
   Begin VB.TextBox txtpass 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   8.25
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      IMEMode         =   3  'DISABLE
      Left            =   1800
      MaxLength       =   16
      PasswordChar    =   "l"
      TabIndex        =   2
      Top             =   1800
      Width           =   2895
   End
   Begin VB.TextBox txtemri 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1800
      MaxLength       =   25
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   1080
      Width           =   2895
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   4560
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   1
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmUser.frx":08F0
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label lbluser 
      Caption         =   "Label1"
      Height          =   255
      Left            =   4800
      TabIndex        =   17
      Top             =   1200
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label lbljob 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4800
      TabIndex        =   16
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Level:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   120
      TabIndex        =   9
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "USer management"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   840
      TabIndex        =   8
      Top             =   240
      Width           =   2535
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "frmUser.frx":0C42
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "(max. 16 characters)"
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
      Index           =   8
      Left            =   4800
      TabIndex        =   7
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Username:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   6
      Left            =   120
      TabIndex        =   6
      Top             =   1440
      Width           =   1335
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Password:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   4
      Left            =   120
      TabIndex        =   5
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Name && Surname:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00808080&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   735
      Left            =   0
      Top             =   0
      Width           =   11775
   End
End
Attribute VB_Name = "frmUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim blnEdit As Boolean
Dim lngIndex As Long
Public Sub blnStatus(blnEnable As Boolean)
ListView1.Enabled = blnEnable
cmdShto.Enabled = blnEnable
cmdNdrysho.Enabled = blnEnable
cmdFshije.Enabled = blnEnable
End Sub
Public Sub PastroTekstin()
txtuser.Text = ""
txtpass.Text = ""
txtemri.Text = ""
End Sub
Public Sub HapPerdoruesin()
Dim itm As ListItem
ListView1.ListItems.Clear
If Not rsPerdoruesit.RecordCount < 1 Then rsPerdoruesit.MoveFirst
Do Until rsPerdoruesit.EOF
If Not IsNull(rsPerdoruesit!id) Then Set itm = ListView1.ListItems.Add(, , rsPerdoruesit!id, , 1)
If Not IsNull(rsPerdoruesit!perdoruesi) Then itm.SubItems(1) = rsPerdoruesit!perdoruesi
If Not IsNull(rsPerdoruesit!pozicioni) Then itm.SubItems(2) = rsPerdoruesit!pozicioni
If Not IsNull(rsPerdoruesit!emri) Then itm.SubItems(3) = rsPerdoruesit!emri
lbluser.Caption = rsPerdoruesit!perdoruesi
rsPerdoruesit.MoveNext
DoEvents
Loop
End Sub
Public Function GjejPerdoruesin() As Boolean
Dim strTemp
strTemp = "'" & strSearch & "'"
On Error Resume Next
rsPerdoruesit.MoveFirst
On Error GoTo ErrorNotOnFile:
rsPerdoruesit.Find "id = " & strTemp, 0, adSearchForward
If rsPerdoruesit!id = strSearch Then GjejPerdoruesin = True 'found
On Error GoTo 0
err.Clear
Exit Function
ErrorNotOnFile:
GjejPerdoruesin = False
DoEvents
On Error GoTo 0
err.Clear
End Function

Private Sub cmdnew_Click()

End Sub

Private Sub cmdAnuloje_Click()
PastroTekstin
blnStatus True
If Not rsPerdoruesit.EOF Then rsPerdoruesit.MoveNext
HapPerdoruesin
End Sub

Private Sub cmdDalja_Click()
Unload Me
End Sub

Private Sub cmdFshije_Click()
Dim blnFound As Boolean
Dim intRes As Integer
If txtuser.Text = "" Then Exit Sub
intRes = MsgBox("A jeni i sigurtë se doni ta fshini shenimin?", vbQuestion + vbYesNo, "Konfirmoni fshirjen")
If intRes = vbNo Then Exit Sub
strSearch = CStr(txtid.Text)
blnFound = GjejPerdoruesin()
If blnFound = True Then
rsPerdoruesit.Delete
rsPerdoruesit.Requery
MsgBox "Shenimi u fshi me sukses.", vbInformation, "Fshirja"
HapPerdoruesin
PastroTekstin
End If
End Sub

Private Sub cmdNdrysho_Click()
If txtemri.Text = "" Then Exit Sub
blnStatus False
txtemri.SetFocus
blnEdit = True
End Sub

Private Sub cmdRuaj_Click()
Dim blnFound As Boolean
If blnEdit = True Then
strSearch = CStr(txtid.Text)
blnFound = GjejPerdoruesin()
rsPerdoruesit.Update "emri", txtemri.Text
rsPerdoruesit.Update "perdoruesi", txtuser.Text
rsPerdoruesit.Update "fjalekalimi", txtpass.Text
rsPerdoruesit.Update "pozicioni", txtniveli.Text
rsPerdoruesit.Update "niveli", lbljob.Caption
rsPerdoruesit.Requery
blnStatus True
blnEdit = False
Else
rsPerdoruesit.AddNew
rsPerdoruesit!emri = txtemri.Text
rsPerdoruesit!perdoruesi = txtuser.Text
rsPerdoruesit!fjalekalimi = txtpass.Text
rsPerdoruesit!pozicioni = txtniveli.Text
rsPerdoruesit!niveli = lbljob.Caption
rsPerdoruesit.Update
rsPerdoruesit.Requery
blnStatus True
End If
PastroTekstin
HapPerdoruesin
End Sub

Private Sub cmdShto_Click()
blnStatus False
PastroTekstin
txtemri.SetFocus
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(ListView1)
DataConnect
OpenData
OpenDB
'==========
HapPerdoruesin
End Sub

Private Sub ListView1_Click()
PastroTekstin
Dim blnFound As Boolean
strSearch = CStr(ListView1.SelectedItem.Text)
blnFound = GjejPerdoruesin()
If blnFound = True Then
txtid.Text = ListView1.SelectedItem.Text
If Not IsNull(rsPerdoruesit!perdoruesi) Then txtuser.Text = rsPerdoruesit!perdoruesi
If Not IsNull(rsPerdoruesit!emri) Then txtemri.Text = rsPerdoruesit!emri
If Not IsNull(rsPerdoruesit!fjalekalimi) Then txtpass.Text = rsPerdoruesit!fjalekalimi
If Not IsNull(rsPerdoruesit!pozicioni) Then txtniveli.Text = rsPerdoruesit!pozicioni
If Not IsNull(rsPerdoruesit!niveli) Then lbljob.Caption = rsPerdoruesit!niveli
End If
End Sub

Private Sub txtniveli_Click()
If txtniveli.Text = "ADMINISTRATOR" Then
lbljob.Caption = "1"
End If
If txtniveli.Text = "CASHIER" Then
lbljob.Caption = "2"
End If
End Sub

Private Sub txtuser_LostFocus()
Dim blnFound As Boolean
strSearch = CStr(txtuser.Text)
blnFound = GjejPerdoruesin()
If blnFound = True And Not lbluser.Caption = txtuser.Text Then
HapPerdoruesin
blnStatus True
MsgBox "Perdoruesi ekziston!", vbInformation, "Kujdes!"
txtuser.Text = ""
txtuser.SetFocus
End If
End Sub
