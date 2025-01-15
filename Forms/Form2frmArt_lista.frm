VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmArtLista 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Products list"
   ClientHeight    =   8160
   ClientLeft      =   45
   ClientTop       =   735
   ClientWidth     =   10320
   Icon            =   "Form2frmArt_lista.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8160
   ScaleWidth      =   10320
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      BackColor       =   &H00C0C0C0&
      Height          =   50
      Left            =   0
      ScaleHeight     =   45
      ScaleWidth      =   10320
      TabIndex        =   11
      Top             =   0
      Width           =   10320
   End
   Begin VB.TextBox txtbar 
      Height          =   495
      Left            =   7680
      TabIndex        =   10
      Top             =   480
      Visible         =   0   'False
      Width           =   1695
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   8
      Top             =   7440
      Width           =   10095
      _ExtentX        =   17806
      _ExtentY        =   53
   End
   Begin VB.TextBox txtsearch 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   320
      Left            =   6840
      TabIndex        =   5
      Top             =   7680
      Width           =   3375
   End
   Begin VB.TextBox txtsearchbar 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   320
      Left            =   1320
      TabIndex        =   4
      Top             =   7680
      Width           =   3375
   End
   Begin ComctlLib.ListView lv 
      Height          =   5775
      Left            =   120
      TabIndex        =   0
      ToolTipText     =   "Klikoni me tastin e djathtë për të parë menynë shtesë."
      Top             =   1200
      Width           =   10095
      _ExtentX        =   17806
      _ExtentY        =   10186
      SortKey         =   1
      View            =   3
      Arrange         =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ForeColor       =   -2147483640
      BackColor       =   16777215
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
         Text            =   "Barkodi"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emertimi i Artikullit"
         Object.Width           =   7056
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   970
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "TVSH"
         Object.Width           =   1587
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Çmimi"
         Object.Width           =   1764
      EndProperty
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   1
      Top             =   1080
      Width           =   12615
      _ExtentX        =   22251
      _ExtentY        =   53
   End
   Begin VB.Image Image2 
      Height          =   240
      Left            =   120
      Picture         =   "Form2frmArt_lista.frx":08CA
      Top             =   7050
      Width           =   240
   End
   Begin VB.Label Label5 
      Caption         =   "Double-click to edit product or right click for menu"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   480
      TabIndex        =   9
      Top             =   7050
      Width           =   5415
   End
   Begin VB.Label Label3 
      Caption         =   "Find by Description:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4920
      TabIndex        =   7
      Top             =   7740
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "Find by UPC:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   7740
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   240
      Picture         =   "Form2frmArt_lista.frx":0E54
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Edit, Delete or Change products informations"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   10
      Left            =   1200
      TabIndex        =   3
      Top             =   720
      Width           =   3855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Products list"
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
      TabIndex        =   2
      Top             =   120
      Width           =   3855
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   8400
      Top             =   8640
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
            Picture         =   "Form2frmArt_lista.frx":2998
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   1095
      Left            =   0
      Top             =   0
      Width           =   12375
   End
   Begin VB.Menu mnushtt 
      Caption         =   "Add new product"
   End
   Begin VB.Menu mnunnn 
      Caption         =   "Edit product"
   End
   Begin VB.Menu mnufff 
      Caption         =   "Delete product"
   End
   Begin VB.Menu mnumenyja 
      Caption         =   "Menu"
      Visible         =   0   'False
      Begin VB.Menu mnushto 
         Caption         =   "Add new product"
      End
      Begin VB.Menu mnundrysho 
         Caption         =   "Edit product"
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu fff 
         Caption         =   "Delete product"
      End
   End
End
Attribute VB_Name = "frmArtLista"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CURR_COL As Integer
Dim blnEdit As Boolean
Dim lngIndex As Long
Dim autoProd As New ADODB.Recordset
Dim Prod As New ADODB.Recordset
Dim ls As ListItem
Public calther As String
Public con As New ADODB.Connection
Public rs As New ADODB.Recordset
Dim tHt As LVHITTESTINFO
Dim lstid As String

Function dpProd()
Do While Not Prod.EOF
Set ls = lv.ListItems.Add(, , Prod!barkodi, , 1)
ls.SubItems(1) = Prod!pershkrimi
ls.SubItems(2) = Prod!sasia
ls.SubItems(3) = Prod!tvsh
ls.SubItems(4) = Prod!qmimi_shitjes
Prod.MoveNext
Loop
Set Prod = Nothing
End Function


Private Sub fff_Click()
If lv.ListItems.Count = 0 Then
Exit Sub
Else
If txtbar.Text = "" Then
Exit Sub
Else
Call dbconek
With ar
criteria = "Select *From tblartikujt Where barkodi ='" & txtbar & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!barkodi = txtbarkodi
!pershkrimi = txtpershkrimi
!furnizuesi = lblsupp
!kategoria = lblcat
!qmimi = txtblerja
!sasia = txtsasia
!tvsh = txtvat
!qmimi_shitjes = txtshitja
.Delete
MsgBox "Artikulli u fshi me sukses.", vbInformation, "Fshirja!"
.Close
End With
lv.Refresh
End If
End If
lv.ListItems.Remove (lv.SelectedItem.Index)
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblartikujt"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lv.ListItems.Add , , !barkodi, 1, 1
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(2) = !sasia
lv.ListItems(lv.ListItems.Count).SubItems(3) = !tvsh
lv.ListItems(lv.ListItems.Count).SubItems(4) = Format(!qmimi_shitjes, "###,###,##0.00")
.MoveNext
Loop
.Close
End With
con.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;Persist Security Info=False;Jet OLEDB:Database Password=cc03bn01"
lv.Sorted = True
End Sub

Private Sub Form_Resize()
'lv.Height = Me.Height
'lv.Width = Me.Width
End Sub

Private Sub Form_Unload(Cancel As Integer)
con.Close
End Sub

Private Sub lv_Click()
If lv.ListItems.Count = 0 Then
Exit Sub
Else
txtbar.Text = lv.SelectedItem.Text
End If
End Sub

Private Sub lv_ColumnClick(ByVal ColumnHeader As ComctlLib.ColumnHeader)
If ColumnHeader.Index - 1 <> CURR_COL Then
lv.SortOrder = 0
Else
lv.SortOrder = Abs(lv.SortOrder - 1)
End If
lv.SortKey = ColumnHeader.Index - 1
lv.Sorted = True
CURR_COL = ColumnHeader.Index - 1
End Sub

Private Sub lv_DblClick()
Call mnundrysho_Click
End Sub

Private Sub lv_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 2 Then PopupMenu mnumenyja
End Sub

Private Sub mnundrysho_Click()
frmAdd_List.txtbarkodi = lv.SelectedItem.Text
'===========================
Call dbconek
With ar
criteria = "Select *From tblArtikujt Where barkodi='" & frmAdd_List.txtbarkodi & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
frmAdd_List.txtpershkrimi = !pershkrimi
frmAdd_List.txtblerja = !qmimi
frmAdd_List.txtvat = !tvsh
frmAdd_List.txtsasia = !sasia
frmAdd_List.txtshitja = !qmimi_shitjes
frmAdd_List.cboCategory.Text = !kategoria
frmAdd_List.cboSupp.Text = !furnizuesi
Else
MsgBox "Shenimi nuk eshte gjetur.", vbInformation, "Gabim!"
Exit Sub
End If
.Close
End With
'======================
frmAdd_List.Caption = "Ndrysho artikullin"
frmAdd_List.txtbarkodi.Enabled = False
frmAdd_List.Show 1
End Sub

Private Sub mnushto_Click()
frmAdd_List.Caption = "Shto Artikull të ri"
frmAdd_List.Show 1
End Sub

Private Sub txtsearch_Change()
If Prod.State = 1 Then Set Prod = Nothing
calther = "SELECT * from [tblArtikujt] where [pershkrimi] like '%" & Trim(txtsearch) & "%'"
Prod.Open calther, con, adOpenKeyset, adLockOptimistic
lv.ListItems.Clear
dpProd
End Sub

Private Sub txtsearchbar_Change()
If Prod.State = 1 Then Set Prod = Nothing
calther = "SELECT * from [tblArtikujt] where [barkodi] like '%" & Trim(txtsearchbar) & "%'"
Prod.Open calther, con, adOpenKeyset, adLockOptimistic
lv.ListItems.Clear
dpProd
End Sub
