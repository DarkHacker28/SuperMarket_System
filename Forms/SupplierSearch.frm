VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form SupplierSearch 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Supplier search"
   ClientHeight    =   3990
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6750
   Icon            =   "SupplierSearch.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3990
   ScaleWidth      =   6750
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   7
      Top             =   720
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   6
      Top             =   3360
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   53
   End
   Begin VB.CommandButton cmdOK 
      BackColor       =   &H00ECF4F4&
      Caption         =   "OK"
      Height          =   375
      Left            =   4080
      TabIndex        =   4
      Top             =   3480
      Width           =   1215
   End
   Begin VB.CommandButton cmdexit 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5400
      TabIndex        =   3
      Top             =   3480
      Width           =   1215
   End
   Begin MSComctlLib.ListView lv 
      Height          =   1695
      Left            =   120
      TabIndex        =   2
      Top             =   1440
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   2990
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   16777215
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Furnizuesi"
         Object.Width           =   8819
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "ID"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.TextBox txt 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   2160
      MaxLength       =   25
      TabIndex        =   0
      Top             =   1080
      Width           =   4455
   End
   Begin MSComctlLib.ImageList img 
      Left            =   960
      Top             =   5400
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   17
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":08CA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":225C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":3BEE
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":5580
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":6F12
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":88A4
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":A236
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":BBC8
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":D55A
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":EEEE
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":FBCA
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":104AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":11186
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":11E62
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":12B3E
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":1381A
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "SupplierSearch.frx":144F6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Supplier search"
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
      TabIndex        =   5
      Top             =   240
      Width           =   2535
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "SupplierSearch.frx":14DD2
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Supplier name:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   1080
      Width           =   2535
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
Attribute VB_Name = "SupplierSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdOK_Click()
    If supplierflag = 1 Then
        frmMMSSupplier.txt(0) = lv.ListItems(lv.SelectedItem.Index).SubItems(1)
        'frmMMSSupplier.txt(0).SetFocus
        Unload Me
    End If
End Sub

Private Sub Form_Load()
Me.Icon = Me.img.ListImages(3).Picture
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
If KeyAscii = 13 Then
Call dbconek
With ar
criteria = "Select * From tblFurnizuesit Where furnizuesi like'" & txt(0) & "%'"
.Open criteria, strConek, 3, 3
If .RecordCount >= 1 Then
lv.ListItems.Clear
Do While Not .EOF
lv.ListItems.Add , , !furnizuesi
lv.ListItems(lv.ListItems.Count).SubItems(1) = !fur_id
.MoveNext
Loop
lv.SetFocus
Else
MsgBox "Furnizuesi nuk ekziston.", vbInformation, "Gabim!"
txt(0).SetFocus
Exit Sub
End If
.Close
End With
End If
End Sub
