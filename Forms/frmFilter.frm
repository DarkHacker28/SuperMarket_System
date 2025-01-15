VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmFilter 
   Caption         =   "Form2"
   ClientHeight    =   7485
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9255
   LinkTopic       =   "Form2"
   ScaleHeight     =   7485
   ScaleWidth      =   9255
   StartUpPosition =   3  'Windows Default
   Begin ComctlLib.ListView ListView1 
      Height          =   3375
      Left            =   120
      TabIndex        =   3
      Top             =   1560
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   5953
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
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
      NumItems        =   2
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Barkodi"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emertimi"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.ComboBox cbFurnizuesi 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Text            =   "Combo1"
      Top             =   1080
      Width           =   4335
   End
   Begin SmartCASH.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   1
      Top             =   960
      Width           =   6495
      _extentx        =   11456
      _extenty        =   53
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Filtrimi i Artikujve sipas Furnizuesve"
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
      Left            =   840
      TabIndex        =   2
      Top             =   360
      Width           =   3735
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   240
      Picture         =   "frmFilter.frx":0000
      Top             =   240
      Width           =   480
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   5775
   End
End
Attribute VB_Name = "frmFilter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim blnEdit As Boolean
Dim lngIndex As Long
Public Function FindSub() As Boolean
    Dim strTemp
    strTemp = "'" & strSearch & "'"
    On Error Resume Next
    rsSubCategory.MoveFirst
    On Error GoTo ErrorNotOnFile:
    rsSubCategory.Find "SubCatCode = " & strTemp, 0, adSearchForward
    If rsSubCategory!subcatcode = strSearch Then FindSub = True       'found
    On Error GoTo 0
    err.Clear
    Exit Function
ErrorNotOnFile:
    FindSub = False
    DoEvents
    On Error GoTo 0
    err.Clear
End Function
Public Sub LoadSub()
    ListView1.ListItems.Clear
    Dim itm As ListItem
    rsSubCategory.Filter = "(Catcode ='" & lblCatcode.Caption & "')"
    If Not rsSubCategory.RecordCount < 1 Then rsSubCategory.MoveFirst
    Do Until rsSubCategory.EOF
        If Not IsNull(rsSubCategory!subcatcode) Then Set itm = ListView1.ListItems.Add(, , rsSubCategory!subcatcode)
        If Not IsNull(rsSubCategory!subcat) Then itm.SubItems(1) = rsSubCategory!subcat
        rsSubCategory.MoveNext
        DoEvents
    Loop
    If rsSubCategory.RecordCount > 0 Then
        rsSubCategory.MoveFirst
        txtSub.Text = rsSubCategory!subcat
        lblSubCatcode.Caption = rsSubCategory!subcatcode
        txtSubCatCode.Text = rsSubCategory!subcatcode
    End If
End Sub

Public Sub LoadCategory()
If rsCategory.RecordCount > 0 Then rsCategory.MoveFirst
    Do Until rsCategory.EOF
        If Not IsNull(rsCategory!Category) Then cboCategory.AddItem rsCategory!Category
        rsCategory.MoveNext
        DoEvents
    Loop
    If cboCategory.ListCount > 0 Then
        rsCategory.MoveFirst
        cboCategory.Text = rsCategory!Category
        lblCatcode.Caption = rsCategory!catcode
    End If
End Sub

Private Sub Form_Load()
blnStatus True
LoadCategory
LoadSub
End Sub
