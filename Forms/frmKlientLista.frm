VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmKlientLista 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Client's list"
   ClientHeight    =   7605
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9495
   Icon            =   "frmKlientLista.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7605
   ScaleWidth      =   9495
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDalja 
      Caption         =   "Exit"
      Height          =   495
      Left            =   7320
      TabIndex        =   9
      Top             =   6960
      Width           =   2055
   End
   Begin VB.CommandButton cmdFshij 
      Caption         =   "Delete"
      Height          =   495
      Left            =   4200
      TabIndex        =   8
      Top             =   6960
      Width           =   1935
   End
   Begin VB.CommandButton cmdNdrysho 
      Caption         =   "Edit"
      Height          =   495
      Left            =   2160
      TabIndex        =   7
      Top             =   6960
      Width           =   1935
   End
   Begin VB.CommandButton cmdShto 
      Caption         =   "New"
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   6960
      Width           =   1935
   End
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   120
      TabIndex        =   4
      Top             =   6840
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   53
   End
   Begin ComctlLib.ListView lv 
      Height          =   5175
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   9128
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
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
         Object.Width           =   2999
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emri i klientit"
         Object.Width           =   6703
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Adresa"
         Object.Width           =   4939
      EndProperty
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   0
      TabIndex        =   2
      Top             =   1080
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   53
   End
   Begin VB.Label Label5 
      Caption         =   "Double-click to edit"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   480
      TabIndex        =   5
      Top             =   6510
      Width           =   5415
   End
   Begin VB.Image Image2 
      Height          =   240
      Left            =   120
      Picture         =   "frmKlientLista.frx":0C62
      Top             =   6480
      Width           =   240
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   4800
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
            Picture         =   "frmKlientLista.frx":11EC
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Client's list"
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
      TabIndex        =   1
      Top             =   120
      Width           =   3855
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Add, Remove or Edit clients details"
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
      TabIndex        =   0
      Top             =   720
      Width           =   3855
   End
   Begin VB.Image Image1 
      Height          =   675
      Left            =   240
      Picture         =   "frmKlientLista.frx":153E
      Top             =   120
      Width           =   720
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
End
Attribute VB_Name = "frmKlientLista"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDalja_Click()
Unload Me
End Sub

Private Sub cmdFshij_Click()
If lv.ListItems.Count = 0 Then
Exit Sub
Else
Call dbconek
With ar
criteria = "Select *From tblKlientet Where id ='" & lv.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.Delete
MsgBox "Shenimi u fshi me sukses.", vbInformation, "Fshirja!"
.Close
End With
lv.Refresh
End If
lv.ListItems.Remove (lv.SelectedItem.Index)
End Sub

Private Sub cmdNdrysho_Click()
lv_DblClick
End Sub

Private Sub cmdShto_Click()
frmKlientNew.Show 1
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblklientet"
.Open criteria, strConek, 3, 3
Do While Not .EOF
lv.ListItems.Add , , !id, 1, 1
lv.ListItems(lv.ListItems.Count).SubItems(1) = !emri
lv.ListItems(lv.ListItems.Count).SubItems(2) = !adresa
.MoveNext
Loop
.Close
End With
End Sub

Private Sub lv_DblClick()
If lv.ListItems.Count = 0 Then
Exit Sub
Else
Call dbconek
With ar
criteria = "Select *From tblKlientet Where id='" & lv.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
frmKlientNew.txtid = !id
frmKlientNew.txtemri = !emri
frmKlientNew.txtadresa = !adresa
frmKlientNew.txttelefon = !telefon
frmKlientNew.txtmobil = !mobil
frmKlientNew.txtkomenti = !komenti
Else
MsgBox "Shenimi nuk eshte gjetur.", vbInformation, "Gabim!"
Exit Sub
End If
.Close
End With
'======================
frmKlientNew.lblstatusi.Caption = "ndrysho"
frmKlientNew.Show 1
End If
End Sub
