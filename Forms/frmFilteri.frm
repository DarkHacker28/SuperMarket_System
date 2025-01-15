VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmFilteri 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Filtrimi i Artikujve sipas Furnizuesit"
   ClientHeight    =   8730
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9240
   Icon            =   "frmFilteri.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8730
   ScaleWidth      =   9240
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Dalja"
      Height          =   495
      Left            =   7440
      TabIndex        =   6
      Top             =   8160
      Width           =   1695
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   5
      Top             =   8040
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lst 
      Height          =   7215
      Left            =   120
      TabIndex        =   3
      Top             =   720
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   12726
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
      NumItems        =   5
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
         Text            =   "Pershkrimi"
         Object.Width           =   6174
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   1411
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "TVSH"
         Object.Width           =   1411
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qmimi"
         Object.Width           =   1411
      EndProperty
   End
   Begin VB.ComboBox Combo1 
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
      Left            =   1200
      TabIndex        =   1
      Top             =   150
      Width           =   4215
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00808080&
      Height          =   735
      Left            =   -120
      ScaleHeight     =   675
      ScaleWidth      =   11850
      TabIndex        =   0
      Top             =   -120
      Width           =   11910
      Begin VB.Label lblid 
         Caption         =   "Label2"
         Height          =   255
         Left            =   5880
         TabIndex        =   4
         Top             =   240
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label1 
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
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Label sumsasia 
      Caption         =   "Label3"
      Height          =   495
      Left            =   3000
      TabIndex        =   8
      Top             =   5760
      Width           =   1335
   End
   Begin VB.Label sumqmimi 
      Caption         =   "Label3"
      Height          =   495
      Left            =   840
      TabIndex        =   7
      Top             =   5760
      Width           =   1335
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   0
      Top             =   0
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
            Picture         =   "frmFilteri.frx":058A
            Key             =   ""
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "frmFilteri"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
lst.ListItems.Clear
On Error Resume Next
Call dbconek
ar.Open "Select *From tblFurnizuesit Where furnizuesi='" & Combo1 & "'", strConek, adOpenStatic, adLockOptimistic
lblid = ar!fur_id
ar.Close
'==============
Call artdb
If Combo1.Text = "[ Të gjithë furnizuesit ]" Then
With ar
criteria = "Select *From tblartikujt'"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lst.ListItems.Add , , !barkodi, , 1
lst.ListItems(lst.ListItems.Count).SubItems(1) = !pershkrimi
lst.ListItems(lst.ListItems.Count).SubItems(2) = !sasia
lst.ListItems(lst.ListItems.Count).SubItems(3) = !tvsh
lst.ListItems(lst.ListItems.Count).SubItems(4) = !qmimi_shitjes
.MoveNext
Loop
.Close
End With
Else
With ar
criteria = "Select *From tblartikujt Where furnizuesi='" & lblid.Caption & "'"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lst.ListItems.Add , , !barkodi, , 1
lst.ListItems(lst.ListItems.Count).SubItems(1) = !pershkrimi
lst.ListItems(lst.ListItems.Count).SubItems(2) = !sasia
lst.ListItems(lst.ListItems.Count).SubItems(3) = !tvsh
lst.ListItems(lst.ListItems.Count).SubItems(4) = !qmimi_shitjes
.MoveNext
Loop
.Close
End With
End If
End Sub

Private Sub Command1_Click()
Unload Me
End Sub


Private Sub Form_Load()
Call ListView_FullRowSelect(lst)
'===========================
Call dbconek
ar.Open "Select *From tblfurnizuesit", strConek, adOpenStatic, adLockOptimistic
ar.MoveFirst
Combo1.AddItem ("[ Të gjithë furnizuesit ]")
Do While Not ar.EOF
Combo1.AddItem ar!furnizuesi
ar.MoveNext
Loop
ar.Close
'===========================
Combo1.SelText = "[ Të gjithë furnizuesit ]"
Combo1_Click
End Sub
