VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmMMSCategory 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Category"
   ClientHeight    =   5370
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5205
   Icon            =   "frmCategory.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5370
   ScaleWidth      =   5205
   StartUpPosition =   2  'CenterScreen
   Begin ComctlLib.ListView ListView1 
      Height          =   2535
      Left            =   120
      TabIndex        =   13
      Top             =   1560
      Width           =   4935
      _ExtentX        =   8705
      _ExtentY        =   4471
      View            =   3
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ForeColor       =   4210752
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
      NumItems        =   2
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Category name"
         Object.Width           =   2540
      EndProperty
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   12
      Top             =   720
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   11
      Top             =   4200
      Width           =   4935
      _ExtentX        =   8705
      _ExtentY        =   53
   End
   Begin VB.TextBox txtid 
      Height          =   375
      Left            =   5880
      TabIndex        =   10
      Text            =   "Text1"
      Top             =   6120
      Width           =   1455
   End
   Begin VB.CommandButton cmdDalja 
      Caption         =   "Exit"
      Height          =   440
      Left            =   3480
      TabIndex        =   8
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton cmdAnuloje 
      Caption         =   "Cancel"
      Height          =   440
      Left            =   1800
      TabIndex        =   7
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton cmdFshije 
      Caption         =   "Delete"
      Height          =   440
      Left            =   120
      TabIndex        =   6
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton cmdNdrysho 
      Caption         =   "Edit"
      Height          =   440
      Left            =   3480
      TabIndex        =   5
      Top             =   4320
      Width           =   1575
   End
   Begin VB.CommandButton cmdRuaj 
      Caption         =   "Save"
      Height          =   440
      Left            =   1800
      TabIndex        =   4
      Top             =   4320
      Width           =   1575
   End
   Begin VB.CommandButton cmdShto 
      Caption         =   "Add"
      Height          =   440
      Left            =   120
      TabIndex        =   3
      Top             =   4320
      Width           =   1575
   End
   Begin VB.TextBox txtkategoria 
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
      Height          =   340
      Left            =   1320
      TabIndex        =   0
      Top             =   1080
      Width           =   3735
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   3600
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
            Picture         =   "frmCategory.frx":08CA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label label5 
      Caption         =   "Label3"
      Height          =   375
      Left            =   6240
      TabIndex        =   9
      Top             =   4680
      Width           =   1815
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Category list"
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
      TabIndex        =   2
      Top             =   240
      Width           =   2535
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "frmCategory.frx":0C1C
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Description:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Index           =   8
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
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
Attribute VB_Name = "frmMMSCategory"
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
txtkategoria.Text = ""
End Sub
Public Sub HapKategorin()
Dim itm As ListItem
ListView1.ListItems.Clear
If Not rsKategoria.RecordCount < 1 Then rsKategoria.MoveFirst
Do Until rsKategoria.EOF
If Not IsNull(rsKategoria!kat_id) Then Set itm = ListView1.ListItems.Add(, , rsKategoria!kat_id, 1, 1)
If Not IsNull(rsKategoria!kategoria) Then itm.SubItems(1) = rsKategoria!kategoria
Label5.Caption = rsKategoria!kategoria
rsKategoria.MoveNext
DoEvents
Loop
End Sub
Public Function GjejKategorin() As Boolean
Dim strTemp
strTemp = "'" & strSearch & "'"
On Error Resume Next
rsKategoria.MoveFirst
On Error GoTo ErrorNotOnFile:
rsKategoria.Find "kat_id= " & strTemp, 0, adSearchForward
If rsKategoria!kat_id = strSearch Then GjejKategorin = True  'found
On Error GoTo 0
err.Clear
Exit Function
ErrorNotOnFile:
GjejKategorin = False
DoEvents
On Error GoTo 0
err.Clear
End Function
Public Function Gjej2() As Boolean
Dim strTemp
strTemp = "'" & strSearch & "'"
On Error Resume Next
rsKategoria.MoveFirst
On Error GoTo ErrorNotOnFile:
rsKategoria.Find "kategoria= " & strTemp, 0, adSearchForward
If rsKategoria!kategoria = strSearch Then Gjej2 = True   'found
On Error GoTo 0
err.Clear
Exit Function
ErrorNotOnFile:
Gjej2 = False
DoEvents
On Error GoTo 0
err.Clear
End Function

Private Sub cmdAnuloje_Click()
PastroTekstin
blnStatus True
If Not rsKategoria.EOF Then rsKategoria.MoveNext
HapKategorin
End Sub

Private Sub cmdDalja_Click()
Unload Me
End Sub

Private Sub cmdFshije_Click()
Dim blnFound As Boolean
Dim intRes As Integer
If txtid.Text = "" Then Exit Sub
intRes = MsgBox("A jeni i sigurtë se doni ta fshini shenimin?", vbQuestion + vbYesNo, "Konfirmoni fshirjen")
If intRes = vbNo Then Exit Sub
strSearch = CStr(txtid.Text)
blnFound = GjejKategorin()
If blnFound = True Then
rsKategoria.Delete
rsKategoria.Requery
MsgBox "Shenimi u fshi me sukses.", vbInformation, "Fshirja"
HapKategorin
PastroTekstin
End If
End Sub

Private Sub cmdNdrysho_Click()
If txtkategoria.Text = "" Then Exit Sub
blnStatus False
txtkategoria.SetFocus
blnEdit = True
End Sub

Private Sub cmdRuaj_Click()
Dim blnFound As Boolean
If blnEdit = True Then
strSearch = CStr(txtid.Text)
blnFound = GjejKategorin()
rsKategoria.Update "kategoria", txtkategoria.Text
rsKategoria.Requery
blnStatus True
blnEdit = False
Else
rsKategoria.AddNew
rsKategoria!kategoria = txtkategoria.Text
rsKategoria!kat_id = txtid.Text
rsKategoria.Update
rsKategoria.Requery
blnStatus True
End If
PastroTekstin
HapKategorin
If rsKategoria.RecordCount = 0 Then
txtid.Text = "1"
Else
rsKategoria.MoveLast
txtid.Text = rsKategoria!kat_id + 1
End If
End Sub

Private Sub cmdShto_Click()
blnStatus False
PastroTekstin
txtkategoria.SetFocus
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(ListView1)
DataConnect1
OpenData1
OpenDB1
'==========
HapKategorin
If rsKategoria.RecordCount = 0 Then
txtid.Text = "1"
Else
rsKategoria.MoveLast
txtid.Text = rsKategoria!kat_id + 1
End If
End Sub


Private Sub ListView1_Click()
PastroTekstin
Dim blnFound As Boolean
strSearch = CStr(ListView1.SelectedItem.Text)
blnFound = GjejKategorin()
If blnFound = True Then
txtkategoria.Text = ListView1.SelectedItem.Text
If Not IsNull(rsKategoria!kat_id) Then txtid.Text = rsKategoria!kat_id
If Not IsNull(rsKategoria!kategoria) Then txtkategoria.Text = rsKategoria!kategoria
End If
End Sub

Private Sub txtkategoria_KeyPress(KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub

Private Sub txtkategoria_LostFocus()
Dim blnFound As Boolean
strSearch = CStr(txtkategoria.Text)
blnFound = Gjej2()
If blnFound = True And Not txtkategoria.Text = Label5.Caption Then
HapKategorin
blnStatus True
MsgBox "Kjo kategori ekziston!", vbInformation, "Kujdes!"
txtkategoria.Text = ""
txtkategoria.SetFocus
End If
End Sub
