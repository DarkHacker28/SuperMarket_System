VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmFaturat 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Delivery invoices"
   ClientHeight    =   8880
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   12120
   Icon            =   "frmFaturat.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8880
   ScaleWidth      =   12120
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "PAY"
      Height          =   495
      Left            =   120
      TabIndex        =   15
      Top             =   8280
      Width           =   2535
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
      Left            =   1200
      Locked          =   -1  'True
      TabIndex        =   9
      Top             =   7440
      Width           =   1575
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
      Left            =   4440
      TabIndex        =   8
      Top             =   7440
      Width           =   1695
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
      Left            =   7800
      TabIndex        =   7
      Top             =   7440
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      Height          =   495
      Left            =   10080
      TabIndex        =   6
      Top             =   8280
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   0
      Top             =   1065
      Width           =   3015
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   1
      Top             =   960
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lv 
      Height          =   5655
      Left            =   120
      TabIndex        =   2
      Top             =   1680
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   9975
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
      NumItems        =   6
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Pershkrimi"
         Object.Width           =   7761
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qmimi"
         Object.Width           =   1411
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   1058
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Total"
         Object.Width           =   1058
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Data"
         Object.Width           =   2117
      EndProperty
      BeginProperty ColumnHeader(6) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   5
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Furnizuesi"
         Object.Width           =   4410
      EndProperty
   End
   Begin SmartMarket.ctrlLiner ctrlLiner3 
      Height          =   30
      Left            =   120
      TabIndex        =   14
      Top             =   8160
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   53
   End
   Begin VB.Label lblfat 
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4680
      TabIndex        =   13
      Top             =   1080
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.Label Label6 
      Caption         =   "TOTAL:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   7515
      Width           =   1095
   End
   Begin VB.Label Label7 
      Caption         =   "PAYED:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   11
      Top             =   7515
      Width           =   1335
   End
   Begin VB.Label Label8 
      Caption         =   "LOAN:"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6480
      TabIndex        =   10
      Top             =   7515
      Width           =   1335
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   5640
      Top             =   240
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
            Picture         =   "frmFaturat.frx":0ECA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Delivery invoices details"
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
      Left            =   1200
      TabIndex        =   5
      Top             =   600
      Width           =   3855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Delivery invoices"
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
      TabIndex        =   4
      Top             =   120
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   690
      Left            =   120
      Picture         =   "frmFaturat.frx":121C
      Top             =   120
      Width           =   675
   End
   Begin VB.Label Label3 
      Caption         =   "Inv. Nr:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   1155
      Width           =   1455
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   12375
   End
End
Attribute VB_Name = "frmFaturat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
Call dbconek
With ar
criteria = "Select *From tblFatura Where fat_nr ='" & lblfat & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!total = txttotal
!paguar = txtpaguar
!borxh = txtborxh
.Update
MsgBox "Pagesa u krye me sukses.", vbInformation, "Pagesa!"
.Close
End With
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
lv.ListItems.Clear
txttotal.Text = ""
txtpaguar.Text = ""
txtborxh.Text = ""
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblFurnizimi Where nr like'" & Text1 & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
lv.ListItems.Add , , !pershkrimi, 1, 1
lv.ListItems(lv.ListItems.Count).SubItems(1) = Format(!qmimi, "###,###,##0.00")
lv.ListItems(lv.ListItems.Count).SubItems(2) = !sasia
lv.ListItems(lv.ListItems.Count).SubItems(3) = Format(!total, "###,###,##0.00")
lv.ListItems(lv.ListItems.Count).SubItems(4) = !Data
lv.ListItems(lv.ListItems.Count).SubItems(5) = !furnizuesi
.MoveNext
Loop
.Close
End With
'=============Paraqitja e Infos
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblFatura Where fat_nr like'" & Text1 & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
txttotal.Text = !total
txtpaguar.Text = !paguar
txtborxh.Text = !borxh
lblfat.Caption = Text1.Text
.MoveNext
Loop
.Close
End With
Text1.Text = ""
End If
End Sub

Private Sub txtpaguar_Change()
txtborxh.Text = Val(txttotal) - Val(txtpaguar)
End Sub
