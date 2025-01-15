VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmFurnizimi 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Delivery"
   ClientHeight    =   9735
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   12840
   Icon            =   "frmFurnizimi.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9735
   ScaleWidth      =   12840
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      Height          =   1215
      Left            =   2280
      ScaleHeight     =   1155
      ScaleWidth      =   7635
      TabIndex        =   24
      Top             =   3960
      Visible         =   0   'False
      Width           =   7695
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   1680
         Top             =   240
      End
      Begin ComctlLib.ProgressBar pb1 
         Height          =   375
         Left            =   120
         TabIndex        =   25
         Top             =   600
         Width           =   7335
         _ExtentX        =   12938
         _ExtentY        =   661
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         Caption         =   "Please wait..."
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   26
         Top             =   120
         Width           =   7215
      End
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   22
      Top             =   4860
      Width           =   12615
      _ExtentX        =   22251
      _ExtentY        =   53
   End
   Begin VB.TextBox txtborxh 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   540
      Left            =   7080
      TabIndex        =   19
      Text            =   "00.00"
      Top             =   9120
      Width           =   1695
   End
   Begin VB.TextBox txtpaguar 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   540
      Left            =   4080
      TabIndex        =   17
      Text            =   "00.00"
      Top             =   9120
      Width           =   1695
   End
   Begin VB.TextBox txttotal 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   540
      Left            =   1080
      TabIndex        =   15
      Text            =   "00.00"
      Top             =   9120
      Width           =   1575
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   14
      Top             =   600
      Width           =   12855
      _ExtentX        =   22675
      _ExtentY        =   53
   End
   Begin VB.TextBox txtfat 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   1320
      TabIndex        =   0
      Top             =   720
      Width           =   2055
   End
   Begin SmartMarket.ctrlLiner ctrlLiner3 
      Height          =   30
      Left            =   120
      TabIndex        =   11
      Top             =   9000
      Width           =   12615
      _ExtentX        =   22251
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SAVE"
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
      Left            =   9480
      TabIndex        =   6
      Top             =   9120
      Width           =   3255
   End
   Begin VB.TextBox txtsasia 
      Alignment       =   1  'Right Justify
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
      Height          =   360
      Left            =   11520
      TabIndex        =   3
      Top             =   720
      Width           =   1095
   End
   Begin VB.TextBox txtqmimi 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H00000080&
      Height          =   360
      Left            =   9600
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   720
      Width           =   1215
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   2160
      TabIndex        =   5
      Text            =   "Text1"
      Top             =   10320
      Width           =   1575
   End
   Begin VB.TextBox txtbar 
      Height          =   375
      Left            =   4200
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   10680
      Width           =   1335
   End
   Begin VB.ComboBox txtfurnizuesi 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   5400
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   720
      Width           =   3375
   End
   Begin ComctlLib.ListView lst 
      Height          =   3855
      Left            =   120
      TabIndex        =   7
      Top             =   5040
      Width           =   12615
      _ExtentX        =   22251
      _ExtentY        =   6800
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "imgkerkimi"
      SmallIcons      =   "imgkerkimi"
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
      NumItems        =   5
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "ID"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emertimi i Artikullit"
         Object.Width           =   8819
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   1676
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qmimi"
         Object.Width           =   1676
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Total"
         Object.Width           =   1764
      EndProperty
   End
   Begin ComctlLib.ListView lstart 
      Height          =   3495
      Left            =   120
      TabIndex        =   21
      Top             =   1200
      Width           =   12615
      _ExtentX        =   22251
      _ExtentY        =   6165
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "imgkerkimi"
      SmallIcons      =   "imgkerkimi"
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
      NumItems        =   3
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "ID"
         Object.Width           =   4762
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emertimi i Artikullit"
         Object.Width           =   13229
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qmimi"
         Object.Width           =   1411
      EndProperty
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Double-click list to select item"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   240
      TabIndex        =   27
      Top             =   360
      Width           =   6855
   End
   Begin VB.Label lblid 
      Caption         =   "Label3"
      Height          =   255
      Left            =   9960
      TabIndex        =   23
      Top             =   120
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label Label8 
      Caption         =   "LOAN:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   20
      Top             =   9195
      Width           =   1215
   End
   Begin VB.Label Label7 
      Caption         =   "PAYED:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   18
      Top             =   9195
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "TOTAL:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   16
      Top             =   9195
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   "Invoice Nr:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   750
      Width           =   1215
   End
   Begin ComctlLib.ImageList imgkerkimi 
      Left            =   7320
      Top             =   10800
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   14
      ImageHeight     =   14
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   1
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmFurnizimi.frx":038A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Price:"
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
      Left            =   9000
      TabIndex        =   10
      Top             =   750
      Width           =   615
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "QTY:"
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
      Left            =   11040
      TabIndex        =   9
      Top             =   750
      Width           =   495
   End
   Begin VB.Label Label4 
      Caption         =   "Select Supplier:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   8
      Top             =   750
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "DELIVERY FORM"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   120
      TabIndex        =   13
      Top             =   0
      Width           =   6855
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   855
      Left            =   0
      Top             =   -240
      Width           =   13335
   End
End
Attribute VB_Name = "frmFurnizimi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim lstid, lstpershkrimi, lstqmimi, lstsasia, lsttotal As String
Public Sub SelectAll(Editctr As Control)
With Editctr
.SelStart = 0
.SelLength = Len(Editctr.Text)
.SetFocus
End With
End Sub
Private Sub cboart_Click()
Call artdb
With ar
criteria = "Select *From tblArtikujt Where pershkrimi='" & cboArt & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount >= 1 Then
txtbar = !barkodi
txt1 = !pershkrimi
txtqmimi = Format(!qmimi, "###,###,##0.00")
txtsasia.SetFocus
Else
MsgBox "Ky artikull nuk ekziston në bazë.", vbCritical, "Gabim!"
SendKeys "{end}+{home}"
Exit Sub
End If
.Close
End With
End Sub

Private Sub Command1_Click()
'Ruajtja ne tabelen e Furnizim Infos
'===================================================
If txtfat.Text = "" Then
MsgBox "Ju lutem shkruani numrin e fakturës", vbInformation + vbOKOnly, "Kujdes!"
Else
If lst.ListItems.Count = 0 Then
MsgBox "Nuk ka artikuj në listën e furnizimit", vbInformation, "Furnizimi"
Else
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblFatura"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.AddNew
!fat_nr = txtfat
!total = txttotal
!paguar = txtpaguar
!borxh = txtborxh
!furnizuesi = txtfurnizuesi
.Update
.Close
End With
End If
'====================================================
For ilst = 1 To lst.ListItems.Count
lstid = lst.ListItems(ilst).Text
lstpershkrimi = lst.ListItems(ilst).SubItems(1)
lstqmimi = lst.ListItems(ilst).SubItems(3)
lstsasia = lst.ListItems(ilst).SubItems(2)
lsttotal = lst.ListItems(ilst).SubItems(4)
'Ruajtja ne tabelen e Furnizimit
'===================================================
If lst.ListItems.Count = 0 Then
MsgBox "Nuk ka artikuj në listën e furnizimit", vbInformation, "Furnizimi"
Else
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblFurnizimi"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.AddNew
!bar = lstid
!pershkrimi = lstpershkrimi
!qmimi = lstqmimi
!sasia = lstsasia
!total = lsttotal
!furnizuesi = txtfurnizuesi.Text
!Data = Format(Now, "dd/mm/yyyy")
!nr = txtfat.Text
.Update
.Close
End With
End If
'=================================================
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblGjendja"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.AddNew
!bar = lstid
!pershkrimi = lstpershkrimi
!qmimi = lstqmimi
!sasia = lstsasia
!total = lsttotal
!furnizuesi = txtfurnizuesi.Text
!Data = Format(Now, "dd/mm/yyyy")
!nr = txtfat.Text
.Update
.Close
End With

'Ruajtja dhe Freskimi i stoqeve
'================================================
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call artdb
ac.Open strConek
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & lstid & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!sasia = Val(!sasia) + lstsasia
.Update
.Close
End With
Next
Timer1.Enabled = True
Picture1.Visible = True
End If
Unload Me
frmFurnizimi.Show 1
End Sub

Private Sub EtsLinkLabel1_Click()
frmAdd_List.Show 1
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lst)
Call ListView_FullRowSelect(lstart)
'Vendosja e Furnizuesve ne Combo Box
Call dbconek
ar.Open "Select *From tblFurnizuesit", strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
Exit Sub
Else
ar.MoveFirst
Do While Not ar.EOF
txtfurnizuesi.AddItem ar!furnizuesi
ar.MoveNext
Loop
ar.Close
End If

On Error Resume Next
lblid = txtfurnizuesi.Text
Call artdb
With ar
criteria = "Select *From tblartikujt"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lstart.ListItems.Add , , !barkodi, , 1
lstart.ListItems(lstart.ListItems.Count).SubItems(1) = !pershkrimi
lstart.ListItems(lstart.ListItems.Count).SubItems(2) = Format(CCur(!qmimi), "###,###,##0.00")
.MoveNext
Loop
.Close
End With
End Sub


Private Sub lst_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyDelete
If lst.ListItems.Count = 0 Then
MsgBox "Nuk ka artikuj ne listen e furnizimit", vbOKOnly, "Largimi i artikullit"
Else
minusamount = lst.ListItems(lst.SelectedItem.Index).SubItems(4)
txttotal.Text = Format(CCur(txttotal.Text) - minusamount, "###,###,##0.00")
lst.ListItems.Remove (lst.SelectedItem.Index)
End If
End Select
End Sub

Private Sub lstart_DblClick()
Call artdb
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & lstart.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount >= 1 Then
txtbar = !barkodi
txt1 = !pershkrimi
txtqmimi = Format(!qmimi, "###,###,##0.00")
txtqmimi.SetFocus
Else
MsgBox "Ky artikull nuk ekziston në bazë.", vbCritical, "Gabim!"
SendKeys "{end}+{home}"
Exit Sub
End If
.Close
End With
End Sub

Private Sub lstart_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Call artdb
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & lstart.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount >= 1 Then
txtbar = !barkodi
txt1 = !pershkrimi
txtqmimi = Format(!qmimi, "###,###,##0.00")
txtsasia.SetFocus
Else
MsgBox "Ky artikull nuk ekziston në bazë.", vbCritical, "Gabim!"
SendKeys "{end}+{home}"
Exit Sub
End If
.Close
End With
End If
End Sub

Private Sub Timer1_Timer()
pb1.Value = pb1.Value + 5
If pb1.Value = 80 Then
lst.ListItems.Clear
txtsasia.Text = ""
txtqmimi.Text = ""
txt1.Text = ""
txttotal.Text = "00.00"
txtpaguar.Text = ""
txtborxh.Text = ""
End If
If pb1.Value = 90 Then
Shell App.Path & "\kop.bat", vbHide
End If
If pb1.Value = 100 Then
Timer1.Enabled = False
Picture1.Visible = False
End If
End Sub

Private Sub txtfat_LostFocus()
Call dbconek
With ar
criteria = "Select *From tblFatura Where fat_nr='" & txtfat & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
MsgBox "Faktura me këtë numër ekziston", vbInformation, "Kujdes!"
txtfat.Text = ""
txtfat.SetFocus
Exit Sub
End If
.Close
End With
End Sub
Private Sub txtfurnizuesi_Click()
lstart.ListItems.Clear
On Error Resume Next
lblid = txtfurnizuesi.Text
Call artdb
With ar
criteria = "Select *From tblartikujt Where furnizuesi='" & lblid.Caption & "'"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lstart.ListItems.Add , , !barkodi, , 1
lstart.ListItems(lstart.ListItems.Count).SubItems(1) = !pershkrimi
lstart.ListItems(lstart.ListItems.Count).SubItems(2) = Format(CCur(!qmimi), "###,###,##0.00")
.MoveNext
Loop
.Close
End With
'=====================================================
cboArt.Enabled = True
txtqmimi.Enabled = True
txtsasia.Enabled = True
lstart.SetFocus
End Sub

Private Sub txtpaguar_Change()
Command1.Enabled = True
txtborxh.Text = Val(txttotal) - Val(txtpaguar)
End Sub

Private Sub txtqmimi_GotFocus()
Call SelectAll(txtqmimi)
End Sub

Private Sub txtqmimi_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
txtsasia.SetFocus
End If
End Sub

Private Sub txtsasia_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
lst.ListItems.Add , , txtbar, , 1
lst.ListItems(lst.ListItems.Count).SubItems(1) = txt1
lst.ListItems(lst.ListItems.Count).SubItems(2) = txtsasia
lst.ListItems(lst.ListItems.Count).SubItems(3) = txtqmimi
lst.ListItems(lst.ListItems.Count).SubItems(4) = Format(CCur(txtqmimi * txtsasia), "###,###,##0.00")
int1 = lst.ListItems(lst.ListItems.Count).SubItems(4)
int2 = txttotal
txttotal.Text = Format(CCur(int2) + int1, "###,###,##0.00")
txtsasia.Text = ""
txtqmimi.Text = ""
txt1.Text = ""
lstart.SetFocus
End If
End Sub
