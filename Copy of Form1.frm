VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmItem 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Artikujt"
   ClientHeight    =   9150
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11760
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9150
   ScaleWidth      =   11760
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox chBar 
      Caption         =   "Gjenero Barkodat automatikisht"
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
      Left            =   120
      TabIndex        =   34
      Top             =   7920
      Width           =   5535
   End
   Begin VB.TextBox txtmazha 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   8400
      MaxLength       =   25
      TabIndex        =   5
      Text            =   "0"
      Top             =   960
      Width           =   1575
   End
   Begin VB.TextBox txtrabat 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   8400
      MaxLength       =   25
      TabIndex        =   6
      Text            =   "0"
      Top             =   1440
      Width           =   1575
   End
   Begin VB.CommandButton cmdANuloje 
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
      Left            =   9720
      TabIndex        =   29
      Top             =   8520
      Width           =   1935
   End
   Begin VB.CommandButton cmdDalja 
      Caption         =   "Kerko"
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
      Left            =   7800
      TabIndex        =   28
      Top             =   8520
      Width           =   1815
   End
   Begin VB.CommandButton cmdFshije 
      Caption         =   "Fshije"
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
      Left            =   5880
      TabIndex        =   27
      Top             =   8520
      Width           =   1815
   End
   Begin VB.CommandButton cmdNdrysho 
      Caption         =   "Ndrysho"
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
      Left            =   3960
      TabIndex        =   26
      Top             =   8520
      Width           =   1815
   End
   Begin VB.CommandButton cmdRuaj 
      Caption         =   "Ruaje"
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
      Left            =   2040
      TabIndex        =   25
      Top             =   8520
      Width           =   1815
   End
   Begin VB.CommandButton cmdShto 
      Caption         =   "Shto"
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
      TabIndex        =   24
      Top             =   8520
      Width           =   1815
   End
   Begin ComctlLib.ListView ListView1 
      Height          =   4455
      Left            =   120
      TabIndex        =   23
      Top             =   3360
      Width           =   11535
      _ExtentX        =   20346
      _ExtentY        =   7858
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ForeColor       =   -2147483640
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
         Text            =   "Barkodi"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Pershkrimi"
         Object.Width           =   7937
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Çmimi"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "TVSH"
         Object.Width           =   2540
      EndProperty
   End
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   22
      Top             =   8400
      Width           =   11535
      _ExtentX        =   20346
      _ExtentY        =   53
   End
   Begin VB.ComboBox cboCategory 
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
      ForeColor       =   &H00404040&
      Height          =   315
      Left            =   2040
      TabIndex        =   3
      Top             =   2400
      Width           =   4575
   End
   Begin VB.ComboBox cboSupp 
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
      ForeColor       =   &H00404040&
      Height          =   315
      Left            =   2040
      TabIndex        =   2
      Top             =   1920
      Width           =   4575
   End
   Begin VB.TextBox txtpershkrimi 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   2040
      MaxLength       =   25
      TabIndex        =   1
      Top             =   1440
      Width           =   4575
   End
   Begin VB.TextBox txtbarkodi 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   2040
      MaxLength       =   25
      TabIndex        =   0
      Top             =   960
      Width           =   2655
   End
   Begin VB.TextBox txtvat 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   8400
      MaxLength       =   25
      TabIndex        =   8
      Top             =   2400
      Width           =   1575
   End
   Begin VB.TextBox txtblerja 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   2040
      MaxLength       =   25
      TabIndex        =   4
      Text            =   "0.00"
      Top             =   2880
      Width           =   1575
   End
   Begin VB.TextBox txtshitja 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   8400
      MaxLength       =   25
      TabIndex        =   9
      Text            =   "0.00"
      Top             =   2880
      Width           =   1575
   End
   Begin VB.TextBox txtsasia 
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
      ForeColor       =   &H00404040&
      Height          =   320
      Left            =   8400
      MaxLength       =   25
      TabIndex        =   7
      Text            =   "0"
      Top             =   1920
      Width           =   1575
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   10560
      Top             =   1560
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":08CA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin SmartCASH.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   18
      Top             =   720
      Width           =   13455
      _ExtentX        =   23733
      _ExtentY        =   53
   End
   Begin VB.Label lbltotal 
      Caption         =   "Label3"
      Height          =   255
      Left            =   10080
      TabIndex        =   33
      Top             =   960
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Mazha:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   9
      Left            =   6840
      TabIndex        =   32
      Top             =   960
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Rabat:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   2
      Left            =   6840
      TabIndex        =   31
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Label lblbarkodi 
      Caption         =   "Label3"
      Height          =   255
      Left            =   4800
      TabIndex        =   30
      Top             =   960
      Visible         =   0   'False
      Width           =   975
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   5760
      Top             =   960
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
            Picture         =   "Form1.frx":0D1C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label lblcat 
      Caption         =   "Label3"
      Height          =   255
      Left            =   1200
      TabIndex        =   21
      Top             =   2400
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label lblsupp 
      Caption         =   "Label3"
      Height          =   255
      Left            =   1200
      TabIndex        =   20
      Top             =   1920
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "Form1.frx":106E
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Shenimet e Artikujve në stok"
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
      TabIndex        =   19
      Top             =   240
      Width           =   2535
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Kategoria:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   17
      Top             =   2400
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Furnizuesi:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   16
      Top             =   1920
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Përshkrimi:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   15
      Top             =   1440
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Barkodi:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   14
      Top             =   960
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "TVSH  (%) :"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   7
      Left            =   6840
      TabIndex        =   13
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Çmimi i blerjes:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   5
      Left            =   120
      TabIndex        =   12
      Top             =   2880
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Çmimi i shitjes:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004080&
      Height          =   255
      Index           =   6
      Left            =   6840
      TabIndex        =   11
      Top             =   2880
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00008080&
      BackStyle       =   0  'Transparent
      Caption         =   "Sasia aktuale:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   8
      Left            =   6840
      TabIndex        =   10
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   0
      Picture         =   "Form1.frx":1938
      Stretch         =   -1  'True
      Top             =   0
      Width           =   11865
   End
End
Attribute VB_Name = "frmItem"
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
txtbarkodi.Text = ""
txtpershkrimi.Text = ""
txtsasia.Text = ""
txtblerja.Text = ""
txtshitja.Text = ""
txtvat.Text = ""
End Sub
Public Sub LoadSupp()
If rsSupp.RecordCount > 0 Then rsSupp.MoveFirst
Do Until rsSupp.EOF
If Not IsNull(rsSupp!supplierdesc) Then cboSupp.AddItem rsSupp!supplierdesc
rsSupp.MoveNext
DoEvents
Loop
End Sub
Public Sub LoadCat()
If rsKategoria.RecordCount > 0 Then rsKategoria.MoveFirst
Do Until rsKategoria.EOF
If Not IsNull(rsKategoria!categorydesc) Then cboCategory.AddItem rsKategoria!categorydesc
rsKategoria.MoveNext
DoEvents
Loop
End Sub

Public Sub HapArtikujt()
Dim itm As ListItem
ListView1.ListItems.Clear
If Not rsitem.RecordCount < 1 Then rsitem.MoveFirst
Do Until rsitem.EOF
If Not IsNull(rsitem!upc) Then Set itm = ListView1.ListItems.Add(, , rsitem!upc, , 1)
If Not IsNull(rsitem!longdesc) Then itm.SubItems(1) = rsitem!longdesc
If Not IsNull(rsitem!stock) Then itm.SubItems(2) = rsitem!unitprice
If Not IsNull(rsitem!tvsh) Then itm.SubItems(3) = rsitem!tvsh
'lblbarkodi.Caption = rsitem!upc
rsitem.MoveNext
DoEvents
Loop
End Sub
Public Function GjejArtikullin() As Boolean
Dim strTemp
strTemp = "'" & strSearch & "'"
On Error Resume Next
rsitem.MoveFirst
On Error GoTo ErrorNotOnFile:
rsitem.Find "upc = " & strTemp, 0, adSearchForward
If rsitem!upc = strSearch Then GjejArtikullin = True  'found
On Error GoTo 0
err.Clear
Exit Function
ErrorNotOnFile:
GjejArtikullin = False
DoEvents
On Error GoTo 0
err.Clear
End Function
Public Function GjejSupp() As Boolean
Dim strTemp
strTemp = "'" & strSearch & "'"
On Error Resume Next
rsSupp.MoveFirst
On Error GoTo ErrorNotOnFile:
rsSupp.Find "suppliderdesc = " & strTemp, 0, adSearchForward
If rsSupp!suppliderdesc = strSearch Then GjejSupp = True 'found
On Error GoTo 0
err.Clear
Exit Function
ErrorNotOnFile:
GjejSupp = False
DoEvents
On Error GoTo 0
err.Clear
End Function

Private Sub cboCategory_Click()
Call dbconek
With ar
.Open "Select *From category Where categorydesc='" & cboCategory & "'", strConek, adOpenStatic, adLockOptimistic
lblcat = !categoryid
.Close
End With
End Sub

Private Sub cboSupp_Click()
Call dbconek
With ar
.Open "Select *From supplier Where supplierdesc='" & cboSupp & "'", strConek, adOpenStatic, adLockOptimistic
lblsupp = !supplierid
.Close
End With
End Sub

Private Sub cmdAnuloje_Click()
PastroTekstin
blnStatus True
If Not rsitem.EOF Then rsitem.MoveNext
HapArtikujt
Unload Me
End Sub

Private Sub cmdDalja_Click()
Form1.Show 1
End Sub

Private Sub cmdFshije_Click()
Dim blnFound As Boolean
Dim intRes As Integer
If txtbarkodi.Text = "" Then Exit Sub
intRes = MsgBox("A jeni i sigurtë se doni ta fshini shenimin?", vbQuestion + vbYesNo, "Konfirmoni fshirjen")
If intRes = vbNo Then Exit Sub
strSearch = CStr(txtbarkodi.Text)
blnFound = GjejArtikullin()
If blnFound = True Then
rsitem.Delete
rsitem.Requery
MsgBox "Shenimi u fshi me sukses.", vbInformation, "Fshirja"
HapArtikujt
PastroTekstin
End If
End Sub

Private Sub cmdNdrysho_Click()
If txtbarkodi.Text = "" Then Exit Sub
blnStatus False
txtbarkodi.Enabled = False
txtpershkrimi.SetFocus
blnEdit = True
End Sub

Private Sub cmdRuaj_Click()
Dim blnFound As Boolean
If blnEdit = True Then
strSearch = CStr(txtbarkodi.Text)
blnFound = GjejArtikullin()
rsitem.Update "upc", txtbarkodi.Text
rsitem.Update "longdesc", txtpershkrimi.Text
rsitem.Update "supplierid", lblsupp.Caption
rsitem.Update "categoryid", lblcat.Caption
rsitem.Update "stock", txtsasia.Text
rsitem.Update "unitcost", txtblerja.Text
rsitem.Update "unitprice", txtshitja.Text
rsitem.Update "tvsh", txtvat.Text
rsitem.Update "mazha", txtmazha.Text
rsitem.Update "rabat", txtrabat.Text
rsitem.Requery
blnStatus True
blnEdit = False
Else
rsitem.AddNew
rsitem!upc = txtbarkodi.Text
rsitem!longdesc = txtpershkrimi.Text
rsitem!supplierid = lblsupp.Caption
rsitem!categoryid = lblcat.Caption
rsitem!stock = txtsasia.Text
rsitem!unitcost = txtblerja.Text
rsitem!unitprice = txtshitja.Text
rsitem!tvsh = txtvat.Text
rsitem!mazha = txtmazha.Text
rsitem!rabat = txtrabat.Text
rsitem.Update
rsitem.Requery
blnStatus True
End If
PastroTekstin
HapArtikujt
End Sub

Private Sub cmdShto_Click()
blnStatus False
PastroTekstin
If chBar.Value = 1 Then
rsitem.MoveLast
txtbarkodi.Text = rsitem!upc + 1
Else
txtbarkodi.SetFocus
End If
End Sub


Private Sub Command2_Click()
Form1.Show 1
End Sub

Private Sub Form_Load()
DataConnect1
OpenData1
OpenDB1
DataConnect2
OpenData2
OpenDB2
DataConnect3
OpenData3
OpenDB3
'==========
HapArtikujt
LoadSupp
LoadCat
End Sub

Private Sub lblcat_Change()
Call dbconek
ar.Open "Select *From category Where categoryid='" & lblcat & "'", strConek, adOpenStatic, adLockOptimistic
cboCategory = ar!categorydesc
ar.Close
End Sub

Private Sub lblsupp_Change()
Call dbconek
ar.Open "Select *From supplier Where supplierid='" & lblsupp & "'", strConek, adOpenStatic, adLockOptimistic
cboSupp = ar!supplierdesc
ar.Close
End Sub

Private Sub ListView1_Click()
PastroTekstin
Dim blnFound As Boolean
If ListView1.ListItems.Count < 1 Then
Exit Sub
Else
strSearch = CStr(ListView1.SelectedItem.Text)
blnFound = GjejArtikullin()
If blnFound = True Then
txtbarkodi.Text = ListView1.SelectedItem.Text
If Not IsNull(rsitem!longdesc) Then txtpershkrimi.Text = rsitem!longdesc
If Not IsNull(rsitem!categoryid) Then lblcat.Caption = rsitem!categoryid
If Not IsNull(rsitem!supplierid) Then lblsupp.Caption = rsitem!supplierid
If Not IsNull(rsitem!stock) Then txtsasia.Text = rsitem!stock
If Not IsNull(rsitem!unitcost) Then txtblerja.Text = rsitem!unitcost
If Not IsNull(rsitem!unitprice) Then txtshitja.Text = rsitem!unitprice
If Not IsNull(rsitem!tvsh) Then txtvat.Text = rsitem!tvsh
If Not IsNull(rsitem!mazha) Then txtmazha.Text = rsitem!mazha
If Not IsNull(rsitem!rabat) Then txtrabat.Text = rsitem!rabat
End If
End If
End Sub

Private Sub Text2_LostFocus()

End Sub

Private Sub txtbarkodi_LostFocus()
Dim blnFound As Boolean
strSearch = CStr(txtbarkodi.Text)
blnFound = GjejArtikullin()
If blnFound = True And Not lblbarkodi.Caption = txtbarkodi.Text Then
HapArtikujt
blnStatus True
MsgBox "Ky barkod ekziston!", vbInformation, "Barkodi/Artikulli!"
txtbarkodi.Text = ""
txtbarkodi.SetFocus
End If
End Sub

Private Sub txtmazha_LostFocus()
'lbltotal.Caption = txtblerja / 100 * txtmazha + txtblerja
lbltotal.Caption = Format(CCur(txtblerja) / 100 * txtmazha + txtblerja, "###,###,##0.00")
End Sub

Private Sub txtpershkrimi_KeyPress(KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub

Private Sub txtvat_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyReturn Then
cmdRuaj_Click
txtbarkodi.SetFocus
End If
End Sub

Private Sub txtvat_LostFocus()
'txtshitja.Text = Format(CCur(lbltotal) / 100 * txtvat + lbltotal, "###,###,##0.00")
txtshitja.Text = Format(CCur(txtblerja) / 100 * txtmazha + txtblerja, "###,###,##0.00")
End Sub
