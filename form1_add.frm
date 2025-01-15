VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmItem_add 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Artikujt"
   ClientHeight    =   7575
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7200
   Icon            =   "form1_add.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7575
   ScaleWidth      =   7200
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin SmartCASH.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   32
      Top             =   1200
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   53
   End
   Begin VB.Frame Frame1 
      Caption         =   "Informacionet e Artikujve"
      Height          =   5175
      Left            =   120
      TabIndex        =   6
      Top             =   1320
      Width           =   6975
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   16
         Top             =   3720
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   15
         Top             =   4680
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   14
         Top             =   2280
         Width           =   1575
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   13
         Top             =   4200
         Width           =   1575
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   12
         Top             =   360
         Width           =   2655
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
         Left            =   2160
         MaxLength       =   50
         TabIndex        =   11
         Top             =   840
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
         Left            =   2160
         TabIndex        =   10
         Top             =   1320
         Width           =   4575
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
         Left            =   2160
         TabIndex        =   9
         Top             =   1800
         Width           =   4575
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   8
         Top             =   3240
         Width           =   1575
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
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   7
         Top             =   2760
         Width           =   1575
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
         Left            =   240
         TabIndex        =   29
         Top             =   3720
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
         Left            =   240
         TabIndex        =   28
         Top             =   4680
         Width           =   1455
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
         Left            =   240
         TabIndex        =   27
         Top             =   2280
         Width           =   1455
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
         Left            =   240
         TabIndex        =   26
         Top             =   4200
         Width           =   1335
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
         Left            =   240
         TabIndex        =   25
         Top             =   360
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
         Left            =   240
         TabIndex        =   24
         Top             =   840
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
         Left            =   240
         TabIndex        =   23
         Top             =   1320
         Width           =   1815
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
         Left            =   240
         TabIndex        =   22
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label lblsupp 
         Caption         =   "Label3"
         Height          =   255
         Left            =   1320
         TabIndex        =   21
         Top             =   1320
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label lblcat 
         Caption         =   "Label3"
         Height          =   255
         Left            =   1320
         TabIndex        =   20
         Top             =   1800
         Visible         =   0   'False
         Width           =   1335
      End
      Begin ComctlLib.ImageList ImageList2 
         Left            =   5400
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
               Picture         =   "form1_add.frx":08CA
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Label lblbarkodi 
         Caption         =   "Label3"
         Height          =   255
         Left            =   4920
         TabIndex        =   19
         Top             =   360
         Visible         =   0   'False
         Width           =   975
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
         Left            =   240
         TabIndex        =   18
         Top             =   3240
         Width           =   1455
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
         Left            =   240
         TabIndex        =   17
         Top             =   2760
         Width           =   1455
      End
   End
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   5
      Top             =   6840
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   53
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
      Left            =   3960
      TabIndex        =   2
      Top             =   6960
      Width           =   1935
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
      TabIndex        =   1
      Top             =   6960
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
      TabIndex        =   0
      Top             =   6960
      Width           =   1815
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
            Picture         =   "form1_add.frx":0C1C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image Image1 
      Height          =   855
      Left            =   120
      Picture         =   "form1_add.frx":106E
      Top             =   120
      Width           =   810
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Regjistrimi i Artikujve"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   31
      Top             =   120
      Width           =   3855
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Regjistroni artikujt e ri"
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
      Index           =   10
      Left            =   1200
      TabIndex        =   30
      Top             =   720
      Width           =   3855
   End
   Begin VB.Label lblqmimi 
      Caption         =   "Label3"
      Height          =   375
      Left            =   4080
      TabIndex        =   4
      Top             =   9240
      Width           =   1215
   End
   Begin VB.Label lbltotal 
      Caption         =   "Label3"
      Height          =   255
      Left            =   4080
      TabIndex        =   3
      Top             =   8760
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   1215
      Left            =   0
      Top             =   0
      Width           =   12375
   End
End
Attribute VB_Name = "frmItem_add"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim blnEdit As Boolean
Dim lngIndex As Long
Public Sub blnStatus(blnEnable As Boolean)

cmdShto.Enabled = blnEnable


End Sub
Public Sub PastroTekstin()
txtbarkodi.Text = ""
txtpershkrimi.Text = ""
txtsasia.Text = ""
txtblerja.Text = ""
txtshitja.Text = ""
txtvat.Text = ""
txtmazha.Text = ""
txtrabat.Text = ""
cboSupp.Text = ""
cboCategory.Text = ""
End Sub
Public Sub LoadSupp()
If rsSupp.RecordCount > 0 Then rsSupp.MoveFirst
Do Until rsSupp.EOF
If Not IsNull(rsSupp!furnizuesi) Then cboSupp.AddItem rsSupp!furnizuesi
rsSupp.MoveNext
DoEvents
Loop
End Sub
Public Sub LoadCat()
If rsKategoria.RecordCount > 0 Then rsKategoria.MoveFirst
Do Until rsKategoria.EOF
If Not IsNull(rsKategoria!kategoria) Then cboCategory.AddItem rsKategoria!kategoria
rsKategoria.MoveNext
DoEvents
Loop
End Sub

Public Sub HapArtikujt()
End Sub
Public Function GjejArtikullin() As Boolean
Dim strTemp
strTemp = "'" & strSearch & "'"
On Error Resume Next
rsitem.MoveFirst
On Error GoTo ErrorNotOnFile:
rsitem.Find "barkodi = " & strTemp, 0, adSearchForward
If rsitem!barkodi = strSearch Then GjejArtikullin = True 'found
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
.Open "Select *From tblkategoria Where kategoria='" & cboCategory & "'", strConek, adOpenStatic, adLockOptimistic
lblcat = !kat_id
.Close
End With
End Sub

Private Sub cboSupp_Click()
Call dbconek
With ar
.Open "Select *From tblFurnizuesit Where furnizuesi='" & cboSupp & "'", strConek, adOpenStatic, adLockOptimistic
lblsupp = !fur_id
.Close
End With
End Sub

Private Sub cmdAnuloje_Click()
PastroTekstin
blnStatus True
If Not rsitem.EOF Then rsitem.MoveNext
HapArtikujt
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
Dim intRes As Integer
If Len((txtbarkodi.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Barkodin!", vbCritical + vbOK, "Barkodi!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
txtbarkodi.SetFocus
Exit Sub
End If
If Len((txtpershkrimi.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Pershkrimin!", vbCritical + vbOK, "Pershkrimi!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
txtpershkrimi.SetFocus
Exit Sub
End If
If Len((cboSupp.Text)) = 0 Then
intRes = MsgBox("Ju lutem zgjidheni Furnizuesin!", vbCritical + vbOK, "Furnizuesi!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
cboSupp.SetFocus
Exit Sub
End If
If Len((cboCategory.Text)) = 0 Then
intRes = MsgBox("Ju lutem zgjidheni Kategorinë!", vbCritical + vbOK, "Kategoria!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
cboCategory.SetFocus
Exit Sub
End If
If Len((txtmazha.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Mazhën!", vbCritical + vbOK, "Mazha!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
txtmazha.SetFocus
Exit Sub
End If
If Len((txtrabat.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Rabatin!", vbCritical + vbOK, "Rabat!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
txtrabat.SetFocus
Exit Sub
End If
If Len((txtsasia.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Sasinë!", vbCritical + vbOK, "Sasia!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
txtsasia.SetFocus
Exit Sub
End If
If Len((txtvat.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani TVSH!", vbCritical + vbOK, "TVSH!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
txtvat.SetFocus
Exit Sub
End If
If Len((txtshitja.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Çmimin e Shitjes!", vbCritical + vbOK, "Çmimi i Shitjes!")
If intRes = vbCancel Then
cmdAnuloje_Click
Exit Sub
End If
txtshitja.SetFocus
Exit Sub
End If

Dim blnFound As Boolean
If blnEdit = True Then
strSearch = CStr(txtbarkodi.Text)
blnFound = GjejArtikullin()
rsitem.Update "barkodi", txtbarkodi.Text
rsitem.Update "pershkrimi", txtpershkrimi.Text
rsitem.Update "furnizuesi", lblsupp.Caption
rsitem.Update "kategoria", lblcat.Caption
rsitem.Update "sasia", txtsasia.Text
rsitem.Update "qmimi", txtblerja.Text
rsitem.Update "qmimi_shitjes", txtshitja.Text
rsitem.Update "tvsh", txtvat.Text
rsitem.Update "mazha", txtmazha.Text
rsitem.Update "rabat", txtrabat.Text
rsitem.Requery
blnStatus True
blnEdit = False
Else
rsitem.AddNew
rsitem!barkodi = txtbarkodi.Text
rsitem!pershkrimi = txtpershkrimi.Text
rsitem!furnizuesi = lblsupp.Caption
rsitem!kategoria = lblcat.Caption
rsitem!sasia = txtsasia.Text
rsitem!qmimi = txtblerja.Text
rsitem!qmimi_shitjes = txtshitja.Text
rsitem!tvsh = txtvat.Text
rsitem!mazha = txtmazha.Text
rsitem!rabat = txtrabat.Text
rsitem.Update
rsitem.Requery
blnStatus True
End If
PastroTekstin
HapArtikujt
Shell App.Path & "\kop.bat", vbHide
End Sub

Private Sub cmdShto_Click()
blnStatus False
PastroTekstin
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
ar.Open "Select *From tblkategoria Where kat_id='" & lblcat & "'", strConek, adOpenStatic, adLockOptimistic
cboCategory = ar!kategoria
ar.Close
End Sub

Private Sub lblsupp_Change()
Call dbconek
ar.Open "Select *From tblFurnizuesit Where fur_id='" & lblsupp & "'", strConek, adOpenStatic, adLockOptimistic
cboSupp = ar!furnizuesi
ar.Close
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
On Error Resume Next
lbltotal.Caption = Format(CCur(txtblerja) / 100 * txtmazha + txtblerja, "###,###,##0.00")
End Sub

Private Sub txtpershkrimi_KeyPress(KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub

Private Sub txtvat_Change()
On Error Resume Next
lblqmimi.Caption = Format(CCur(txtblerja) / 100 * txtmazha + txtblerja, "###,###,##0.00")
End Sub

Private Sub txtvat_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyReturn Then
cmdRuaj_Click
txtbarkodi.SetFocus
End If
End Sub

Private Sub txtvat_LostFocus()
On Error Resume Next
txtshitja.Text = Format(CCur(lblqmimi) / 100 * txtvat + lblqmimi, "###,###,##0.00")
End Sub
