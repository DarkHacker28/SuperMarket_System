VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form ItemSearch 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Product search"
   ClientHeight    =   4095
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6720
   Icon            =   "ItemSearch.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4095
   ScaleWidth      =   6720
   StartUpPosition =   2  'CenterScreen
   Begin ComctlLib.ListView lv 
      Height          =   1815
      Left            =   120
      TabIndex        =   8
      Top             =   1560
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   3201
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
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
         Text            =   "Description"
         Object.Width           =   8819
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "UPC"
         Object.Width           =   2540
      EndProperty
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   7
      Top             =   720
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   6
      Top             =   3480
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
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CommandButton cmdexit 
      BackColor       =   &H00ECF4F4&
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5400
      TabIndex        =   3
      Top             =   3600
      Width           =   1215
   End
   Begin MSComctlLib.ListView lv1 
      Height          =   1695
      Left            =   1320
      TabIndex        =   2
      Top             =   5400
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
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Pershkrimi"
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
      Height          =   320
      Index           =   0
      Left            =   2160
      MaxLength       =   25
      TabIndex        =   0
      Top             =   1080
      Width           =   4455
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   4080
      Top             =   120
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
            Picture         =   "ItemSearch.frx":08CA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   120
      Picture         =   "ItemSearch.frx":0C1C
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Product search"
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
      ForeColor       =   &H00404040&
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   2055
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
Attribute VB_Name = "ItemSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub cmdOK_Click()
If itemflag = 1 Then
frmMMSitem.txt(0) = lv.ListItems(lv.SelectedItem.Index).SubItems(1)
Unload Me
ElseIf itemflag = 2 Then
frmMMSPurchaseOrder.cboArt = lv.ListItems(lv.SelectedItem.Index).SubItems(1)
Unload Me
ElseIf itemflag = 3 Then
frmrikthimi.txt(0) = lv.ListItems(lv.SelectedItem.Index).SubItems(1)
Unload Me
End If
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
Image1.Width = Me.Width
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
If KeyAscii = 13 Then
Call artdb
With ar
criteria = "Select * From tblArtikujt Where pershkrimi like'" & txt(0) & "%'"
.Open criteria, strConek, 3, 3
If .RecordCount >= 1 Then
lv.ListItems.Clear
Do While Not .EOF
lv.ListItems.Add , , !pershkrimi, , 1
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
.MoveNext
Loop
lv.SetFocus
Else
MsgBox "Artikulli nuk ekziston.", vbInformation, "Gabim!"
txt(0).SetFocus
Exit Sub
End If
.Close
End With
End If
End Sub
