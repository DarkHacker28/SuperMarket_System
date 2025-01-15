VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmAdd_List 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Product"
   ClientHeight    =   5565
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7215
   Icon            =   "frmAdd_List.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5565
   ScaleWidth      =   7215
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
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
      Top             =   4920
      Width           =   2895
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
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
      Left            =   5160
      TabIndex        =   23
      Top             =   4920
      Width           =   1935
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   20
      Top             =   4800
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   53
   End
   Begin VB.Frame Frame1 
      Caption         =   "Product details"
      Height          =   4335
      Left            =   120
      TabIndex        =   19
      Top             =   120
      Width           =   6975
      Begin VB.ComboBox cboCategory 
         BackColor       =   &H00FFFFFF&
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
         Height          =   360
         Left            =   2160
         TabIndex        =   3
         Top             =   1800
         Width           =   4575
      End
      Begin VB.ComboBox cboSupp 
         BackColor       =   &H00FFFFFF&
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
         Height          =   360
         Left            =   2160
         TabIndex        =   2
         Top             =   1320
         Width           =   4575
      End
      Begin VB.TextBox txtpershkrimi 
         BackColor       =   &H00FFFFFF&
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
         Height          =   320
         Left            =   2160
         MaxLength       =   50
         TabIndex        =   1
         Top             =   840
         Width           =   4575
      End
      Begin VB.TextBox txtbarkodi 
         BackColor       =   &H00FFFFFF&
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
         Height          =   360
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   0
         Top             =   360
         Width           =   2655
      End
      Begin VB.TextBox txtvat 
         BackColor       =   &H00FFFFFF&
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
         Height          =   320
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   6
         Top             =   3240
         Width           =   1575
      End
      Begin VB.TextBox txtblerja 
         BackColor       =   &H00FFFFFF&
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
         Height          =   320
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   4
         Top             =   2280
         Width           =   1575
      End
      Begin VB.TextBox txtshitja 
         BackColor       =   &H00FFFFFF&
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
         Height          =   320
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   7
         Top             =   3720
         Width           =   1575
      End
      Begin VB.TextBox txtsasia 
         BackColor       =   &H00FFFFFF&
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
         Height          =   320
         Left            =   2160
         MaxLength       =   25
         TabIndex        =   5
         Top             =   2760
         Width           =   1575
      End
      Begin VB.Label lblbarkodi 
         Caption         =   "Label3"
         Height          =   255
         Left            =   4920
         TabIndex        =   18
         Top             =   360
         Visible         =   0   'False
         Width           =   975
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
               Picture         =   "frmAdd_List.frx":08CA
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Label lblcat 
         Caption         =   "Label3"
         Height          =   255
         Left            =   1320
         TabIndex        =   17
         Top             =   1800
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label lblsupp 
         Caption         =   "Label3"
         Height          =   255
         Left            =   1320
         TabIndex        =   16
         Top             =   1320
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Category:"
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
         TabIndex        =   15
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Supplier:"
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
         TabIndex        =   14
         Top             =   1320
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
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
         ForeColor       =   &H00404040&
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   13
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "UPC:"
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
         TabIndex        =   12
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "VAT(%):"
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
         TabIndex        =   11
         Top             =   3240
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Unit cost:"
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
         TabIndex        =   10
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Sales Price:"
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
         TabIndex        =   9
         Top             =   3720
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H00008080&
         BackStyle       =   0  'Transparent
         Caption         =   "Stock:"
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
         TabIndex        =   8
         Top             =   2760
         Width           =   1455
      End
   End
   Begin VB.Label lblinfo 
      Caption         =   "Label1"
      Height          =   375
      Left            =   3600
      TabIndex        =   25
      Top             =   4920
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblqmimi 
      Caption         =   "Label1"
      Height          =   255
      Left            =   480
      TabIndex        =   22
      Top             =   8040
      Width           =   975
   End
   Begin VB.Label lbltotal 
      Caption         =   "Label1"
      Height          =   375
      Left            =   2160
      TabIndex        =   21
      Top             =   8040
      Width           =   2055
   End
End
Attribute VB_Name = "frmAdd_List"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub PASTRO()
txtbarkodi.Text = ""
txtpershkrimi.Text = ""
txtblerja.Text = ""
txtvat.Text = ""
txtsasia.Text = ""
cboCategory.Text = ""
cboSupp.Text = ""
txtshitja.Text = ""
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

Private Sub cboCategory_Click()
Call dbconek
With ar
.Open "Select *From tblKategoria Where kategoria='" & cboCategory & "'", strConek, adOpenStatic, adLockOptimistic
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

Private Sub Command1_Click()
Select Case Me.Caption
Case "Shto Artikull të ri"
Dim intRes As Integer
If Len((txtbarkodi.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Barkodin!", vbCritical + vbOK, "Barkodi!")
If intRes = vbCancel Then
Exit Sub
End If
txtbarkodi.SetFocus
Exit Sub
End If
If Len((txtpershkrimi.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Pershkrimin!", vbCritical + vbOK, "Pershkrimi!")
If intRes = vbCancel Then
Exit Sub
End If
txtpershkrimi.SetFocus
Exit Sub
End If
If Len((cboSupp.Text)) = 0 Then
intRes = MsgBox("Ju lutem zgjidheni Furnizuesin!", vbCritical + vbOK, "Furnizuesi!")
If intRes = vbCancel Then
Exit Sub
End If
cboSupp.SetFocus
Exit Sub
End If
If Len((cboCategory.Text)) = 0 Then
intRes = MsgBox("Ju lutem zgjidheni Kategorinë!", vbCritical + vbOK, "Kategoria!")
If intRes = vbCancel Then
Exit Sub
End If
cboCategory.SetFocus
Exit Sub
End If
If Len((txtblerja.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Qmimin e Blerjes!", vbCritical + vbOK, "Qmimi i Blerjes!")
If intRes = vbCancel Then
Exit Sub
End If
txtblerja.SetFocus
Exit Sub
End If
If Len((txtsasia.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Sasinë!", vbCritical + vbOK, "Sasia!")
If intRes = vbCancel Then
Exit Sub
End If
txtsasia.SetFocus
Exit Sub
End If
If Len((txtvat.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani TVSH!", vbCritical + vbOK, "TVSH!")
If intRes = vbCancel Then
Exit Sub
End If
txtvat.SetFocus
Exit Sub
End If
If Len((txtshitja.Text)) = 0 Then
intRes = MsgBox("Ju lutem shkruani Qmimin e Shitjes!", vbCritical + vbOK, "Qmimi i Shitjes!")
If intRes = vbCancel Then
Exit Sub
End If
txtshitja.SetFocus
Exit Sub
End If
Call dbconek
With ar
.Open "Select *From tblArtikujt", strConek, adOpenStatic, adLockOptimistic
.AddNew
!barkodi = txtbarkodi
!pershkrimi = txtpershkrimi
!furnizuesi = cboSupp
!kategoria = cboCategory
!qmimi = txtblerja
!sasia = txtsasia
!tvsh = txtvat
!qmimi_shitjes = txtshitja
.Update
MsgBox "Shenimi u ruajt me sukses.", vbInformation, "Ruajtja!"
txtbarkodi.SetFocus
.Close
End With
'Shell App.Path & "\kop.bat", vbHide
PASTRO
Dim Arq1 As String
Arq1 = ReadINI(App.Path & "\Konfigurimi.ini", "Barkodet", "Barkodet")
lblinfo.Caption = Arq1
If lblinfo.Caption = "PO" Then
On Error Resume Next
Call dbconek
With ar
criteria = "Select *From tblArtikujt"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
txtbarkodi.Text = "001"
Else
.MoveLast
txtbarkodi = Val(!barkodi) + 1
.Close
End If
End With
Else
Exit Sub
End If
Case "Ndrysho artikullin"
Call dbconek
With ar
criteria = "Select *From tblartikujt Where barkodi ='" & txtbarkodi & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!barkodi = txtbarkodi
!pershkrimi = txtpershkrimi
!furnizuesi = cboSupp
!kategoria = cboCategory
!qmimi = txtblerja
!sasia = txtsasia
!tvsh = txtvat
!qmimi_shitjes = txtshitja
.Update
MsgBox "Artikulli u ruajt me sukses.", vbInformation, "Ruajtja!"
PASTRO
.Close
'Shell App.Path & "\kop.bat", vbHide
End With
Unload Me
End Select
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Command3_Click()
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
LoadSupp
LoadCat
'Numri automatik i ID
'*************************************************
Dim Arq1 As String
Arq1 = ReadINI(App.Path & "\Konfigurimi.ini", "Barkodet", "Barkodet")
lblinfo.Caption = Arq1
If lblinfo.Caption = "PO" Then
On Error Resume Next
Call dbconek
With ar
criteria = "Select *From tblArtikujt"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
txtbarkodi.Text = "001"
Else
.MoveLast
txtbarkodi = Val(!barkodi) + 1
.Close
End If
End With
Else
Exit Sub
End If
'*************************************************
End Sub

Private Sub Form_Unload(Cancel As Integer)
'Shell App.Path & "\kop.bat", vbHide
End Sub

Private Sub txtbarkodi_LostFocus()
Call dbconek
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & txtbarkodi & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
MsgBox "Shenimi me këtë barkod ekziston", vbInformation, "Kujdes!"
txtbarkodi.Text = ""
txtbarkodi.SetFocus
Exit Sub
End If
.Close
End With
End Sub

Private Sub txtmazha_LostFocus()
'On Error Resume Next
'lbltotal.Caption = Format(CCur(txtblerja) / 100 * txtmazha + txtblerja, "###,###,##0.00")
End Sub

Private Sub txtpershkrimi_KeyPress(KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub

Private Sub txtvat_Change()
'On Error Resume Next
'lblqmimi.Caption = Format(CCur(txtblerja) / 100 * txtmazha + txtblerja, "###,###,##0.00")
End Sub


