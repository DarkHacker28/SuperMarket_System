VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frmShitja 
   BorderStyle     =   0  'None
   ClientHeight    =   11190
   ClientLeft      =   -30
   ClientTop       =   -120
   ClientWidth     =   15330
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmShitja.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   11190
   ScaleWidth      =   15330
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin MSCommLib.MSComm MSComm1 
      Left            =   5040
      Top             =   720
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   18
      Top             =   600
      Width           =   15375
      _ExtentX        =   27120
      _ExtentY        =   53
   End
   Begin VB.PictureBox Picture1 
      Align           =   2  'Align Bottom
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   0
      Picture         =   "frmShitja.frx":6852
      ScaleHeight     =   495
      ScaleWidth      =   15330
      TabIndex        =   9
      Top             =   10695
      Width           =   15330
      Begin VB.Label lblemri 
         BackColor       =   &H0080C0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Qemajl Osmani"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   255
         Left            =   12600
         TabIndex        =   17
         Top             =   120
         Width           =   2535
      End
      Begin VB.Label Label1 
         BackColor       =   &H0080C0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Cashier:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   11640
         TabIndex        =   16
         Top             =   120
         Width           =   855
      End
      Begin VB.Label Label2 
         BackColor       =   &H0080C0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Sale NR:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   120
         Width           =   975
      End
      Begin VB.Label lblnumri 
         BackColor       =   &H0080C0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "1"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   255
         Left            =   1080
         TabIndex        =   14
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label Label3 
         BackColor       =   &H0080C0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Date:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3000
         TabIndex        =   13
         Top             =   120
         Width           =   615
      End
      Begin VB.Label lbldata 
         BackColor       =   &H0080C0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "14/05/2007"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   255
         Left            =   3720
         TabIndex        =   12
         Top             =   120
         Width           =   1335
      End
   End
   Begin VB.PictureBox picsasia 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   2360
      Left            =   5640
      ScaleHeight     =   2325
      ScaleWidth      =   3165
      TabIndex        =   4
      Top             =   4320
      Visible         =   0   'False
      Width           =   3200
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         Height          =   615
         Left            =   120
         TabIndex        =   7
         Top             =   1560
         Width           =   2895
      End
      Begin VB.Frame Frame1 
         Caption         =   "Type QTY"
         Height          =   1335
         Left            =   120
         TabIndex        =   5
         Top             =   120
         Width           =   2895
         Begin VB.TextBox txtsasia 
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   20.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   240
            TabIndex        =   6
            Text            =   "1"
            Top             =   360
            Width           =   2415
         End
      End
      Begin VB.Label Label5 
         Caption         =   "Label5"
         Height          =   615
         Left            =   360
         TabIndex        =   8
         Top             =   2880
         Width           =   2535
      End
   End
   Begin VB.TextBox txtbarkodi 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   840
      Width           =   3255
   End
   Begin ComctlLib.ListView lvshitja 
      Height          =   8325
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   15015
      _ExtentX        =   26485
      _ExtentY        =   14684
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   5
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Barcode"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Description"
         Object.Width           =   11501
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Price"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qty"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "TOTAL"
         Object.Width           =   2646
      EndProperty
   End
   Begin VB.Label txtshuma2 
      BackColor       =   &H000080FF&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7320
      TabIndex        =   20
      Top             =   720
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label txtshuma 
      BackColor       =   &H000080FF&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   19
      Top             =   720
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblarka 
      Caption         =   "Arka"
      Height          =   255
      Left            =   3240
      TabIndex        =   11
      Top             =   10320
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Image Image2 
      Height          =   780
      Left            =   120
      OLEDropMode     =   2  'Automatic
      Picture         =   "frmShitja.frx":1F496
      Top             =   9780
      Width           =   2250
   End
   Begin VB.Label lbltotal 
      BackColor       =   &H00000000&
      Caption         =   "0.00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   705
      Left            =   12240
      TabIndex        =   10
      Top             =   9840
      Width           =   2895
   End
   Begin VB.Label Label4 
      Caption         =   "UPC:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   890
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   360
      Left            =   120
      Picture         =   "frmShitja.frx":250AA
      Top             =   120
      Width           =   360
   End
   Begin VB.Label lblfirma 
      BackStyle       =   0  'Transparent
      Caption         =   "Visual Soft Development"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   80
      Width           =   6255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   735
      Left            =   12000
      Shape           =   4  'Rounded Rectangle
      Top             =   9840
      Width           =   3255
   End
   Begin VB.Image Image3 
      Height          =   610
      Left            =   0
      Picture         =   "frmShitja.frx":25D0C
      Stretch         =   -1  'True
      Top             =   0
      Width           =   16380
   End
   Begin VB.Menu mnumenyja 
      Caption         =   "Main menu"
      Begin VB.Menu mnuanulo 
         Caption         =   "Cancel transaction"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnufshij 
         Caption         =   "Remove item"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnuKerko 
         Caption         =   "Search items"
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnucash 
         Caption         =   "CASH"
         Shortcut        =   {F6}
      End
      Begin VB.Menu mnukthimi 
         Caption         =   "Item return"
         Shortcut        =   {F9}
      End
      Begin VB.Menu mnusasia 
         Caption         =   "Item QTY"
         Shortcut        =   {F12}
      End
      Begin VB.Menu mnuqkyqja 
         Caption         =   "Logg-off"
         Shortcut        =   {F11}
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnudalja 
         Caption         =   "Exit"
         Shortcut        =   ^X
      End
   End
End
Attribute VB_Name = "frmShitja"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub SelectAll(Editctr As Control)
With Editctr
.SelStart = 0
.SelLength = Len(Editctr.Text)
.SetFocus
End With
End Sub

Private Sub Command1_Click()
picsasia.Visible = False
txtbarkodi.SetFocus
End Sub

Private Sub Command2_Click()
On Error Resume Next
If txtzbritja2.Text = "" Then
MsgBox "Ju lutem shkruani shumën për zbritje", vbInformation, "Smart CASH 2.0"
Else
lbltotal.Caption = Format(CCur(lbltotal.Caption) - CCur(lbltotal / 100 * txtzbritja2), "###,###,###0.00")
piczbritja2.Visible = False
txtbarkodi.SetFocus
End If
End Sub

Private Sub Command3_Click()
'Zbritja
'***********************************************************
On Error Resume Next
If txtzbritja.Text = "" Then
MsgBox "Ju lutem shkruani shumën për zbritje", vbInformation, "Smart CASH 2.0"
Else
lvshitja.ListItems(lvshitja.SelectedItem.Index).SubItems(2) = Format(CCur(lvshitja.SelectedItem.SubItems(2)) - CCur(lvshitja.SelectedItem.SubItems(2) / 100 * txtzbritja), "###,###,###0.00")
txtshuma = Format(CCur(lvshitja.SelectedItem.SubItems(4)), "###,###,###0.00")
lvshitja.ListItems(lvshitja.SelectedItem.Index).SubItems(4) = Format(CCur(lvshitja.SelectedItem.SubItems(2)) * CCur(lvshitja.SelectedItem.SubItems(3)), "###,###,###0.00")
txtshuma2 = Format(CCur(txtshuma) - CCur(lvshitja.SelectedItem.SubItems(4)), "###,###,###0.00")
lbltotal.Caption = Format(CCur(lbltotal.Caption) - CCur(txtshuma2), "###,###,###0.00")
txtzbritja.Text = ""
piczbritja.Visible = False
End If
End Sub

Private Sub Form_Load()
On Error Resume Next
MSComm1.Settings = "9600,n,8,1"
MSComm1.CommPort = 1                ' Change CommPort to Appropriate Number
MSComm1.PortOpen = True
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
frmShitja.MSComm1.Output = txbuff
txbuff = "> B I G    S T A R <"
MSComm1.Output = txbuff
'------------------------
Call ListView_FullRowSelect(lvshitja)
lbldata.Caption = Format(Now, "dd/mm/yyyy")
Dim Arq1 As String
Dim Arq2 As String
Dim Arq3 As String
Arq1 = ReadINI(App.Path & "\Konfigurimi.ini", "Arka", "Arka")
Arq2 = ReadINI(App.Path & "\Konfigurimi.ini", "Kompania", "Kompania")
Arq3 = ReadINI(App.Path & "\Paragoni.ini", "Numri", "Numri")
lblarka.Caption = Arq1
lblfirma.Caption = Arq2
lblnumri.Caption = Arq3
End Sub

Private Sub Image2_Click()
frmAbout.Show 1
End Sub

Private Sub lvshitja_GotFocus()
txtbarkodi.Text = ""
End Sub

Private Sub lvshitja_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyDelete
If lvshitja.ListItems.Count = 0 Then
Exit Sub
Else
minusamount = lvshitja.ListItems(lvshitja.SelectedItem.Index).SubItems(4)
lbltotal.Caption = Format(CCur(lbltotal.Caption) - minusamount, "###,###,##0.00")
lvshitja.ListItems.Remove (lvshitja.SelectedItem.Index)
txtbarkodi.Enabled = True
txtbarkodi.SetFocus
lvshitja.Enabled = True
End If
'Zbritja========================================
Case vbKeySubtract
piczbritja.Visible = True
txtzbritja.SetFocus
If lvshitja.ListItems.Count = 0 Then
Exit Sub
Else
lblartikulli.Caption = lvshitja.SelectedItem.SubItems(1)
lblqmimi.Caption = lvshitja.SelectedItem.SubItems(2)
End If
End Select
End Sub

Private Sub mnuanulo_Click()
If lvshitja.ListItems.Count = 0 Then
MsgBox "There are no items on sales list.", vbOKOnly + vbInformation
Else
If MsgBox("Are you sure you want to cancel current transaction?", vbYesNo + vbQuestion) = vbYes Then
lvshitja.ListItems.Clear
txtbarkodi.Enabled = True
txtbarkodi.SetFocus
inttotal = 0
lbltotal.Caption = "0.00"
txtshuma = "0.00"
txtshuma2 = "0.00"
Else
Cancel = 1
End If
End If
On Error Resume Next
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
frmShitja.MSComm1.Output = txbuff
txbuff = "> B I G    S T A R <"
frmShitja.MSComm1.Output = txbuff
End Sub

Private Sub mnucash_Click()
frmPagesa.txttotal.Text = lbltotal.Caption
frmPagesa.Show 1
End Sub

Private Sub mnudalja_Click()
'I use this for customer display*************
On Error Resume Next
MSComm1.Settings = "9600,n,8,1"
MSComm1.CommPort = 1
MSComm1.PortOpen = True
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
frmShitja.MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
frmShitja.MSComm1.Output = txbuff
txbuff = "> VISUAL SOFT <"
MSComm1.Output = txbuff
'------------------------
End
End Sub

Private Sub mnufshij_Click()
If lvshitja.ListItems.Count = 0 Then
MsgBox "There are no items on sales list", vbInformation
Else
lvshitja.SetFocus
End If
End Sub

Private Sub mnuKerko_Click()
frmKerko.Show 1
End Sub

Private Sub mnukonfig_Click()
frmKonfigurimi.Show 1
End Sub

Private Sub mnuqkyqja_Click()
frmxLogIn.Show
End Sub

Private Sub mnusasia_Click()
picsasia.Visible = True
txtsasia.SetFocus
End Sub

Private Sub mnush_Click()
Shell App.Path & "\st_update.exe", vbHide
Shell App.Path & "\st_plus.exe", vbHide
End Sub

Private Sub mnuZbritja_Click()
lvshitja.SetFocus
End Sub

Private Sub mnuZbritjatotale_Click()
piczbritja2.Visible = True
txtzbritja2.SetFocus
End Sub

Private Sub txtbarkodi_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeySubtract
For ilst = 1 To frmShitja.lvshitja.ListItems.Count
lstid = frmShitja.lvshitja.ListItems(ilst).Text
lstpershkrimi = frmShitja.lvshitja.ListItems(ilst).SubItems(1)
lstsasia = frmShitja.lvshitja.ListItems(ilst).SubItems(3)
'Fshirja nga Shitja ***********************************************
On Error Resume Next
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblShitja Where barkodi='" & lstid & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.Delete
.Close
End With
'Nderrimi i sasive
'***********************************************************
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & lstid & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!sasia = Val(!sasia) + Val(lstsasia)
.Update
.Close
End With
'=================================================================
Next
lvshitja.ListItems.Clear
lbltotal.Caption = "0.00"
inttotal = 0
txtbarkodi.Text = ""
txtbarkodi.SetFocus
MsgBox "Kthimi i Artikujve u krye me sukses !", vbInformation
txtbarkodi.Text = ""
End Select
End Sub

Private Sub txtbarkodi_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call dbconek
ac.Open strConek
With ar
criteria = "Select *From tblartikujt Where barkodi='" & txtbarkodi & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
lvshitja.ListItems.Add , , txtbarkodi
lvshitja.ListItems(lvshitja.ListItems.Count).SubItems(1) = !pershkrimi
lvshitja.ListItems(lvshitja.ListItems.Count).SubItems(2) = Format(CCur(!qmimi_shitjes), "###,###,###0.00")
lvshitja.ListItems(lvshitja.ListItems.Count).SubItems(3) = txtsasia.Text
lvshitja.ListItems(lvshitja.ListItems.Count).SubItems(4) = Format(txtsasia * CCur(!qmimi_shitjes), "###,###,###0.00")
inttotal1 = Val(txtsasia)
inttotal2 = Format(CCur(!qmimi_shitjes), "###,###,###0.00")
inttotal = inttotal1 * inttotal2
txtsasia = "1"
txtbarkodi = ""
lbltotal = Format(CCur(lbltotal) + CCur(inttotal), "###,###,###0.00")
txtbarkodi.SetFocus
'***********************************************************
On Error Resume Next
LCD_Command (LCD_CLR)
MSComm1.Output = txbuff
LCD_Command (LCD_CLR)
MSComm1.Output = txbuff
LCD_Command (NEXT_LINE)
MSComm1.Output = txbuff
txbuff = !pershkrimi
txb = !qmimi_shitjes
MSComm1.Output = "> " & txbuff & "    " & txb
'===============================================
Else
txtbarkodi.Text = ""
End If
End With
End If
End Sub

Private Sub txtsasia_GotFocus()
Call SelectAll(txtsasia)
End Sub

Private Sub txtsasia_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
picsasia.Visible = False
End If
End Sub

Private Sub txtsasia_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command1_Click
End If
End Sub

Private Sub txtzbritja_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
piczbritja.Visible = False
End If
End Sub

Private Sub txtzbritja_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command3_Click
End If
End Sub

Private Sub txtzbritja2_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
piczbritja2.Visible = False
End If
End Sub

Private Sub txtzbritja2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command2_Click
End If
End Sub
