VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmDepozitimi 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Bank deposit"
   ClientHeight    =   8295
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10260
   Icon            =   "frmDepozitimi.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8295
   ScaleWidth      =   10260
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   495
      Left            =   8040
      TabIndex        =   13
      Top             =   7680
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "New deposit"
      Height          =   495
      Left            =   120
      TabIndex        =   12
      Top             =   7680
      Width           =   2055
   End
   Begin SmartMarket.ctrlLiner ctrlLiner3 
      Height          =   30
      Left            =   120
      TabIndex        =   11
      Top             =   7560
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   53
   End
   Begin VB.Frame Frame1 
      Caption         =   "Previously deposits"
      Height          =   5175
      Left            =   120
      TabIndex        =   9
      Top             =   2160
      Width           =   9975
      Begin ComctlLib.ListView lv 
         Height          =   4575
         Left            =   240
         TabIndex        =   10
         Top             =   360
         Width           =   9495
         _ExtentX        =   16748
         _ExtentY        =   8070
         View            =   3
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         _Version        =   327682
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         Appearance      =   1
         NumItems        =   4
         BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.Tag             =   ""
            Text            =   "ID"
            Object.Width           =   2117
         EndProperty
         BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
            SubItemIndex    =   1
            Key             =   ""
            Object.Tag             =   ""
            Text            =   "Description"
            Object.Width           =   7056
         EndProperty
         BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
            SubItemIndex    =   2
            Key             =   ""
            Object.Tag             =   ""
            Text            =   "Date"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
            SubItemIndex    =   3
            Key             =   ""
            Object.Tag             =   ""
            Text            =   "SUM"
            Object.Width           =   2558
         EndProperty
      End
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   7
      Top             =   1560
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   53
   End
   Begin VB.ComboBox txtfurnizuesi 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   960
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1680
      Width           =   3255
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   0
      Top             =   960
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   53
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000009&
      BackStyle       =   0  'Transparent
      Caption         =   "€"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   2760
      TabIndex        =   8
      Top             =   1200
      Width           =   375
   End
   Begin VB.Label Label3 
      Caption         =   "Bank:"
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
      Left            =   120
      TabIndex        =   6
      Top             =   1700
      Width           =   975
   End
   Begin VB.Label lblgjendja 
      Alignment       =   1  'Right Justify
      BackColor       =   &H80000009&
      BackStyle       =   0  'Transparent
      Caption         =   "00.00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   1800
      TabIndex        =   4
      Top             =   1200
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Bilance:"
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
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Bank deposit's details"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   1080
      TabIndex        =   2
      Top             =   480
      Width           =   4335
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "Bank deposit list"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   120
      Width           =   4335
   End
   Begin VB.Image Image2 
      Height          =   720
      Left            =   120
      Picture         =   "frmDepozitimi.frx":0C62
      Top             =   120
      Width           =   720
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   11775
   End
End
Attribute VB_Name = "frmDepozitimi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmDepozitimNew.Show 1
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
'Vendosja e Bankave ne Combo Box
Call dbconek
ar.Open "Select *From tblBankat", strConek, adOpenStatic, adLockOptimistic
If ar.RecordCount = 0 Then
Exit Sub
Else
ar.MoveFirst
Do While Not ar.EOF
txtfurnizuesi.AddItem ar!emri
ar.MoveNext
Loop
ar.Close
End If
End Sub

Private Sub txtfurnizuesi_Click()
'Paraqitja e shumes aktuale****************************************************
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblBankat Where emri like'" & txtfurnizuesi & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
lblgjendja.Caption = !gjendja
.MoveNext
Loop
.Close
End With
'Paraqitja e Depozitimeve***************************
lv.ListItems.Clear
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tbldepozitimet Where banka like'" & txtfurnizuesi & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
lv.ListItems.Add , , !id
lv.ListItems(lv.ListItems.Count).SubItems(1) = !pershkrimi
lv.ListItems(lv.ListItems.Count).SubItems(2) = !Data
lv.ListItems(lv.ListItems.Count).SubItems(3) = Format(!total, "###,###,##0.00")
.MoveNext
Loop
.Close
End With
End Sub
