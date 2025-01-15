VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "Comctl32.ocx"
Begin VB.Form frmBankLista 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Banks"
   ClientHeight    =   6990
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9255
   Icon            =   "frmBankLista.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6990
   ScaleWidth      =   9255
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin SmartMarket.ctrlLiner ctrlLiner2 
      Height          =   30
      Left            =   0
      TabIndex        =   8
      Top             =   960
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   53
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   7
      Top             =   6240
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   53
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7200
      TabIndex        =   3
      Top             =   6360
      Width           =   1935
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Delete"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4200
      TabIndex        =   2
      Top             =   6360
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   1
      Top             =   6360
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "New"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   6360
      Width           =   1935
   End
   Begin ComctlLib.ListView lv 
      Height          =   5055
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   8916
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ForeColor       =   10314782
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
         Object.Width           =   2293
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Emri i Bankës"
         Object.Width           =   6526
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Adresa"
         Object.Width           =   5115
      EndProperty
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Double-click item to edit"
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
      TabIndex        =   6
      Top             =   480
      Width           =   4335
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Lista of active bank's"
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
      TabIndex        =   5
      Top             =   120
      Width           =   4335
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   120
      Picture         =   "frmBankLista.frx":0C62
      Top             =   120
      Width           =   720
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   5400
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
            Picture         =   "frmBankLista.frx":27A6
            Key             =   ""
         EndProperty
      EndProperty
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
Attribute VB_Name = "frmBankLista"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmBankaNew.Caption = "Shënim i ri"
frmBankaNew.Show 1
End Sub

Private Sub Command2_Click()
lv_DblClick
End Sub

Private Sub Command3_Click()
If lv.ListItems.Count = 0 Then
Exit Sub
Else
Call dbconek
With ar
criteria = "Select *From tblBankat Where id ='" & lv.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.Delete
MsgBox "Shenimi u fshi me sukses.", vbInformation, "Fshirja!"
.Close
End With
lv.Refresh
End If
lv.ListItems.Remove (lv.SelectedItem.Index)
End Sub

Private Sub Command4_Click()
Unload Me
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(lv)
lv.ListItems.Clear
Call dbconek
With ar
criteria = "Select *From tblBankat"
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
criteria = "Select *From tblBankat Where id='" & lv.SelectedItem.Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount = 1 Then
frmBankaNew.txtid = !id
frmBankaNew.txtemri = !emri
frmBankaNew.txtnumri = !numri
frmBankaNew.txtswift = !swift
frmBankaNew.txtkodi = !kodi_transferit
frmBankaNew.txtadresa = !adresa
frmBankaNew.txtweb = !webfaqja
frmBankaNew.txtkomenti = !komenti
Else
MsgBox "Shenimi nuk eshte gjetur.", vbInformation, "Gabim!"
Exit Sub
End If
.Close
End With
'======================
frmBankaNew.Caption = "Ndryshimi i Shënimit"
frmBankaNew.Show 1
End If
End Sub

