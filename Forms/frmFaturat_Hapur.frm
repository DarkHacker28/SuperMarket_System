VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmFaturat_Hapur 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Lista e Fakturave te hapura"
   ClientHeight    =   6390
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6360
   Icon            =   "frmFaturat_Hapur.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6390
   ScaleWidth      =   6360
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Dalja"
      Height          =   495
      Left            =   4200
      TabIndex        =   7
      Top             =   5760
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Hap fakturën"
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   5760
      Width           =   2055
   End
   Begin SmartManagement.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   5
      Top             =   5640
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lv 
      Height          =   4335
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   7646
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      NumItems        =   3
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Faktura NR"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Data"
         Object.Width           =   2646
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Klienti"
         Object.Width           =   3528
      EndProperty
   End
   Begin SmartManagement.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   2
      Top             =   960
      Width           =   8775
      _ExtentX        =   15478
      _ExtentY        =   53
   End
   Begin VB.Label lblinfo 
      Caption         =   "HAPUR"
      Height          =   255
      Left            =   4680
      TabIndex        =   4
      Top             =   6840
      Width           =   1815
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmFaturat_Hapur.frx":06EA
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Lista e Fakturave te Hapura"
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
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Fakturat e leshuara por qe nuk jane mbyllur akoma"
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
      TabIndex        =   0
      Top             =   480
      Width           =   4335
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   9615
   End
End
Attribute VB_Name = "frmFaturat_Hapur"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
frmShitja.lvshitja.ListItems.Clear
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblTemp_Shitja Where shitja_nr like'" & lv.SelectedItem.Text & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
If lv.ListItems.Count = 0 Then
MsgBox "Nuk ka faktura të hapura!", vbInformation, "Smart Management"
Exit Sub
Else
frmShitja.lvshitja.ListItems.Add , , !barkodi
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(1) = !pershkrimi
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(2) = !sasia
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(3) = Format(!qmimi, "###,###,##0.00")
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(4) = Format(!total, "###,###,##0.00")
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(5) = !tvsh
frmShitja.lvshitja.ListItems(frmShitja.lvshitja.ListItems.Count).SubItems(6) = Format(!totaltvsh, "###,###,##0.00")
frmShitja.lbltotal.Caption = Val(frmShitja.lbltotal) + Val(!total)
End If
.MoveNext
Loop
.Close
End With
'================================
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblFakturat_Shitjes Where fat_nr like'" & lv.SelectedItem.Text & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
frmShitja.txtklienti.Text = !klienti
frmShitja.txtfat.Text = !fat_nr
.MoveNext
Loop
.Close
End With
frmShitja.ophapur.Value = 1
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
lv.ListItems.Clear
Call dbconek
ac.Open strConek
With ar
criteria = "Select * From tblFakturat_Shitjes Where statusi like'" & lblinfo & "%'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
Do While Not .EOF
lv.ListItems.Add , , !fat_nr
lv.ListItems(lv.ListItems.Count).SubItems(1) = !Data
lv.ListItems(lv.ListItems.Count).SubItems(2) = !klienti
.MoveNext
Loop
.Close
End With
End Sub
Private Sub lv_DblClick()
Command1_Click
End Sub
