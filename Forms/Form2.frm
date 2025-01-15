VERSION 5.00
Begin VB.Form frmLista 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Products list"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4215
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3225
   ScaleWidth      =   4215
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   495
      Left            =   2760
      TabIndex        =   6
      Top             =   2640
      Width           =   1335
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   5
      Top             =   2520
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   53
   End
   Begin VB.Frame Frame1 
      Caption         =   "Opcionet"
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   3975
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   855
         Left            =   120
         ScaleHeight     =   855
         ScaleWidth      =   3735
         TabIndex        =   1
         Top             =   240
         Width           =   3735
         Begin VB.OptionButton optbarkod 
            Caption         =   "Order by UPC"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   3
            Top             =   120
            Value           =   -1  'True
            Width           =   3495
         End
         Begin VB.OptionButton optDescrip 
            Caption         =   "Order by Desription"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   2
            Top             =   480
            Width           =   3495
         End
      End
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Products list"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1320
      TabIndex        =   4
      Top             =   360
      Width           =   2295
   End
   Begin VB.Image Image2 
      Height          =   720
      Left            =   240
      Picture         =   "Form2.frx":08CA
      Top             =   120
      Width           =   735
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00AE692B&
      Height          =   975
      Left            =   0
      Top             =   0
      Width           =   9495
   End
End
Attribute VB_Name = "frmLista"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Set db = New Connection
db.CursorLocation = adUseClient
db.Open "PROVIDER=MSDataShape;Data PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Data\dbase.db;" & ";Persist Security Info=False;Jet OLEDB:Database Password=cc03bn01"
Set adoAgentet = New Recordset
If optbarkod.Value = True Then
adoAgentet.Open "select * from tblArtikujt order by barkodi ASC;", db, adOpenStatic, adLockOptimistic
Else
adoAgentet.Open "select * from tblArtikujt order by pershkrimi ASC;", db, adOpenStatic, adLockOptimistic
End If
Set rptArtLista.DataSource = adoAgentet
rptArtLista.Show 1
Unload Me
End Sub
